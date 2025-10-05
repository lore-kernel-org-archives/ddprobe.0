Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B44B13B5AE
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759630794; cv=none; b=e+jvT9FlwkhJe20vfg6gEGPwBaxkGKe2KN6fscxrQYgoI2Z2l01AkszE8mbawTm1mynIFrdLz2bn47Vuy8gfq0XEKndAk1HRinkci1qYM4B+wlB880aPWqq/0bT0v8MRn4Uh0h7jk7n/Wd5pUom1joliooc3S1XHYXZYWaGUlzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759630794; c=relaxed/simple;
	bh=bAcPbtOmlCWF7xdW9ltG0HU1PrauU/5aWw4kdsF+AaQ=;
	h=To:Subject:From:Message-Id:Date; b=tAkqsPQ3wZJ5culxdKVVNe/0o7Dxyh/ibGNOfuNhz4Ad61WFZqW1vvcNSvAy+/y2Dag2JXYgp0h3Vb7UV8JQ1M2nGMZ4cnDFyuCo9I4jK8XuvjFrNO8TPWdoGYQJI60bgozmoOqaNCQypYhHVoJhZZW3tPJ/DN6UT8dHzaxTjms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuRh1cy2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuRh1cy2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A965EC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759630793;
	bh=bAcPbtOmlCWF7xdW9ltG0HU1PrauU/5aWw4kdsF+AaQ=;
	h=To:Subject:From:Date:From;
	b=LuRh1cy2qIUzafTvK5gmUMVt7cHTwtPiJVOCRZ3H92aCJqiYHT88vsi9TNtVD+Jd4
	 uAGwWo95DVljITH19+cSC4UQRy/0FtIKRhw5E8eV02u8Y/sdMgOAuR+e1BUAqDMyae
	 /jeKgFb6eR4aUggVOPpycC0M6ui6TNJt21fyXGnpqVhZGM+T9gSyFeoyMK+cgZ1B4v
	 5YGhOZeQWCjycjZ88f3JsaBNLmcy4WUR8QPg4HfkCu/tnkYsiyoFQekYtSerdPd44+
	 6wsO8tycqCmCZ72oT7yhbeBXGhlvMxdUDU0eoP9rW3xm7oZ3h1tg8HozsKg4wycDg1
	 Oo8SzRaGfFyEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9681ACAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175963079358.3811.17061080985465328316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a98b73e07fc60daec59bd5e6d408f5734f972f88d31b935f9b7c43e926ede9
Date: Sun, 05 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759630793
