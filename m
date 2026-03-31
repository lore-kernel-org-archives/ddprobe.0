Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37843D8114
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774975493; cv=none; b=Afg1LA1qgZ5Or+aEqTqIjN4hgQkYxujOZNLInBmccijr4WRb3GseWBfs5vu18peGBkiJKGD0teLKSNtRWbDXG/P6LwGmPX9X7LFCwXaO+IYUxRwMwEyS4inoeY/LoNrhyK+hf4SV3mQmKlhjU2JrySx8EWCxCBwSf5IJ27DpZ7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774975493; c=relaxed/simple;
	bh=JB5t7lJMDkLvQKcgwcmJhOoECGHAnuhG27aAa8VOLj0=;
	h=To:Subject:From:Message-Id:Date; b=pg9g9AYiInOh664wHP3XdIGiPL1KdqcwAbfA26zmiL3xAnYiLuUHmPT4UN7kHNShcXlL6iSwBCFpO3Lxwi4IbAXUsdxBLrwvGd0PWT2xQlK8U5w9DKYT9h0JvtxDYZ2UP9FUQemMJ7p1SbN6x//JR2odo0yET2tVZ0QEVTyPc6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBsj0piX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBsj0piX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B12C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774975493;
	bh=JB5t7lJMDkLvQKcgwcmJhOoECGHAnuhG27aAa8VOLj0=;
	h=To:Subject:From:Date:From;
	b=kBsj0piXWOoCcRVdbEjbBjgEDFIbUuWu//M5sgOBe8TTIg6k+esc1JWdz5bC/H+Y1
	 AXorRgmYyvZmEZoH8ZTE+4ZHcFoOPzburfp9PZvE1y2pGymxkzilb7FC8o+m02aO81
	 2Z5XELO+OX/CX+O8dV/kBRFvZ8DZgUN7cZ9pxjpr76HmWZR1IBW/LMfCFfNjCCLXRV
	 AEpigzyBHrkeWkTdDxSTyW/nEg7vOUJBSms8NZC4xtlUGfGOiTY6ZJBqHhknMefpfS
	 AiepWRhaQZS8K7xvAROoFolEEPWFk93+czK2d4yNml6+XDqROPEjIe8bz0hXpnmMa1
	 qB0O5+/mxvYPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CE410F92E3
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177497549359.16827.17930502613918468978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49987d397beb8640e6c24c3c294febdc69b1d445acef6f87a24c781103ba425a
Date: Tue, 31 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774975493
