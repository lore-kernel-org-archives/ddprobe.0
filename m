Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12ED91D63F0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770504234; cv=none; b=jp8BgVLSAgBqApydnVcdu/wg09J6JwKspvqN6jQuGoZPeE7I8ipAIsgTsbLMm9kirQ0UomQ79t7KEdQ4n3YpEeXaKpACIj5id1mueJ6beycDKjHfE557IFGEE9GOFV7MvNeIfbUH6IMS6ianzbLuG3pluGzZ9JGlmDbfx0WhD3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770504234; c=relaxed/simple;
	bh=PscmWWMkehwCWbItczl/2KPL1FonRfu8oKw4aZSiRDU=;
	h=To:Subject:From:Message-Id:Date; b=IOBRaeqRYex8CKAUQaLJ4BifCNoE5AzQjW1b89s6/3SntqNRa+9CY6BzcYBNC9zb+M80xZh28qgAES/PUSycQGQMgo/oPdTTdsfQL+yyXYcRlZbkzstCzTp10tNt2rRWFr2CAFPQJt/81DUu0adP5/hQYm2/pvqEP4K6rTd6Hkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PE/Lswnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PE/Lswnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B682BC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770504233;
	bh=PscmWWMkehwCWbItczl/2KPL1FonRfu8oKw4aZSiRDU=;
	h=To:Subject:From:Date:From;
	b=PE/LswnlJy0LquJJH9DdG1uONUwDx6+7Oeflw9ukc+pIDf2Sw9QQrsfMmH+fha/Ah
	 E5RhuP69VVFoFJRyBYlS4In8Pyi4JOptl+WzvOiUMPuFb8wSxVcQZQgRIFKaM3555p
	 Lm1e9LfHOGHuIGousinEFfk4AXA0vDprn0KjTvyzRXg0YRqXQrPE/LfBUN4otR3xXW
	 67UiXboRIIp+EOWiAjdJIUE+RSPFDjjBvpQ0LcAHsjMYVhl3ckjG/qRa41T2F5ZDff
	 U939xLkn2YkkyBsAPEtvFz39P/rIXlMktisF7tZSD45LiRJpkKSNHl8eBo6XEARAmv
	 mU3+7X+ijihSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F888EE0AE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177050423361.23115.877796749096826628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c27cd487dc7a657ea73f0ac97da0be7926806576f0b4da7d20e9f910f435f2a
Date: Sat, 07 Feb 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770504233
