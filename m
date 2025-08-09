Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220941B423B
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754767794; cv=none; b=LF4msoGXdVgFqS/q32iUNf/XCY3asrm6PEswAdQIY94go13tUq0dL8XXCPHaNsEN9hmOQJgotQRyOtJr1PsOk5C/zDw3kkXWsa1CAqPt65guMpNyuLxSOWco6th/IcwumEV3w8jef+rl5Sm+ii9vLQ/W//lGJLV12UkXl3xUMIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754767794; c=relaxed/simple;
	bh=/OXjZgQTJeKF+PQj2zVG/l2ZIvIAaWswFelNGrP0Z1Y=;
	h=To:Subject:From:Message-Id:Date; b=c+I4TbllDefVR7F5J+vl3GK8fPSIZiZY9E8JggKmiXTxS4Y11hZk+IHs9/2ZD5KY7P2WtPw3ieORf3WxmVTHf4r3DN96tuZeqxe+ggVVhij0pAldyMG4UB7DZnlnCl90+iruymwwSJUqX+pgLqYQV35NhPys2qNZOZNEjNCoMNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYpzA0F8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYpzA0F8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A754DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754767793;
	bh=/OXjZgQTJeKF+PQj2zVG/l2ZIvIAaWswFelNGrP0Z1Y=;
	h=To:Subject:From:Date:From;
	b=ZYpzA0F8HX6Yjxf19OIz0zh064Klo1FAlk+Il3BPIsBOxvxJB7vNtDa5SXmOWYpdw
	 AmhTSvm7d/m5z8hnsIXWqhL6yl+46FXxcW3BuflnTU35XfQPRFRQhxEZFoywUOpEaX
	 m00sqgS4tOzBgd8ybqa4UJqnVLFxBgfKHQLnF+8zURcWm8i5lOYDFBCcl7Kfvszyk3
	 D8/He6hnucmHv/75mDI1dz8EGsIN5tD/7v+7LKwB1L56S2ksR1jlATYhVcNVil9Kp7
	 HH7F974nKiEqURBxF53vtoqXRCiaqoyNOyCW59OgpwDrAvCiSLOVanaGQIrLmovTwI
	 yM4B8y9wAtp/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FD3C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175476779357.1037.9967957107119641750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee1e87a3becabc34e9ef245f656d4f61dbac42078f8142dfe8369a0a199cc8e
Date: Sat, 09 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754767793
