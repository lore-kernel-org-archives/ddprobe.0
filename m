Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CB32417C6
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761508795; cv=none; b=DFiUDvliS1SYU4uc4iRXgcUI53mCVzQlaajYhC/Q7N2kQBkO9QeLn+uvPFMksLN4y/COSGSMIU6eKpnb9bUwQ27+wWYwb9swaOhX69OmfJjU+g2wnGhQWTGy8vp+Iut1aqtBgYSEfu6tcVbiAgw6jY0e8Zl/fwmR/7LocPnp5WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761508795; c=relaxed/simple;
	bh=VKv37TEloEyYrnM2al05IKd+nhqxf+z4wyEaQj9cTtY=;
	h=To:Subject:From:Message-Id:Date; b=ssNjA6EqfWHxpCp9wVQI+bGOB1a9kcPBFDd3WUqmr9IPeg//ugE9TKhaYTLHHRchpGMmEuYac6id9dTcbAEPolf2RWPsLcqTxgW8zX8v6soEWwhf8Bv2XPEztOGo8X0/dLY5V/NqriRPSSWoS1q6zhppHA1F0IrwSTi7IQ9V4O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZYuiJNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZYuiJNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41F3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761508793;
	bh=VKv37TEloEyYrnM2al05IKd+nhqxf+z4wyEaQj9cTtY=;
	h=To:Subject:From:Date:From;
	b=LZYuiJNv3bfao/6X7yCZvHWY2aiQp4PQXTduGC7GAn1z8AqDNNg8DJcZs94p6KGLx
	 HTxbQxeiGAqsgXFv4usJDDHxgZmMpguKAD8cENZPw8v6aKYp1alVzk0zr7EtVjhgqV
	 c0oo/qUR47AxDM5gVuSGFKH0goXuGTZiUND6fX3Y+IOBaiyUQtK7h27tyYvS97b2DH
	 Ho8rlh2QHfE+YnDlFOrd5XMX6Re4LFmclcDmRi8RdAiF9RY1xf2FDLc1nFOryYYH9z
	 eqxd6b84kGXJ8Twq4yv83Qwitv9vqiWqkzxO9LfReQX826UEEX4ipMO+EpvsGOQFB3
	 JV72UGJYyj85A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94674CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176150879357.23557.4954746899022885608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1fe829d6bff1354805a18fbd7ade6f0c790d8bd62e870f8cd8eee8ae6893dc
Date: Sun, 26 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761508793
