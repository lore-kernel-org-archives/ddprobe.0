Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFA17260F
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 12:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783774114; cv=none; b=TM7/tpDvWIQQLfkFDHLJICA6HK4VOVogvcgp1aN/DW9tNEDYMZtxnY7TLmFK0eDb0svYOaBsiEQQbog2SvwLrgPA9h1z/IAftbEQxEF7zSxzH4mRxZF5lA4uepTH1zSNIykLpUIJ4t8IJjzVedWOw6kgEMcNR3wV4Zb8oB0v0A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783774114; c=relaxed/simple;
	bh=7Aae2Q5otJ4FckgKIw8Dg8XuMiCKYk7yn2Cwqfr2ecc=;
	h=To:Subject:From:Message-Id:Date; b=O7JvMNH5Qs2uuLnzfAhDz8eHGOSLbIb6U717B1/RhA6lycEhtSvaknu3JFMQDRnbaI2DYFVRJlij7Pub+ozbdzV9Jsv2fZGeESh7c0kd/yXHXamrC2CcrGn4lA6OSLXwDaEnCbMIpCIeSk1UMMHwkDeQi6OIQuXUpx9vAmjClhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBkqGwB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBkqGwB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BE0C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783774113;
	bh=7Aae2Q5otJ4FckgKIw8Dg8XuMiCKYk7yn2Cwqfr2ecc=;
	h=To:Subject:From:Date:From;
	b=cBkqGwB1Vyp4PZ3nY9Zx2bZ5cpDA2QtEDpTAyQky7nLAt1PIeK4FDEuLwzjij6zYJ
	 6WsylDKSlunv6EDhRQTOty7q5OlNlwFvS7EU+78bYzlJ2laZvTSKQZf180R1QqxEs3
	 UjyTqHWAtQcY6LZAMizw8xRV1VOx2LWiDeUdINtO8nSLnT11TzrIwAvz7crUmFA09m
	 /YfXy0JX+RZOQN8DlDjtk8AYHtrb+G7N/HFUKXMhRMEqF2LrDN62ZH9LmgYzJ36UrO
	 Xo7OIXBUYJ/RD/H5mRsirp9HjN9rYNZSdJ7G41t8FmsgwC5FM5yIQMBYAFZf1DsiLX
	 Sb+z0MKi9r6DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD836C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178377411368.25365.8878083257566512727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 057ea310e8198a81b7b92f78b58ce814b74d673b7fcf7e70940ac45378308efa
Date: Sat, 11 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783774113
