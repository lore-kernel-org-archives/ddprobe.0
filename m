Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216B324B2F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723278954; cv=none; b=FtV0PKSw3CF/PbQO000r/Kx+Yok+zGIQWJ8hI9BjTbjkGsTUEB0k66wfhX2VXq6/vt1fqCCTAxk4ZTUAP4B18J1kAqK3Xy/a8QYp2S+kk91+Ue6+qTcJDh7oqMJSbd7hwtwNJKYG3/qeKWO5a/VCDpW5rVk8GUF1yg+Qv6VRojI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723278954; c=relaxed/simple;
	bh=MbhQLv+AGS2werNoKqzqQiCVCB34d1kFsokixbSlAhc=;
	h=To:Subject:From:Message-Id:Date; b=qpSaQjy0qf1P9o/LGSETzkoRG6aW1JDUyul0PquUgMZXg9ueYgqU5U7SodUjIGrT1ssFkLTlCuYoIUngjTBZyALYOiP5I125lS7cmMj87FXjpx3sD0RHbKwxNrDhUvaa0E5xqPTQqf6WeZH+DUITamMR7NCTGhsl+Z2D1GO/PDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utNxOaRY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utNxOaRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF79C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723278953;
	bh=MbhQLv+AGS2werNoKqzqQiCVCB34d1kFsokixbSlAhc=;
	h=To:Subject:From:Date:From;
	b=utNxOaRY30Apu+ZjpfDm5BMVc4YNYyfVkTldwu1Rt025oG6U+6Hl8CEdUDYhKPalW
	 ubn1SRs7WUpwHazgCMSfmq4MAl6IQcNQZp2MlT3zCf71B+Zk5+FTdrTh1TShG1F2NN
	 9m/GkFRBYeBGyoGBmpbFJ9z2y7GtuWmg2Nq0eJPajw1Drlvf+dZmZ7Luft+Ac83L9m
	 rnTbmz+ak+bWWrY5qLgimi3VYWqIQuBhLDgOXzsLDD9zH+kTWfDO5TSFmAmOXHsFXH
	 kdZV0zmwAyL3mQnKaDr5czXFgWc9WXNRVw4FSzTJ5tDlGmA+Aen88ypbPRIX/Pbnig
	 N28FEqJFD7jCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E50C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172327895358.19542.9261805849399036809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 434287af81d1987267c02ef81d15b2f81d14d77e45a77d4e876dbd78ec92b9ae
Date: Sat, 10 Aug 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723278953
