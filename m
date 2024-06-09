Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C784AEEF
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 20:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717964843; cv=none; b=SmV5RCrUms6j1YGfdSbgqyI9q1NOHjVGQozLphAc7Tppdnv6yNW6HJJB/D8d3Xe1KaH+SFxsml5LXK+z4tM7qR5Y6+oFzBI1MYh7L5wG3XqA9fBUIQXoWMT0ref0Ge8AgCcKMbOfPEOsHl4FLQWe3Q0P6kmdxKxhgAoX//xln+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717964843; c=relaxed/simple;
	bh=mH/VMfx6ogn1ZiW/Imnr+QppoBb4Y/KXdDOBoiJ/NVg=;
	h=To:Subject:From:Message-Id:Date; b=boqPwF3jrbCH8fRjeTGk6EjiW80URSGRcgmym+uu1qa1ScDtpbnW5FqJoo5HCaTI+GBrh6KkqvCmEqFoOUGgxy39WNyHXr6GoCJttMKy0kDrGlRDBNHtxwK0I2twlu3qHbxVu8cEZ6AgaRBrZoYJM7foWhhE2WjSgPEUlux8E6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5h/RhVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5h/RhVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9184C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 20:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717964842;
	bh=mH/VMfx6ogn1ZiW/Imnr+QppoBb4Y/KXdDOBoiJ/NVg=;
	h=To:Subject:From:Date:From;
	b=W5h/RhVy1XbKMrXaAWExk16Cx5u6TDnkzdJ4OXaIGtiHRax4RCmYCqUUQldbXuI/g
	 tyxQYtpuing12a+OGlT3Uu+k1qDXpnjqk5K2NyBsi33gWNof2B2WlVlXVKPUnGm+fe
	 zyqLEifbp6whFRmMyuTp32BsgrhkHGrHqGMbz4Fx/rxMWRTdvwWWxo/MkRCO2Q8Iy+
	 c0ugTRWE6vIXCu4Nds+FZ9V67K6ZU6umnM5JEIa6cuXtEbVwJuvD5oc0967nuoBpA/
	 BqrW+zkDYozkf4M0IC9X4xyEBgEIAyxsJy+AEjX8iR84aobJk39dkFDP46qiFXrrtA
	 3bUhOIZa5uEBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0691C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 20:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171796484276.3796.5457455640341839406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeee4a0fb8ea746be4ab8611e49ebdcc299206c5e5fa59e037a84d37d670a6cb
Date: Sun, 09 Jun 2024 20:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717964842
