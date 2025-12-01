Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FC330E0D8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764595374; cv=none; b=SxsBKCsYTIxL5mFBtonhTXabVsHpGQ16RAK8LTYiCckRcejkIahT1P8gIsAzl+NJBPYgYt0AvRgtwLh1ArXzSJTftXE/bQi6jQ/6u/TQFSMbM0tLxXpDZOFTrJEEddbyANSJ/86YgCcIX4yn5URM8tmmvey/SiUSSz0UXFKOvQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764595374; c=relaxed/simple;
	bh=MqZz0gH0j05OLL0UFP7nwyXkp7uCk2XW85YTcfV3Eac=;
	h=To:Subject:From:Message-Id:Date; b=q53NQTF+SpihE0rkQQRdh7FftfToVOqzks3OjIuqLld1v14iVoUgxOdGlqBF1yR437ZigUmVJPLSVGNd2RGtpR3yTRRt+1LKV2hHThTk+kSEcPk14a0yVm32dUnxPnLXDlPhttGPJcouX8Mi+ObnkPwQWQ4csCtwfZqNO9bD3wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6iyZMst; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6iyZMst"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35D2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764595373;
	bh=MqZz0gH0j05OLL0UFP7nwyXkp7uCk2XW85YTcfV3Eac=;
	h=To:Subject:From:Date:From;
	b=t6iyZMst33NkwwAUIpxJcx/UXrlpkaPJVzo+DxMBvgS5EuLAgBmwHHRJjlIGPYk3R
	 aydUcYI5d6Z0TCjqv2BS9xwavRtcnWUmPao8Bj+YKQt2HOtIRE+Zv31JRshnOO2DdF
	 enJGbkaQ+Sf8aZVude7WvVAemwE2EZ3X4mCkYlnmy6GjDScjPXXTKheueUHRbNzzgi
	 I+PXCPmCe4e+BJKKSuoOSPKIt5KoDxlzc2tlCvO0RrOcVCrhw3kHPonFDl9CNXjF0W
	 dECFGoNOLo6pz+hsT0rp3HSYwITUNp+GXdYxiBA7Sc7J73g12s1xUyk6QHAQAJMa6Q
	 AZlce7YIK4TGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B60D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176459537359.31213.14670903041431547880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c2aef4372ad5375a03a1ec21ab6c9c9febbe94c1fc5c5df06e1ebc1084f8a2b
Date: Mon, 01 Dec 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764595373
