Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199D62AE8D
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760792394; cv=none; b=cSDs3CzbhetPCz5CD3U+UFZ0oOvfyF9VMGXahNALapNIENo5HxpZYZW15cn2wK1zvp22576ELPDIjmTs3M0bcskE6yOPshqpK49InrppHVRvulMgkOXgt2513p3BEDme9Ft2aY5uKr/1zAXRLeVE8XxHjKewVm2D3zaAMSZpB2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760792394; c=relaxed/simple;
	bh=A3kwRhzLNrYJEulTWaML3tCiL+45jlin7gTq6DhXv+U=;
	h=To:Subject:From:Message-Id:Date; b=hDJArVD/yEyyNcwe4YtvKpZRHfyeyZgczmINaajNsy9GrdLq42FuTNkux2VQbiO4aYjmVkFSb3NvW2vk5q4s2MpyF3/0A0dxHWEm/Xg2vLnQNS7Om1uSeaWB4x3fEm61ooAZdU4EVv6y0CXpKhNnhXsCga/6f7gtjmD3SDZasWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmFMkxfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmFMkxfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BEEC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760792393;
	bh=A3kwRhzLNrYJEulTWaML3tCiL+45jlin7gTq6DhXv+U=;
	h=To:Subject:From:Date:From;
	b=dmFMkxfLXQDPoqpUFspdcwsWFAUMFHuiqefh8FalwDlNaKEwWSEULUoiek3XwOjMe
	 OStBv8p6AQ2rrSXeUPCssDWgJI3O2d18v82/112oxYeiQhfEb0dXPlGG3whzYXTxAo
	 38PTJBczowunUukJwQ3tmwd/CtUQBK5Wm7lGyO9gY1PoVyJGi2o0Y9LAIFuMMz2n/4
	 pFzaYve5OJk+I6fs4X39vp/QlBg1/WdJOWvTLtM4CIq/ybvXJstPudHL6eiJyiGrKb
	 2lcBB0lsXnkseOn7gRnYdd+dx2FzM8quv/jjmIWSxBa1eM5kTE4wrmIGOIrP6DJawR
	 P0C4CUmiYeLzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F111CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176079239357.14156.1889715296100444811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0491326a00688dbd173757ffb88ab644c25412eb0d5bcdf11a2dbc17ef96fab
Date: Sat, 18 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760792393
