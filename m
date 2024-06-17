Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C6915572B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 14:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718634503; cv=none; b=XB7gdYO0cCxp/fDjZbPm6CzG/tWHP5BrdaFAFjRNB8ni4NX/M3DOVBlnCDl0mImQBnz+jQ8SNsMkUL37zOPjgPvHRF+ArG4eMHQAHdI6y9KdXHKFmctqkGoS9XQ59cxVJtX/ezeGVN4hj3OWa9YJDv1HGSK/EeFZPsSJfgVCHmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718634503; c=relaxed/simple;
	bh=si71eBFLK22L15mfUb+xLN1gO/wT6cxbpr/22QPS0D4=;
	h=To:Subject:From:Message-Id:Date; b=cyzhxf+jQ+y85yFDnSsBu04dTGImiYequPF9sE11nnNkW2u14ypCxA1yQK0p/e166qA8pdMQSV9T5wMvUa21BwowC0s70/TRCNoS+oPzQRfYe4EAQ/lsyYTe8BZvKW7Abu1lYCBWuMTj0fqUHWeFjGLzdXEv/jnb4/q72A1THF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAnByXZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAnByXZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1D7C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 14:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718634502;
	bh=si71eBFLK22L15mfUb+xLN1gO/wT6cxbpr/22QPS0D4=;
	h=To:Subject:From:Date:From;
	b=EAnByXZJ3k7ziCZ+8j7fJQsPTEkzUvLYT8dty0mU7YtWX0wb/2YWbkzXMFqOE/Cvt
	 qCp/DifaFKdG8F3sl2JWqTtmg/sPgpCLZmuvB++PxRhpP3hgVJXGg0oBprvCF4h4HH
	 9HoQqw1PhzjGlZV2OewIO8ec0cPaGOzH5G/LsJB1Rox48SuPVsvIBjEDQ7iIV1Knxp
	 uOD+jcZqUXuYDafu4+7MY7/nSjelpwBRmma+YIrMrWhSuw2TV699Sow9Ue3UOhCcgD
	 mNphbnAUcf9I49xzzWH4yUCKAEq9y/V89lYtoDA6A1QiUuq7Voz6i7qovOT54BV6Ry
	 dxIfyv3XS4H7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B60C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 14:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171863450278.26146.17115198009513820702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf5d332973a404c385be72af01166d4dfbb46ea90702c32ce31cc2fdf032befc
Date: Mon, 17 Jun 2024 14:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718634502
