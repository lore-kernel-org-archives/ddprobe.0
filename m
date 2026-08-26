Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455562EC57C
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787728834; cv=none; b=c+jk0VQjnRPPEIEJawCxuNGFA5KtTzw6WtVUIzEU+HN5n4G+Gyv3im7LeYupyh1lZczBpn2zqazpzv3YrYTuYmf0sV7iiGVuyeASjmeH/JOGPADRhCMKPwK4++P6BTBsSmsf5lUudAxBLY8hRZNaOQiU20xaeSW8o7EFfrAh7kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787728834; c=relaxed/simple;
	bh=qq9DpARI4Oh+8/HugaD6hHBLEM4jgM3p5l770zUMt0w=;
	h=To:Subject:From:Message-Id:Date; b=VHBuRyxNk0Jrxldg0UqrCXAv6I84UQaPu3OESzeGFTrS8dUF79B6+iC657b7RBW76yXp/t6cCX34gRd8WGETSXG0AikNADJNMWyGN44hmfiNloOqxGl/DfObjkpy5TKyoDAvt/7sbRNM05+cJ1yUizkZiaSJ3TzMzHVFA1H16to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SloJNFR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SloJNFR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C0AC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787728833;
	bh=qq9DpARI4Oh+8/HugaD6hHBLEM4jgM3p5l770zUMt0w=;
	h=To:Subject:From:Date:From;
	b=SloJNFR/qt8Q8QLkXTafHRTWGcCAwk5tUqiu2gYz2DQEOowbnG98kfLLrylYiVxYa
	 EeqDIdsaaQcpt+BcFxN2E0iOK7Qht/cTDfhfThpCOYudTPwlF0zygM+OzeMp2yT3pz
	 0o4p+k1bNCj7YBXSxMbL6jdieTdL70UU/OJxyibpVZxUUdEZE7FnrgstdxeUmX8awe
	 Y6h6Q1tyJu0ZjniN6pgrs5NScd2TUopGlv2cksombxLxnOm6LhRjM5UQTktoeO/EfR
	 WyADADgle5Fulg+Tz5Xg01ZvTlcxF7zpwd2htMdT6kjO0wD+4HpLG479JfhvcA5go3
	 1hmBXy6ndGHtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A54C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178772883369.4231.8194449780148386402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa6e69d4385b7c62ff283c6c05c36fc4d1f959de6f7f4ced82795c7138baad35
Date: Wed, 26 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787728833
