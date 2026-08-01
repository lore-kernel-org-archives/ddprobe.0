Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED5149620
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785621634; cv=none; b=dwqHxrYcRxHSzZmk7GzPJ4uUOqSPBzgp5ZapF9O4zqYSbQaESzZVhjDGaatLJSdkKpfM1dcb3f3/CXMpdRRAb9etqPM23DV5w2+6P7DqpO5yqIstn3Yyg+Y4JqDeNxs7OYs80t/2fJ1Ek4vvXvZ1OBLYgAadrYQ/MMQoNl2NkEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785621634; c=relaxed/simple;
	bh=nMHFuPmXuR0R85flP/GUJ0Hc44REyh5DPHBl8BPm8JI=;
	h=To:Subject:From:Message-Id:Date; b=X7Xsi8xx01Jy2gdxw69U3C6MC+hDTaZfF62FjRwLVvlrqfvFDdORmlOl3eYolKLYvpaoelJfY/aJqTZ8y7NohvC0nvtLQqffQINjepsS06UIv7Zn8HxcNQmpWDhYYVTYRXpR9fGPwBA6IfwGieNr6+9jKI6hwTkC9/MRLP/Xbrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCHV0fZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCHV0fZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E51C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785621633;
	bh=nMHFuPmXuR0R85flP/GUJ0Hc44REyh5DPHBl8BPm8JI=;
	h=To:Subject:From:Date:From;
	b=HCHV0fZKlnWtYzxp5OOT3HCxLAlAYRBcCLGZysZDvfPLdN68aFJrsthu0lfNWNEGN
	 5qr58FpAweCbSD75MelIU6wfwiQi8YVVQvMZ/8WloDFtYW3MaS8uv0e8ZL9kRhmwO+
	 2yifxB6xwcADH6XJqE9/wp8PDwkfE4J9LDa/GedNC31DuO7vBVs+NC5kbgtpiTRA+1
	 QNt1d2jB0XzByzLIHw5EWQZ3dzLuSziGUMqseErhvr6mAe7G1+SjR1b5Lau4p8dmll
	 ZhMEVH0fKzRuF3cffgRx9CvFYHpesnK8la4dSdD4+bGyUu7DMoNhtJQn53q0qRnDj6
	 1O1LEVesu8xxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3A3C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178562163368.11525.3462616217827849976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e26dcaed25b8f18f6cf097e9f88ba4b2cb2aa4401219c3a723d76f0323031fd
Date: Sat, 01 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785621633
