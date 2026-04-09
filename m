Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E183A4539
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775779054; cv=none; b=AXj9TzsVKH59+fOBGA2C81wcs05zVL1Gka4d8iayKT7axLtWEB40clikM63RZAEtQ/q7p0J01/wyV5EFGYWU/kGcbIwi7RTYgCHBXPlrMPz6Cr1GO9dZa5gTCF3UNSPYcV6Wj1lfNaHLfZVWD3BFou0OKAJGCzG40iSBf5RjfO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775779054; c=relaxed/simple;
	bh=hcHwkvHMjCpvCwPypvisIUpcknKoU7aZgsOH8B7AXws=;
	h=To:Subject:From:Message-Id:Date; b=dRm/zOfolgDoJFP6m5JFmWCnKWgJYpyOt5RwRD8oBGgY2Fk/CHS3+MNvarfsvDTI/xJUj/LkmvMRgKjThFB0HyIQmN6TR5+LF0b19Od122mI6x+cHvhuffSut59IbcvERbX5YKnhlIBvU1YCBxWETKENV/SMOkeA/Fw8IOm2AiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=loVYaCnw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="loVYaCnw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C47C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775779053;
	bh=hcHwkvHMjCpvCwPypvisIUpcknKoU7aZgsOH8B7AXws=;
	h=To:Subject:From:Date:From;
	b=loVYaCnwZA+tFzgfHfvmX49ZwtcCPZr6ay3CszA7reZ++LvfofUyTiIuSHb/rbp+X
	 cYn3S9ImvXUaZ9Gwt4l7KJWJZc8ZjQc8arMnX4UNv0y0NqkZ0DLrnM3xL9RLoCEeYB
	 UnA35gATsZ0cv/pT55w7pa9pN0QFk6ePquyodaPo4TDcSOnpHW0VQuP0pfQf52jRyw
	 OzIrI0pezh7mfUrjLCSCZD6BP6uHcZnWHSxMW/YKalTADqrpnfBvhx5SX8kahW2cSI
	 IC83+wY9z3N2uu+xtdIO4Eg9poWfhoSWmvLhNf54UbtBzJ0AkuJRcZPTOSBQ41AhlC
	 GXVZavjjHmTFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98E8F36B97
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177577905368.26915.4057931525105851416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba863436665e722046ccafd7b75e0290a126db69cfdb15151b7aa89c1e5b847f
Date: Thu, 09 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775779053
