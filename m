Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8EC1DA3D
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754676594; cv=none; b=eJUJzF8QoFkohhDLJ4g4WZu5P0osXpThI3DYwt2gjOM3jJUHSuLA/Q5qtTVqXAy1bIkHjR+1YROFCds6P1nXwKRb9DqmIK5QW9Y8pQZwMV2jgvVmvSyvGsQ4qrHQ6J+HYeoEUo97+Nx+XDWLq0yfoKqGTmvNBnaR1Dz9aXImWIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754676594; c=relaxed/simple;
	bh=JxcCxRAZItHbiul5mmy+P+wYnikpHOTQTO2+GJ30fgk=;
	h=To:Subject:From:Message-Id:Date; b=XxKL/395UE9SMvnVFA31IPgqe3E8fBHuifRRANspqWYBwt/169oVA04Itw1ZtLFvpmStI0yy96nMCj8tzgKU51v/yEoWj+Sjet3ZeSZbWoRlBrVzRj1+InzF+6kvoCM3/G5/v7B6zBDBvYruIgvfR9HwafRzNBrQMk5shkRySqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFHt+jSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFHt+jSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A89C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754676593;
	bh=JxcCxRAZItHbiul5mmy+P+wYnikpHOTQTO2+GJ30fgk=;
	h=To:Subject:From:Date:From;
	b=WFHt+jSV2iNNO7ca69J0ohewpVlxjRXqoPuQRFqbeIa8UuT0I2vd+vrD6GXbaZrLk
	 yRnCIYDrJHt212e1ImT0zROfKG87WxR7bu4HFKcR+yMJ+WS1HY4obZiLQ1RgETIvmq
	 yU4HM5FuArneT6WC6SJby6uCN241zmBweL3XgtEPfICXwc12i2zWDgpvr9I/3doE2E
	 kCclz3/hlILbdxOR/LIdUJQ5j1XBBTNjYd6OUCwJaixHJKW+91/VkYAxmyHGt4FqVK
	 svr00hxSe4HzyjOqE/eQgLqpWMeOT9zjjuwiXKWXNWmszoz9nmsjufHAmtG+3Cn+E0
	 G/9uHQlzO8QoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFFCC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175467659357.15232.12703247259453455143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46940542ecd7fd44081d74dc759907fb2f3b4f585f8a7110dd560840ef5ee360
Date: Fri, 08 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754676593
