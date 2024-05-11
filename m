Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435E9EC2
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 06:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715410343; cv=none; b=T2vIZPdKrfsbSptPhSsEDoLjxFqe2fvGMKLxZ7hG4j6NhuSj8PuBzCIBbdOsHytJ9JdSMQMVvzS96TX2h3RntXIfUJeqZayyyTnStciVWVE5uxaEqAGf9lDE1s5mzMeGtujFMze9ohjc7fKvnxwHVzj05ESYgvg+fCpscTVZCz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715410343; c=relaxed/simple;
	bh=GkAQyMr154iBiT0EmOinuZHsEuqL7Js3y3EjB9jsF18=;
	h=To:Subject:From:Message-Id:Date; b=kH4r180WK62lfouPMTgIsiM8qel39PKNfDw4mLS3cEGm3CwkhrxtdoTpF/49PEfOiGlN2MMbu24eE1EZ+/Fjg5LyKaBMv0oTlmk0Vp5ir+Nrx/Bc7MXth1wwWEKG2bOFGBEmwmbGm3Fi1M2J2PQ5L6oL67iNos/tF9OGWhL6zfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsgD7UHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsgD7UHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCA1C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 06:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715410342;
	bh=GkAQyMr154iBiT0EmOinuZHsEuqL7Js3y3EjB9jsF18=;
	h=To:Subject:From:Date:From;
	b=hsgD7UHi4tA61ldSTN9IPZr2fBvjx50lvtkp/Dm6xqm0Svwj3vr2VHnaJDqR7vb3t
	 P3nCotMIUoabsiGWChMoSCvL5QDSzIq2iM6jdAjsSjXCPjcoXVIBz7Mp5WEB0RZm43
	 gyAoWpotG4bUtQghCDRJhgLKaFW0jZ0RLy3IzbvoXNWyNUTQfl/H77CyuuLJIXAAT6
	 ggZ8cFREaC8KdvmbnkhOh7DA5iUNo0tuar9G4k2sFZutIrJ0go2rKbj+KiYej9dK/U
	 xkSt3Hg5DKXU4+oZaVYs1haZnVDswpUYmgphokm2J2Psqy/zS/Rv90qTLzcvq3IO2H
	 vGa5fvWhR2WJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE88EC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 06:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171541034275.22204.12377517692586322506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cee4a55dfcd0c5fc8c3b6b441d6edc38e1f4be56186b7121bb7a1e67b860b1b
Date: Sat, 11 May 2024 06:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715410342
