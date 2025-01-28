Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C0A1CAA6A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738078554; cv=none; b=Ac+IkuAkv9Cvkf2Cbzyq96FoxaeAjXgFuDaNdzkWVfS4+a8Sg73RX9bqg57m3Ukt0ydF9oK94xAbul4zFmCUNt1GopYbtzkynm0w3Ww64Dioztbe2boA64xHSmaowPBpzy99UP1M7Ck0iquGYYZYiw2d3doL7nUFE+s9XL8izwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738078554; c=relaxed/simple;
	bh=2Kx8103rnKvPFEeVkBDVBKDCREao1URtlCbI34gAJWw=;
	h=To:Subject:From:Message-Id:Date; b=SX8HA6iWdiTKkAX6hJaZmNvdoCC1uBbyAxr6RqJU+xLQ19c+2myVby7ddjEXdUJft/TnUZ07q9/4Mpo9Mrp8X6z7uBc4zdIyuw10sVcxZFYfTT5QDqY9qOi9Bh72K02p/ZcOtI7Hw37PSMFEw7CJm8z5XNRHIvuR5lVSmxrZE+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqefUPBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqefUPBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6861C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738078553;
	bh=2Kx8103rnKvPFEeVkBDVBKDCREao1URtlCbI34gAJWw=;
	h=To:Subject:From:Date:From;
	b=OqefUPBy8/GooocDLYK5ZXTffcfVCKzSFmYdocP5X+vedSIVbo5mXXSJmCdVPMWkj
	 gAQ4PRSDViX7RWSlhJsA2FOIhU0Xgii1NNHtFauQxdpu/ldphcis6L3mgjxqwjeK6G
	 BbS3ELdUPU8dfvsHiBxP51mSBQDgGftPmxyLauLY8JdZm+HqMwyqMncaKWG4yS/57n
	 PEJSgqHQgWIF0V9WjbT+rKUaY5yZndh5rclgAWPoSOFzv6SFi5ezvFm4IRNqbkwu5j
	 jJXrEv8FMI/FC7nWQfT/wsCxYIfnf7SCBEovo/77UV5lKK8EY+M4tX4B6E+2BteE2+
	 jLPvqiMxzJmGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BC9C02192
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173807855365.8674.8641498152205265911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33f4d22fb4d951f512df87a22f63ef6b2f6ea90d881831600a01026070b8c1eb
Date: Tue, 28 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738078553
