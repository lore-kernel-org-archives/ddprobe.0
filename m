Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AC326D4CA
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 10:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763375514; cv=none; b=fibaHRjlGWnN+55VuOPEfgAUiM8BunYlJCOoovSbzCsfhrmDb2jPIZWCsscf9T6pf3icht84E5l5eXWnzyVIAaitgWyFh7DN12Cni2E/9pwzCxCGqBk5m832lT3Z7D84i2YwskkXEwbaBZol/DXWPfRcg+A4ZKh9HL+hgkscMNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763375514; c=relaxed/simple;
	bh=Y3+Qm/kRAQTdRwXG2ecEenGx0MzpqTl+VYNt/kG2VUQ=;
	h=To:Subject:From:Message-Id:Date; b=u69G86r+BmhkRGBYs0dTkmXLuqXHBQOxheYwBnIqLNZhcoVkz/4+T51EOy0l644zO0h12rIhjGlFG8aPibqNH+GfNAnA6/7Dzm7MBhEjn3KNyKP3164oJKANkdxaMSslMP9YRWyNrhdMiI96RQs1NnQQGssQctMWBxtRsjgGaDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTeSHB09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTeSHB09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B577EC19425
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 10:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763375513;
	bh=Y3+Qm/kRAQTdRwXG2ecEenGx0MzpqTl+VYNt/kG2VUQ=;
	h=To:Subject:From:Date:From;
	b=eTeSHB09am7XeOG/7RVkgHyg0SfLuWlVyDoAnIktxC2igUi4N+jcT8Ux2ZaP4JTaf
	 1dQhKG/q/SBtbzMny4+vjaiwO44S/4YKB1y3n68ZXfTZ5KGJaH4GCitej9LyzzDFDw
	 NB+ATQiUARqnW3cAZGQr+hlUabmw9NgC/Q12wUtrxpCrD5qB1MPHbtO2S390YdDXao
	 2n0LeXxYiggeZjj7gDxyO2WcbJFWc7s49GeAKvng4j6j2Vb5WboXblTCwguoe40IAe
	 05BlHXxiuV9us6jDgLIilneGxC7h5KtLMr7I/OvW+fF94YQm2kGxF7Y5uzTxxSaRj1
	 aiTkR+Jmc94QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D46CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 10:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176337551361.16572.13847152093092566195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81cbee8f6430d5e9c574c4324262271cbddb0216279a4a51518d7ec52bedac22
Date: Mon, 17 Nov 2025 10:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763375513
