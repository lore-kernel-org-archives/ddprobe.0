Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC681DA26
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729104354; cv=none; b=AtGLZ6xHYhLXF5bee5yhdCOYGdnMZrHzNUnVDejp1tzcFFXNbirs+F7adnPkhz3ti1q04UPW97c3M1Mj2D1p3K/RMGLH2gLHSt05XEC0XPv9CMqU9NZDXOBaqWDkIU95O0c2942vIlnin6DE+bJrouj+p856+B5aXOln7Up6A2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729104354; c=relaxed/simple;
	bh=oGDOsUxeDoZCBNjLPocapLynXSExKYXexflE1q7vps4=;
	h=To:Subject:From:Message-Id:Date; b=P4qP5QxWz9gFqkTk0XTdDJCdBHO/bb36SwbLMAFDcJffFah7maHdczySJpvBvTaGEG1xOqHuTzLXJEfqPyKtiipjwgJyhfi3eUFNsbZ/qjJ03h7MAyXJwxlg9QYf0iPJ7JihhSWLSIrf3N5NmlsxZtaKRbXqlzs8xOgMJ/rcA2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqqf5JNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqqf5JNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7351C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729104353;
	bh=oGDOsUxeDoZCBNjLPocapLynXSExKYXexflE1q7vps4=;
	h=To:Subject:From:Date:From;
	b=tqqf5JNL906lpyetCBfCyVoBI+a1SRev+hSt2eu+6gO1cEIXUwChnR2ployi5jZRc
	 PzrFQLzwHwyoSvoEG/ZM+FXtax/77MpAxGtwAkRquHsvVYjHekqS5Dv9touUfbxk3H
	 yDjLZhaa19IR0GBlZ3k+dvUFTlUdaA8fjI22dedpE0PgiRBe0GrvS3t8MXaZU8FPLb
	 W/Wws1hPJpmLo08YGfRsn4MLA3KCW6n4OpxR2oaP50fc6uRZd+Ve+85aKpBIDyyCxn
	 fjbUorVoPUDX0AzIQi11o/kDYyP+/eNMseoA5EIlaZi0dYkAhJv1s3zDpexODewc8Y
	 ZWEPljvnY1pog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C36D2A53E
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172910435358.18881.1054504906255160696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41bd1bbebdb53777ba3caf907e5dc32aa0852c82106a0b81e0d6005a264151c
Date: Wed, 16 Oct 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729104353
