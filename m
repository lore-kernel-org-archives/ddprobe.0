Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F783A7F58
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787020834; cv=none; b=eu7LH4EUpp3asHxSxY9gBnyZHf1UY8qptNRbg6DR8Xfx21vRf1nrY6KNQ1mhq5Zts5NyTNqAL11a8Kr3z8H16RUyyKaMdWWorXp652h8Ro52VYIE1XwtuflSqgspe1FqzAVdeZ6+mif1xRRB5UqEm5wKmqKqr7ll0cn6UNCMXSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787020834; c=relaxed/simple;
	bh=8XCA440uO8peRxwN5LAqaot9Rb+5WYia++qjDGoB9Sc=;
	h=To:Subject:From:Message-Id:Date; b=BO7k+aW5wE4IEz2eXVX20StwQYRq3S4ymMRPSqmyO1ALxycEIGbtD6rd/Kmo4wEd1F0faXkVwsbyGGlJvcSM44C116vkCXxPyzNqdapnzW1HxpAgKELF2vVi6f7shhX11j7JBjNAUuquSurRUnpiXRZQzkDvcSXMkhcN/duh/Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUfqxbFv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUfqxbFv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7176C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787020833;
	bh=8XCA440uO8peRxwN5LAqaot9Rb+5WYia++qjDGoB9Sc=;
	h=To:Subject:From:Date:From;
	b=LUfqxbFvTpmTRiJDNrVDDdTFJHHAqYXjT/wbMtkeBG/DItFvFv0m2MbZCAGACrXof
	 5KqoNONd5p26pBiVgIOzSaJ0vui5vCXRfLXfJAzFr6uBLOWLxVD4FNoM53G7Y7eqbY
	 Idit+OuhXw4LqLE4FqbxKpUAIfcYno56QH25kLkktEYpt87ip5Qk3SjB8GhPlkDTaK
	 4DfaJTA8AYDm46elf5Mb4EqdtJOFKa9rNbBRLvYu7Upri3gFXbakBOKdWejnlSVkum
	 i7Iz3/eqpgFBzWIho90mqBzsikDh+gABzjGVdBiEbja8ZkYoXXwuNMNVDwX73FRNvO
	 pSg5ED6/c19uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F12C5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178702083372.10229.2842994784292367994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 670199af4869a94749f1916f797a011731836e5a4e7ccf8faa813527658a5bf7
Date: Tue, 18 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787020833
