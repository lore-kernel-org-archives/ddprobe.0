Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16623346FA0
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772819694; cv=none; b=P/qN+jkdkXa0wYO3MVBumS7BwYkz5ndQQOD2yOpVLYDJ3DfVoK+zg+KY+O34eKd3+Fmi3hP76WezvGyn5+nKyaXDUPowtz2o7Udl0vpanjX7+SjV9oqaitIdDyu7i4tsRgN/SeT5Rr9h8bkg+N83xEEucntf5eKw1DcjRLwMuzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772819694; c=relaxed/simple;
	bh=gQQ+vnVVh/SkK9HhVj/2rSsLpYJp8Ht8Un1VfDTI/bc=;
	h=To:Subject:From:Message-Id:Date; b=GWSFGGNVH4APFz/KWxus/AaKNhywyuxIxJpDC3w37YAUMNZJtcQYwe21juFacx63B8H4dpW6K10Q2Havm7nxnHc2mnqERAFEXyOBYlFMtkXa/xYLwjgP5j0sgLF5Es3bECd/xoGEIpDfzMTh6wC9fWEKT76r9VnEPUPCO/ytZU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkzG7JEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkzG7JEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB97C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772819693;
	bh=gQQ+vnVVh/SkK9HhVj/2rSsLpYJp8Ht8Un1VfDTI/bc=;
	h=To:Subject:From:Date:From;
	b=ZkzG7JElz3lrmVNcWOB8BY5RSvSqKGlaMmjHhEUgF0mDlPkf8YS2Ts+TfSaxIn1gu
	 BCyTc32FvYgWom4MnAbUSg/cco105ehXmhNKZvF5+RkN/APC52cC8q84Xd5mJt02W8
	 9+pUlkhbcAHwRAfcmRCZ0Aw2f4Cliv3/qvHXIVi1JBdcbPaNQhK/4ETUaTfOs9bgti
	 cNkUAVhBI6pIcPHLl5ONPBETooyp/Q2ChusDb06FpXPSfKWm9ztXk7GADAZaNFuNF/
	 qYtbCG1lO3xCm86axWoiyon4oTM6AeSSMSHSrZ+4lQpjVJwWF1YaJ1DFTXFuiftEwX
	 Gtgpf6rv0DBig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACC0FCC050
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177281969362.11200.12117076894852475476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d300a9a8d25641d5d72f8a2e424c5ff33bbd53838ddadc8419329d32fa1b6214
Date: Fri, 06 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772819693
