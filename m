Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFEA83B8D59
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765134773; cv=none; b=tjkszZWO2ybF+ryD+j3zpN0E7WP9vzPj1AGZ+IPwKuj+iEOeEPIHmfISFLcOH46Gj5cZ2N4o7u0rhpHxGBLT2F1rk0/HWBwKjf73uWcPi9PGBee6ZPmmJcgW7wyAoPxGPap3QXVQUyFJoPiMENWWVvYORlD9hpU7tBunXknHrNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765134773; c=relaxed/simple;
	bh=M35BA9rnL6/YdsPoMKhrRWLMMMaMMO4wJMWLt5J8H2g=;
	h=To:Subject:From:Message-Id:Date; b=uAiMDdXLyULbhEg/uZ5/WY/dsUoYYPjvRSdzlI1+u/9co0KiHQcWPZEzQk6r8ecL1qasBaHs+dKHKnBuCBsouS/0tSmkWfRBkWC3M3xp78KFiBaHhGgx3/W3pNoRhDokOxiDSudmagR4nhCOQ83G2TLRr+6lcQVEtM0mrLu8aDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPWnXAdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPWnXAdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6390C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765134773;
	bh=M35BA9rnL6/YdsPoMKhrRWLMMMaMMO4wJMWLt5J8H2g=;
	h=To:Subject:From:Date:From;
	b=dPWnXAdHWt+r8HRBJCjijCG25/tntN05FRT7oS5cGfGNgp+geJvqXojq8EGwIy9IG
	 vT7uOTlaGYqK0eyDtqx4peoFtl1Qd9v2y6kvg0aYrKwz01W/ByPJsQV4IjJLdE22Is
	 pIRjlfYCQ5L66yI7NZGMCFGlCkctxVQcpPp5GFoxZ+bWeLkOD4bQYbpl3GpJTrmg8N
	 a1+DwXozLa7tLhf3S2Burp/7+edAn6xRKUTr8FJjWDVymNSY/35IZaN7OwZ69rzijc
	 zlRkn0pDdVRKLPHIxphZAhsqknJhWIlbmM+20ur8fsi8vpMntaBvYX+BYhumw6tkaV
	 oAmSc+CBfxtrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9359ED1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176513477359.14224.15809395311550166241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f65e83c6adb9fcdc744d100781f85783be8784edaeaac6e48667d4a0f891a7
Date: Sun, 07 Dec 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765134773
