Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335852D7DFF
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760692194; cv=none; b=iOXmX9FDw7hYUYKy6KgLud2aCtBDc0rb1rskWuymnCq1Q6skF5cRoT/TMAZaOX3231dnj6NR/HRd1hdY3u8Rk6ZvCKLc8WUfyGqrezpQVdqog7QwW2Iq5YWiXAEE26nba9soeQ6KMnea8ddMRLGHtgc903zs+3wiZHo6W1iFQew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760692194; c=relaxed/simple;
	bh=3Btq0vj7WQrsnbwca+FkLsjgm8jp5Af8amIE9jCIDoM=;
	h=To:Subject:From:Message-Id:Date; b=FBG9+LTvq8aw7DuS3aYQiJEU4Lqw3f9YzRWs1g6G0krh6reYwLgw7RSKRtk7h9AYCCVrFQYdLkycfZ016a7WQrmH/uXJldUo8XlnfPaOik4jfa8svDGciDAvyhEth6irIOymdbgqCKNK/RgRiBA+MXEAbDWokV0Kv5591GznyX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXailVT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXailVT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E8DC113D0
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760692193;
	bh=3Btq0vj7WQrsnbwca+FkLsjgm8jp5Af8amIE9jCIDoM=;
	h=To:Subject:From:Date:From;
	b=PXailVT55uGHjDEYC3zZfp8YpNaHWp7VNsmUqeK2CMdSPDLs7oDBByFMVs+kgZHId
	 VRs4OKz3WI0euZ73a8DcrcDtoUAHbb6rZ/W+9AtEa29k1/FU97NHueDdyxYoLINLxt
	 WQ8pHOLGpKg31z0c86jsbZubSrYbVX3eQXsvlU3tL+ZfYICW9vKSUpb0qsR2j70Cde
	 fN7+uSdTf6UdrcH13SnzFVo15XqSoBSCgvunRcWA1FrRoW6cMf0Ux4GFMYFtSq0e/r
	 Z8XxKqJNERGl239NebS3GztGWkNTf5WOnDfTSpMYMLYNC16+IGKZLUGS7iniZmjAHc
	 jJS5YaJaJLkmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E0CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176069219358.12643.15265535539309511422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88f2845633e1817821059b7643fc3a4f081201b41b0a4fa6e25666d9cb7e691b
Date: Fri, 17 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760692193
