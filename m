Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E02357A52
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769655234; cv=none; b=Hdb42pO6DY1vQrH0D+cbN0uL1TnAc0vsicQY9lMlv19qsrps8zeut4HmxnBDm7D7R59HDi6IOrUfPKjalEIiKgvJD6aBJ1Z5O77/Vgafz90EmI1gN+HWKh/g+mVYR/w/5ZImrDO+LwgMCCSnyPbPCuqpE81qJ5XMXECgt8Yho9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769655234; c=relaxed/simple;
	bh=ETG4vQAtR2S+OPPvDBr8CQRRJMVZCGFbwa4xk8G4yuk=;
	h=To:Subject:From:Message-Id:Date; b=jrNfcwtq8ZTMqcb+vmXOGXhc8Qt/iKuKchB/kNkRvxvljDMZ4kwV/Qi4Ki84k80MC+DAPdhn6B28aAXObvIVFPG7g/OlOWPQOhLMB+SuPrqyGC9nTA3xWuFyqkJA/wYmOG625b6myWO41ZWW+zNUW73TXWm91YWPNz+SsOy/K74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TImx8pQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TImx8pQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0882C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769655233;
	bh=ETG4vQAtR2S+OPPvDBr8CQRRJMVZCGFbwa4xk8G4yuk=;
	h=To:Subject:From:Date:From;
	b=TImx8pQe93uB55+pDneUVQEmIwn00TMLFdifiT7ncCpeqFVvTPcQMBYfpNCGxBwWu
	 WR6ZYREvX+0/sd5B/8+tz+JQyn0lOQDefwZtGO/QqiKi2yop27aFAmux62awaL8XGH
	 rb/fkBBQeFRq+E1Te6Rr20H8mOjTvtVEyHPaIsQ0Ad11xj702odEE3Q82lQNxhYKJT
	 XcvctXOfvqgzE7cC4BB4CMO69LT4B8FCu9q1hTDl+/6fYPUD7IgXdcNFIw3od+hSSe
	 Ec0RiN1QOUd0QLStVhxSJMokjH9idFLgjDIAMFA2pxlv4nbA+9qnr+FmPqP8gFaFRA
	 uVvcM1hyWJEDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF0D46C16
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176965523357.11434.12268181867372819403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d23a30dc44c414280b4d193921619e30cfea6b73fbab3f8ed6e0045d1ad6c6
Date: Thu, 29 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769655233
