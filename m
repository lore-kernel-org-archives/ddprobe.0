Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80F0A347BA9
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 12:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789908035; cv=none; b=r4KR1LcCV9hFLmqfd1APcDtnMZ6eh86ZME076NgizocJAGml3D4GQvJb4Z0IY1ZvT7rHMdjKXdMUhly3p7Lhwbh2SR8QIkGJVecfTigKTlHlNlB7y7sfgoQJRdNy/jh/uXp1N3rhOOx1WswD+0vSSeoCbWwKJyqR+C7hCCzVV7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789908035; c=relaxed/simple;
	bh=9SYBj0Ehfb1mqp2JfdnonxngKjgIgvfWVXHrHrMdXi0=;
	h=To:Subject:From:Message-Id:Date; b=f6cZzCdLPsvNBPJ6v/jWe2wK7hN9HG686xB8P1+LxmntIwBIh8aNUK5R0Kl2P8s+h1MzefLijMlft9G/K1BzkdWUNBpOpvNqZuTFS4mYAWGKIpT6gEJDfGeoPMAOkhSx2kA+Go9DXNC4dIPv0rjueQtp3LmvPl/9vXy1Lqx1NYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sieg6Bzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sieg6Bzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1DFC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789908033;
	bh=9SYBj0Ehfb1mqp2JfdnonxngKjgIgvfWVXHrHrMdXi0=;
	h=To:Subject:From:Date:From;
	b=Sieg6Bzft+aemWRzVt2vhen9966UBHhJiZJlgeeDMzkVTKvTau2YmIRNfiC40WOlz
	 61TjlLgo5TKNsboTNJSrqfLgmou7djAkb97xgHYm9z3cEv2glg0Vn2+b6dn6nmWv2b
	 VOgEnuERmfTQKCn9HUErUYBSVCwbOKX67qoJM9FDcrbM19+ORtkP/E+6C+qoKXE53G
	 1I9wgkVPoRAGBVv5Kz9w857hmzpLFq1MCJL7vM3WlG0y1nsVzsqeYrrITX9EusNGUX
	 zg8ZAMphThnnkr92Uy0SUmkmp/GkgNT/s/fodlOp6EiApm2oDJAw81YYTMZ9PdbNel
	 CPEIQFgDqoGgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFE1C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178990803369.15291.1898317924023958438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e29321b6cccc29564428eb28123cca49d04a3fbedc9f4ac8287a4003a3d84d9
Date: Sun, 20 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789908033
