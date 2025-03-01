Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E4342A87
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 18:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740854334; cv=none; b=TcRPg0024O9/IKk6HeEXEety0bXjqAqZ92sWq+M1Dcq82xJWPJQytNnRJyFCS6KFHWFDWVHNt0R6dgmc5Q6r/Tr0zJU4ProAiTuUEU6b407d3UqFCzj44T2+pOn/XOr6mwxwdDy2vJqgVxva+Hi21JPWyMjLqHd3XaymHN0xn0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740854334; c=relaxed/simple;
	bh=o9WlNHOj1bfzmJUF2sZlsK84xVs2FgENAjqfrungMdM=;
	h=To:Subject:From:Message-Id:Date; b=BjQkgkLA7pksfCrZO+7dBcklNAxdZXT4pqqfnLqeWOsjXRX4uVdGwk3yhrNzrDPb/W9nyRdt5kpCXYAWattM16UEEwFKyR3doBMXPA9xrWOwFr3JJX1+4uSzXMswhAmx1RzAkqh9esdEJlRvM3wBjpO99nExbwHYo6dvgG+XMdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzOHQ++R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzOHQ++R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94DBC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 18:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740854333;
	bh=o9WlNHOj1bfzmJUF2sZlsK84xVs2FgENAjqfrungMdM=;
	h=To:Subject:From:Date:From;
	b=YzOHQ++Rp2g8XLMyw/gccu2RufXDNVyQakptLD06EncJwMnpVdZuCyDvJ9wgDa32x
	 xcEXvgnX8GQMXInQbeq/ZirHxLAdLSuXWPCyt2e5dRn90Pen+UBaB5SKzTKPvgewgH
	 BY9ezy9nCnreaQQtxc36KVhcs6NzwSf5HGI+3WDGqnQPnYjTEOJw/1zVeXR036S25I
	 u0jBdY8vzgedclM/q3Q5YtvNGDF30756EQZky2ii+vEnaHv/C07HfLLH4lv4jzryOA
	 Lgx5VcaLoRqd/IfK3mPmvejKohfhUBFLB1bRKGpfhTNjlTn50xS8+T9/U/GbqF0H+1
	 U4H8lb8VOu/bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CB2C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 18:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174085433364.31197.11034074164681977331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88a6013b83008c40e05f13cdf700126935b8a2e6f48398567921bec23249a4e
Date: Sat, 01 Mar 2025 18:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740854333
