Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076CE2D73B3
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758553194; cv=none; b=uYEjbCtYa5M3HgElBNCkANvqG7Jsf2R8Cbis7DEfWcdyWND8gBDPZE+UH3NVjrQDXUawf+oR6JZzyLRrfzRzQWm/mItqkgTMrztBB5OSLKlSVFL+yG5zyjPMuKs8sLKBSfyft+WV/2uowSuDJORnOBU1zhW4llz6s3lu3PCVAT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758553194; c=relaxed/simple;
	bh=er3lnkgNwN0Wcmp+eRfifscO46VHKyfBhK3ZwwLKDQs=;
	h=To:Subject:From:Message-Id:Date; b=hveMxo/PqVzhl7ka4k+tSvOKhcnnr6Q7Y/+B5RYl6bd0a4wJV5ibyU9dak+saukX9Uv3b24UeAEqf8s077dY797bOaFtJnbifHBSh1LVeuhAzT35AxPHQJFp9DbBWg1zhbb4IuYKrsGTDSzOJ1FPgeDNQfYm4+RePFboB6BoIz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIg3KunH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIg3KunH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FDFC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758553193;
	bh=er3lnkgNwN0Wcmp+eRfifscO46VHKyfBhK3ZwwLKDQs=;
	h=To:Subject:From:Date:From;
	b=TIg3KunHJ/TvG48C6zmexYQYohR6VqA32Ni43j2ttl4sYGxoBwDa/E7LD/YFU0pAe
	 btlJYWysS8bTWF6jmA5jldfgQjsLMnGKdVjEcpi1v02RHnzhZKJ9EymtmtLN4PMqGT
	 Jwq8NABsFp0LXmIgji/62kpm+N9mdnWwF+E0q4/IzrTSctEvaYmd78ltU4Jl98xx9/
	 H4gUEgLA/fyf/CyZQzC9t992sVEnCJOMBnkiF0nSqPA2/9kN6o6sMPtlxLmecJOYVi
	 59j+GAKpemSGBTWZQohdQ0inrOgJqTkUOZ48mDc/Q4sIYJvtpJoGnpDcqYDjPZ73rr
	 uvnNsAqTZaVzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC89CA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175855319358.2959.13988795576477613401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d12bed374f00047f760fa0f3527e99ba07598bffeb345153e350cba2bc803214
Date: Mon, 22 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758553193
