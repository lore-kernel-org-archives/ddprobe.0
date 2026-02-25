Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1380A3101A2
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772006694; cv=none; b=oVrF9sLFr267sDtH9ceJEm5eSn4VVZahNDmwR/nxRrae2BJfU1kY9ZC7oSwzf+vSeRUbrXQWKVn5I+kheF3Y/D5RAJOFAF6pHUKytJK5NvN6XsS14+o3osr33930NJGAY8LH78+ybhMRrZ6gelFC3BhBkzSD5F7n/9aDvh6WkEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772006694; c=relaxed/simple;
	bh=EaJ7Uy+GwTjMK4Yps0Xze9P/m7wkcUFNks7laYWAGFI=;
	h=To:Subject:From:Message-Id:Date; b=MsfBcSSPA8Be7XAeoHBn3Ezv8WI7ZMFbKPYebrirKAvyT3jH0MjOGq6SlmSThuZAN7bH9paG4cFZSamP8TsSoC6r8RNWbuojyT+NMutaZeYGFKUgXx4ecObViqXrD21Tg6XpkspDEoZQAVJMKweIpgviL7+0riXX79Dz0+GlZBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOSi+nu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOSi+nu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03ACC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772006693;
	bh=EaJ7Uy+GwTjMK4Yps0Xze9P/m7wkcUFNks7laYWAGFI=;
	h=To:Subject:From:Date:From;
	b=BOSi+nu1IPu6fKNXrE4uSYvrTEwe7TaA+hWOw8ZHs5e3Xk61yICEr+Kjkvg+XNfHd
	 zYpnndgdea19O8f4L+hDwr4JqCOG7n7+xX+rnJAKhBNbAsJi+QeQWBfGamQSyAsVn/
	 mkijvyooUUv9YgKyLChpjuZ9lWKjqy64gzUpS9o03VtF5lIkyQ2WHzaOuChqtorHKC
	 CY9dQ9Gp8VT25Po/oxlCHRMXrVw4S6dPQNfJads5liIa3NfIOifAUfyHZETU8DYzh6
	 SJHangTYyfa7afE2gKbVW29utFZMkGSoabe1lBAxvGQZLNW4IN8rwyAHv4ZYXwKwlO
	 KXEH+iHdD8UpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F897EFD206
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177200669357.8698.1272643331938266353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54affcb6889e7a369380bebcd58ccec600a4ce5857cb0433cb9e2a2f96d27ab5
Date: Wed, 25 Feb 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772006693
