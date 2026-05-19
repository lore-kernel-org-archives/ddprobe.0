Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181273FAE1D
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 09:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779183034; cv=none; b=KEQkcIGA3tzX8K+QIXhV5qfHf+11UJqObjcfktAYet3COMX1o0a7IG1N6Xk98bqlBJFrA+83hHJQ/bK3kmecT+8CYKxavQr8Ltw2izJvIp6aGjwQj2YATcOkNb7rTelFH5iGS3sJ19zwnC2iHqp6hqEmOi9ZUtPLjnOwVBMpK6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779183034; c=relaxed/simple;
	bh=I+J2ggrJWk03vdmAXio4cI37rcMi8RkhR3xchFINTkY=;
	h=To:Subject:From:Message-Id:Date; b=Gu4r+l9wDJx5xJYk7S1McmCHOb0tw36fKpL9Zy1lnQzs3/GDpi/KFOw/2FkSP0I/EOq1+uuQ/YgWL55MUkmyM6EoKBE3OmWge4NQdIND62cqHsxzYvrnWrcOkMCY66o1NHVI/xxNhZ78nMbJD4EfbUeCrEJPgIFQxfGMDtE7XKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAGgvPMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAGgvPMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B994EC2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779183033;
	bh=I+J2ggrJWk03vdmAXio4cI37rcMi8RkhR3xchFINTkY=;
	h=To:Subject:From:Date:From;
	b=fAGgvPMvDVARlEHlWkQWm4d34f9GsyL93IALpdhkS3w52+1lPZtWJI7Yp20avdNXa
	 DZQqzLKhXTF+2E165SVFINCqCS7EChHpk3q0ZZtPLWGHpS4mQXeTrxBd12vEyUOIV4
	 Yo9jBOYTola2MOJE52Q6gJFBLD2+P1Drp2wYjMhgrISBs64BHi0tAd+zXJvVUqHnfi
	 McO+nLVg8/39toBMfH8wE6bzhWNd7F+aokuI705hLKu/C1W1D20sI54BF1iWrdDvAm
	 7D9f4PQygvut/k9jtnkwjqzxHGrjbcwWmORneCHoSljWh54IfRejdvDYlAayzntrVC
	 9yw9vuAyG8l4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9A8CD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177918303369.6905.15909405583814845267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a140e85740770057e343532494e5cae9e756c8741fc542448a98c35b795c677b
Date: Tue, 19 May 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779183033
