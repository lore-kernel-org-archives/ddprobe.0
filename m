Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457FD1E531
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784461714; cv=none; b=EjibE7iMBmyP3sdTKSix88j88PAIAAsn2BOiimJKfQA+yL8TSFzsnBrN8t8ilSNaR5279ACudXK7FlBZ1cB2JRA1VCXiC7cLBzR1vd8ZRN9VMLjXn23lox1RfmVEl68ZR5ryK9K9UnxMd8xjqSqYyb81JxkUg8OPxtozvCXmnrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784461714; c=relaxed/simple;
	bh=oWg/cQdZN7gW8XkhxuLZOEXNmwteA/PiCx6Cr/Zae1M=;
	h=To:Subject:From:Message-Id:Date; b=r4n6ghHmlr1pHFqmfBDG9asQK7f53W0Egk+vP/P1mU93Ewk+QfJS1h+JarU44zKy4eKAfuluPBldxfOSAGSZdd2G9bPAwIyJ2gXPaY6QR5iuPF3cnhswGJzkxH7V1+5ImiyCDkCUJplqVJeMMcK997zfhTIGPmJ3dMBeF8Yw7XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXhNkvEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXhNkvEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5B6C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784461713;
	bh=oWg/cQdZN7gW8XkhxuLZOEXNmwteA/PiCx6Cr/Zae1M=;
	h=To:Subject:From:Date:From;
	b=OXhNkvEtOY83F74kVLiFhMZfgb2i0lYzfBCRJm3+B6J2Es0u1a4IU8IBAhQrfN/EH
	 7ukNJhu/XlNERxZ/Y4crWCyQHXgGq2NC686wPmshth+0h3EDqxwor+unyNy3mKH0Ni
	 UgSGX7MZcinFHlZlF1MJb/M4FX5CHLyaflEPmLl9hmG2MCnvtqzgC2NrCh5K8XKsni
	 2753VNdHcmeHVZcZJy4RGxr46uuwI2cQ7oN+pFm+cJAl2iFqcZWJU3D8uPHzEOkqAs
	 sN2jydI6agUmNcS+c9Iy0bLd+w6rcxBp/XXiL/FKHfcYckhsidyfkoTuOczxr3Qr2L
	 OsR8d39v0+6pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD18C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178446171368.26472.393248110049210134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83443f681fc80ea1cfd98a82f2b171c93e31b3c41f0847d0f612dd458e11758b
Date: Sun, 19 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784461713
