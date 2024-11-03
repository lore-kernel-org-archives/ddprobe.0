Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4522582
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730642754; cv=none; b=uR30vj6nRKJtWOtft05GAWecGCcB3QVj7hKG+dHrEtDpM7ClIy2j/+gomOL1MvZjZXg9x9+NpW2ai5e+9ocnIu0/g449+yi5QIZ4+GufN6Awu1PEhYEna1cGRy3dudOzsynAMQXBa4n6cujbOtgIICLy5ZVC3rg/avEucIS1iNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730642754; c=relaxed/simple;
	bh=Si+yhDMDnqCQ1t26oAe1s6EZ+t0DaQTYcgJBE9LdMHw=;
	h=To:Subject:From:Message-Id:Date; b=KwsJm5juz8/F43I7FSUpabiugCigVRZwU8w31bDOS1NCTl0tuk4lOzqF1ldLtvFPbkCEyHJ52kccumIldGETS74FScwioFoYxKsyDkKGbE4vPEZZZRaqSxfQI3hSeps5gDzZezh42l4PZa5suxecb24cfPNFl/YhHm69P98/OdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsz4weME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsz4weME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C1BC4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730642753;
	bh=Si+yhDMDnqCQ1t26oAe1s6EZ+t0DaQTYcgJBE9LdMHw=;
	h=To:Subject:From:Date:From;
	b=jsz4weME0yxgAYjQlDvserP27RGlbiwOHqP7RzEvbD0jHjtouupUsp6l39Og/CFBC
	 6c4BbrxMuX/AW3DWC7glQ1giHmspEZ/8+RgcA4xoMubP3Zh3ZFiay0dbsq9sWH2ukL
	 9dR0gCVncO+vFUmZTUkK9udbADL7EpVXR35u5jpPSHBKzA2UqxhzzJnOXCMR4/WrTu
	 q5gf/vhkIOhep3qo0n78Rn+X0kcoXUoYoBdZEqER53fimYcPQ+qD7lqWgam5yDKNj2
	 7IRmHJokW25gi1vhCnu8iECDSeuUDi1EX2+IarAvjBSnkMZsQl61T/C6ryH1rFqqnl
	 VmcNPyh5plkqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A05AD11080
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173064275360.15825.8386394695956929256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56d906af2ccda0f7d4b95eaef9f8e861eedbf7dae61ad6d9b4ce0d8bbfcbf5b
Date: Sun, 03 Nov 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730642753
