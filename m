Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D108538A720
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 12:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778158054; cv=none; b=T1hTq5YikpCkIy6cj2sasCBJDs+3f1RuHeIGWYEQvxjc8JEjF6bp/+0OXBlFQJxK7w5TAWpg+j8ENSG1o8W2Ma4GLscbt5QY3kAtPjyjJG/TWLX6dlazjBl0bqpaJrIf8zDujOSGIiy/VQ/EyHsVHQS40GUZYk8B6TKlUIQ4pdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778158054; c=relaxed/simple;
	bh=oPYIRkX14CUH/yiNgmn1/4W2aIHmsL77OPN2kOicbpo=;
	h=To:Subject:From:Message-Id:Date; b=PAJQz1+pMQtlp19xMlEwJNZcRa1Jd1ahERCkIKjng5wwDON3+Mb1TSMXRcEjkzbY6iSgF85TVdXFKvZ47h3xeGPf3fdPQdcLWSwDOLMONEvki1UM3r8b7qLK4WxhIQNBXDvmLyOONn43Utq9OZatdpPpDseBhVsNh0iMI4ZGPts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siWHnV/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siWHnV/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD269C2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778158053;
	bh=oPYIRkX14CUH/yiNgmn1/4W2aIHmsL77OPN2kOicbpo=;
	h=To:Subject:From:Date:From;
	b=siWHnV/eYrvq1H+nDjTvSvfruplSLnKIFxiq9FbqJ5Q/qZUpC04wPrDlw//7t3ou/
	 bFJQ9kypgZ9OTCVPpYvbpjTqhDmj0DpTmzAabNDK7PUjatMa8EnHMOoFnG30yQCH5G
	 A1XBFaPkKWq5DCEW7ZUS4C0AliOu8kfkpUG3XPwKbh+X/1ct/R3d3QeOKxC2yJE9+P
	 NXeOcC0Nci9KF1RvEbDixjD1HgSXsEy65JizhgRgIjgKuw4I0ZdS/i0BEX7z8hF4zy
	 uQ90Jt6PmEDQYgiuq8pVSSuoq1DOKlWpDym4Q/6OiqOe0qXsvHcA/FVMq6Qz1jSbMU
	 fU+1ywR9MB1+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7E3CD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177815805370.15337.6498253776336651191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d52db4bc4e23bcc54e8c9d5ce3e07029dcb709fe3bbcb3bab1fb2c9c43e33a
Date: Thu, 07 May 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778158053
