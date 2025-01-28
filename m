Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C8523BB
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738024554; cv=none; b=AS4u0VQVHsQ5gnODUl49qZH4IH90zXsd5VeNCFLCsnTC/+c9/4r3K1KflVcZ2Pbs/nyJbXe+EleYxynwft3fUXH9HDZPYX5GzLZqTQd4jxv9KztbNe359PGHy7cYnswl4tYwACtSwBgRStj97FvsBPuBUoUm5FKpaD0YSTzxliE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738024554; c=relaxed/simple;
	bh=dTut/HV5aKTZQ7FwXNe5bpNvp5RG7yeAEphh6mI+oBw=;
	h=To:Subject:From:Message-Id:Date; b=uM8wA6t4t6+xIW/5E2NVj4z/ORrq4i+EgBVIOZke6liYlwbdIXP3awBha7XkySaCCjdrBJGNdJAjJjlMZgg1IshrRm9ZbXOHK2pVlr1TBMMk/GMSMRZiM/2TsSu4QQAi5T9Y4Fm08EkRaoEZZVZCoegXNb6qlSADmbMEIb293kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxT6Tezi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxT6Tezi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F37C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738024553;
	bh=dTut/HV5aKTZQ7FwXNe5bpNvp5RG7yeAEphh6mI+oBw=;
	h=To:Subject:From:Date:From;
	b=FxT6Tezi6J0pppfwFvwA6zrzWX/E4ATQWsFC3X2bu5LAYuqUKsKNNRvXB1dfJRZzY
	 JktOx6Cse1sHYH6a/9qNClqW/eOU/B3lHPYlnp0MhLXLn6u24uDF+ytmTSuwLsSSQs
	 /w2GtnmbowZbHUHLLZAF9+ugrsVG5A/TaqbeoA8iVTABcBlMU+sKZP1zADKCUvwG3f
	 FSHL1LCzZg7jtYShcdbXP84N0RTK8WnqhmcoWHOVMY/Ki7KkzT5IJ78XFi2HGk51HJ
	 pmqy0C3lqRaNndxQYWdKJjhuDDpE8tqF02PJ161bOYg7yc6zhxPGsH6ljEgPluSkrx
	 kUbRrkCQueb5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0629C02188
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173802455362.18581.17663244735295157088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2f38a00a5e5c7f45be516ac1d852062b87894ff159516e0b4fcfd16e21f89d6
Date: Tue, 28 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738024553
