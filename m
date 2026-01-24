Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C53214A8B
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 04:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769227434; cv=none; b=M3e08fDBxQjXuYLtQlsMzO+/lcnm9ebHZa4JDdxFw/E285ZSnmWiyIFwSQv9lXFq9ClXfAR1P/s8xSCAcf03QbNma89N1OqplHSyEjL444f+NtfGCixefc3f9ORU9DfNxIKb4VdhQB0iAeInKpDGIVEoohvuqmAQpyBYe3mWsq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769227434; c=relaxed/simple;
	bh=imvby4mjIji2wR5hsMJUjy/MXQPTiVgqXg2HWogwQMA=;
	h=To:Subject:From:Message-Id:Date; b=WxMEJHA37mZlaP9dRvBBdTdAoVvGIiH1TjzBj9Amf23aUMg1kOEcOjUrEfz0Cm4oEg0Po6kwFgxxUAIBAG9WMhiAvAgIY+IztsV+y2IgS4InTQwZJbSuo8+JGsi1EFK3r/XW8szei7a1PL+uUxyjfFqNVMdXpCiiV4NJ5js7cnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HX4YCh9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HX4YCh9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65F3C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769227433;
	bh=imvby4mjIji2wR5hsMJUjy/MXQPTiVgqXg2HWogwQMA=;
	h=To:Subject:From:Date:From;
	b=HX4YCh9iMUuzLyxY0doWEX/cz7wZoJ8ehZfuPC5CTKLph4650V5GpKltDLDPKmrDr
	 Tx2XpfRPcjFXmI0WmIyBEC9cZgQBdBu7S4DLyI/0jVwke12++fu9Yc6AUg47DWF8BE
	 GwVuYBAgUKG4cuUAwe7l2Wof8iVMH2qS2smiwlMj0LCpttH5IJzfjf1i+trhajkt0O
	 0fGq+wXkO2WxoQUUsJZ2bO3qYNP03sFz6jZxDOiGD4Dkmckb9tZYUmNOvV4EoUWjTC
	 4He8gCpUYDxPYemE2nYUqycE6YXulVznck8u+nOmiBXkQZ+fqv7eMuGbTM5/KOb6kT
	 07GNuYl459+og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98093D6CFB9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176922743358.8627.1792008973650023054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8336d1bf76a1026f475e4c04e1e7d03d6c199fe24cb0e76eb6e0b6750aba2cf
Date: Sat, 24 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769227433
