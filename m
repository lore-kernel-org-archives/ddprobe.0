Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E587B376EA
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708257497; cv=none; b=BRpt181no+j1syKgB07eIPbVFy6kGiIioo+ClHfYZFZoISGss8JoPJHsaf4+BjwRQ7nH8lTftaMuQcBHoznT+HZyWLHy/p/0r0udzG43a6kXAzQY7fcH9wA5S+rqvsp/+54hRZbaQiCeEThbg6A6pWMFjmcFhsFdYJBV5dMSQDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708257497; c=relaxed/simple;
	bh=MLXGx1ytydCIQ34zXaF+YPvSfMA8A+ObzKP/j5bwga8=;
	h=To:Subject:From:Message-Id:Date; b=pqxQhQDazrXwsVlthXjtWM4sgZu7ukX5wRUcQ/TrReXR/ubahPEgv6k/uRXyfW7BLtUvtJfwMgwW8s5SmaR8kZX7DSFEpxLUPxoD8+i7jmbAHx7IriG8GYjj91WyRcDqYVhbucqNb4zR+0gRhGZuVSf8tMjjT4+98zjkHs14+y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAkbe8B1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAkbe8B1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82BDCC433C7
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708257496;
	bh=MLXGx1ytydCIQ34zXaF+YPvSfMA8A+ObzKP/j5bwga8=;
	h=To:Subject:From:Date:From;
	b=vAkbe8B1bqq5RggArzRa8FMGWubO0ga+CfGY1PpkEEI4MkFIJNVfNeILUL3LOre9p
	 1B0F2CwKXXGBxmiqoyiRddFH0urUrVENs31f6t3d3aAaQoOjuMk9kq+d8Scxfa4PYd
	 9igLSNknfYlkfQCGUHTGVVrRpT0zr104r0hsQ57/4NR0KZGsaJfDF6twvOwl+vdYAV
	 MZx/ajfvyMEzQkSPs4Y7TVZs7ftvq8nkARkkqGaFeBntF20r/CAnBmKWuwaSOW8PMI
	 FTgMZErvUZ3ameJ9+GfLNiej71AipBEsV/KW6nhTM2w4IPJioe45SgCTSvL2p1KAlq
	 dTB0xBZW2qF6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 681FAC4829E
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170825749639.29865.7321503558042014188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e01236676d185200e5f85513d47bb86d68f5c127ddc36a1e632ab67ef86f798
Date: Sun, 18 Feb 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708257496
