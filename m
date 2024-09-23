Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3303D1E515
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727105754; cv=none; b=tkSUbkR09Mowx7RHFXvhMLGxu2A35dvZ59Zr2Fs73L8511LylLwb4C/JhA4lpupS0E9wAuUmEW/B5ckjHkz0AE1fxbRa69GLTgQFQT1lUM2QeygsMIbn1plMekkGSxVAG+V/rPUP1P17i6F3dGYkfJfk5OSitA73AjfRsfcnry8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727105754; c=relaxed/simple;
	bh=qw3xBjSePVcH2edtQ1n+ZRgyONR0K01g60wDPhc8UGE=;
	h=To:Subject:From:Message-Id:Date; b=a7YFnUA1HfKNMUjtoOmW/HtT8kKfx5N8xwkW2gh+i3HyJM0qdEvEODu1Hvw5DYM8Ilo49+rfJTGT90zzQ/T998MBprp9+j9vsAWFsyb/kab2gan8o54zv9bPi99/Tden2LKUjLBUjFjuM2LBMGmQSSpt4rfZIH8jVlqH8zyiSPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCSNN0jk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCSNN0jk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1252C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727105753;
	bh=qw3xBjSePVcH2edtQ1n+ZRgyONR0K01g60wDPhc8UGE=;
	h=To:Subject:From:Date:From;
	b=eCSNN0jkadGBIVWKQzYXpuXGQbXTbypqz3dyjvtVNLo3yURmT65J9Dx2b2mZYdNbj
	 0LPO4/j2O0g+ymFfZCprZYyOJtc+8KW9dkH+Avx3hcBC8AAuzgYqXyP+r4NY269Hxg
	 QPIPigYZFKecv17zk9pqDIHAyGet/G1h04KrjHEaC5hNBxC4FlWH3CVa5Al9ql68z7
	 G7k7RZIJfr4qnG5I4hU/3RtEKjnQIdKEk9u2O4/Y7eBLCMSOts9Sh6dC+iTc5cRXpy
	 8r8GMbFcpfs99RbLEXt55qJmFdG99kluFVMMHWeAtzqv8jHae86lo0RioemjO+JG/s
	 8TLNMKbv/MhBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBB4CF9C72
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172710575365.12323.7407061781248444106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37046aed7d957b27bf90957e54770d08efe3ae632e988f158c924e37be6983ce
Date: Mon, 23 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727105753
