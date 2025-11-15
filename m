Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F37F1DF73C
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763193594; cv=none; b=AYSCBEC6Pms8BVISxyAdJXUlpV7ksn5nxYI/Oar5KggdEwtlXxG1Vy4ixN+ubHfC5m39/CJgWoTKekOnadeE1OKwWho92ZY7v9vIlWJ4/+iD/VYN77pDEJ7aZPXr50BWi9yndzkOi6duiAJ0sDm1f/Ens3CrQqTQ1u+ep9sw5ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763193594; c=relaxed/simple;
	bh=3w/l+xETFSes1+EcY3FjkLq81Gg3yTrzVDXhru7foqw=;
	h=To:Subject:From:Message-Id:Date; b=mGJ+zC5U7Jqdpv0LP/WqnNUgU/9PzddOfrzSlTpkI1Ryk9Eqj2CroNVUnKxTluxrvpGcGJC5WpFB9LaqXsw628bpEpeBgEbfXwPaExkyXRtSyw8wmy8FfI0+4P5FV/lpBqStHuOt4tkkoTUkM2TA8jDmfCjYAGhhQE9+y0mulzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6kWOugy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6kWOugy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0609C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763193593;
	bh=3w/l+xETFSes1+EcY3FjkLq81Gg3yTrzVDXhru7foqw=;
	h=To:Subject:From:Date:From;
	b=J6kWOugy5Tder5fAMzy5InlAQtE9Y0Lv9uKgMtc48c8NfvUUVlowA3i9+Yq9XaUpD
	 6sTwAmzM7aG2QeRtiqVlT6geNgK3+ZT3ooZuivI+tzafwB+CUgCTeerbyLuVTudkzv
	 Y1pFhop5kTk15vdndRNlESLw1DqBge/khnS55rl95aqWsu29ZgEjeSsdyT5M3w7e5L
	 4fYax7FimOSuoI/onOu1W1AG6rKfiH72R6ai6wh7EP9cxoOJI664q1oLpXxBIEY4vV
	 r84N8jm1L7PS2WiAS1xhzT9UXWwUmwhJcYale60x8n0s5EgDgEMZd9j/xVufVtlUot
	 stnRcnut7cw4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B588CEB2CA
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176319359362.10718.4076551119116269982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e441a3275b5cb460abbf8ce873d13a702400ee0a27d38a4a64b755e8da789bf
Date: Sat, 15 Nov 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763193593
