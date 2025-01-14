Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEFA42A83
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736821554; cv=none; b=tEgs+IXuRWU+5c+K8w8JSpDpHd4DG2Gm/guYmrOYaVL4587cVmbkUXbWqVzBqmOQKzqt9u8XwDp9Ela0PfWnqQgR+eM/N5iNQMGYhBTTc0kIgZtcjWjZhDrlZuwYAAlIm9eGQ9m2w7H97XH6bd/Ieb8cAcfINXCbZtC/t/tIvlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736821554; c=relaxed/simple;
	bh=C9pQXnKKDCgOPF1kxWt6/AM6/9k9/vQM25851Vh/GeY=;
	h=To:Subject:From:Message-Id:Date; b=Llz2ZrRfkVdYWmm72wzQJuDIzo83akJs6ct7Izz8NP8qO5I96XtqYzTzvHD7jHFyBjJN/NDy6HbQjJM9uZcooSzVov0dSkXLqMS5TiMWPC2bSA4cSx7HTKqXZTSBz/F+PkjcLv6HhyO2AUAeEtJwyN4RD+pXkdq9U187t07iq8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYt53czh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYt53czh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1818C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736821553;
	bh=C9pQXnKKDCgOPF1kxWt6/AM6/9k9/vQM25851Vh/GeY=;
	h=To:Subject:From:Date:From;
	b=RYt53czhdfYWZxS6eeIh8kTDdLgaj2s9CDkKMyzTDW8u8hN8p8RLmD5QHlDz0/Ccv
	 abuYs3kZGEXIl+pFKSkNlaRLCXMk+PXAE3mDpO0CAbQUB2UnHssy06dC9/G3xjf1nv
	 IHtDKjrX3CLcUdOK3n/cK0jWmcNGNmv0A75ia81V1FPX7MKVcFttn9utbhcqwFMkL5
	 T/62XVQb47DdYIDXgnPcM5PCxBJfB+GYx6Gy1rjKKoNGd4kCqjuJWV+zfdLQNU1RvB
	 AfaE5J6PvzbZsnfH9HeAzgSwgNC5/e8Dk5B2PQ07ODtJaf5IGlsT/Pz7l0ywdteais
	 whBNH4rmkoG0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8942C02180
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173682155363.4497.6927856085218548106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc99c1eb11bf34c2b143c415bf90ee5f92fd195a870ca8f1e25c19a39402cb2
Date: Tue, 14 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736821553
