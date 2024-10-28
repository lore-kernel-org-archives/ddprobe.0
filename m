Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E001D2796
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730150754; cv=none; b=ImPCU4NFyioh8MZs8Mhvgbfx6M00K1FSmyFf0LM/mZeO1ob60nZZwBlii/ElXlxAJwj6x/br6bIeDKw8MChKSEc+1ixnvaZge14GL8ljlkX51hfdAjr/56Zh6Jt+o91Hya9jTqKSNrIVZ9BUQaQPNzdfIq11EHq1UBfuvUOC8S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730150754; c=relaxed/simple;
	bh=vFUuoSi57WakLI0D3iytkfnIeTxqHsbuc9TkQ1YSNk4=;
	h=To:Subject:From:Message-Id:Date; b=jZAwvDCGYcjKbP1xrFktMTT4OIiaPBSR8b4ddPjCO1PLcuTUGbrqG9CLz3ydHrQEoNyo+144j/gF9wVaPA6iMTY3rDL2HK/ksX1T1nMEGp0wUH1afubtWUVZVQHZuQK23jRCry+l7V9UVeKr2ODm9Zm0mIYhR63rzvl+D3HYXJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTHkHM9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTHkHM9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59B3C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730150753;
	bh=vFUuoSi57WakLI0D3iytkfnIeTxqHsbuc9TkQ1YSNk4=;
	h=To:Subject:From:Date:From;
	b=kTHkHM9XsbnWIcj+3k35ECg/UzOyf6PjaQd7CvdjOqwM3H8s0gP2K3S/S8m4WXEEg
	 ye7U8lr3akN2IrFe1levPlLsEDvWpvEwCXif5BU+6SzrY0pPYszE2G794rDtOvOIHy
	 CTDl8TZ7DQyRNiLRE8cmPsk9jzMNLcfCC6G+O7hkBiBq47kStfUMaam/I97pgoYp0L
	 SP3mrcXO5rBL7qsO9xSVo46sQuEhkU3wY3W2wcGG0bt3NhVnnBslB2IivVOr9jb7jL
	 Amoa4PCqMR9Zw+T/B1UlQl3qb9esJnOWv9JXsBYA09dG42iv82zqVFbaWGemXCgz5P
	 ZKAj074n3i8wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC56D5B156
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173015075363.30967.5495551495429554505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20cc3da2965b0775db67fce44b55a189ffa55ed19a1888b387b17bc9e9a01f04
Date: Mon, 28 Oct 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730150753
