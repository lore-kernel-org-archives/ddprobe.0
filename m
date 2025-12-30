Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295542459D1
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767116634; cv=none; b=k7iyDN3DoCYqRteQJ+CLwZ6KUQErrKvd9t6v0rj91tUGJlNVKIzl6s01M1Qoj+mrkK0VSSADLfEAXKnCqryaEDNJXoRI8fNocGlWUcl9Ua4aI2vJTKwykaqgYQbPNqEkz0zsjnbwNnS7X+xrNIpD3QAUUY9ej5pX/1XNtI5AoZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767116634; c=relaxed/simple;
	bh=HoxsSbYGkQaqindgyj/LYthdMq1AeCSG5aEoJDOx+tg=;
	h=To:Subject:From:Message-Id:Date; b=i/4n469ZqI19xSTSXe5j5d4OORcOyYJxGHd3J+VaWiaA9G82D2VBj8ZIdj88bcdQoxwRWZ+8cQ6KrvR3bgxRbxSMifUuf+gTIutNGsxCukdbhVj987FsaGcPTx8fIXu0m8wc4sBkxHjT+edVIxlc/zDQ8vbF8aHSChzyY/OhxNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3rMLvo4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3rMLvo4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40C8C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767116633;
	bh=HoxsSbYGkQaqindgyj/LYthdMq1AeCSG5aEoJDOx+tg=;
	h=To:Subject:From:Date:From;
	b=V3rMLvo43puoL3k8xvu+Eu+cD2pVIePYUZ2IHN86VN0F8APVUwltu2syBdJBaV+Et
	 HRPr/86XD5oPNLi1BVAkuMPWzxCh00+k0x7odDv9ZkbFtWC9a0E4zvoIDCvbwDzzIE
	 b0mAruwJ9ZSl+unbjcbrZwAsH3383KKSszjbHLnEbCKkCMayGWBo2kkRCnIfap5Rbe
	 fd1m2KPrsRBHduOyQHtJOiIImEVo/SxV8WMEEDClLo9a2kYM9BxFdk+bG4DZx003+v
	 D/FLVFmoupDQzeKE3WyUudykrza1Ffk2jdhV8wE19nOgx/QQGW4l3N8O1q/mxaDQj3
	 3/Z+fvT4E7FhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ABEEE4990
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176711663357.19373.7415669153267017405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a21b8f747ec717e4e512394e45334b328e7811b08f48bc887c949a97a04fac
Date: Tue, 30 Dec 2025 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767116633
