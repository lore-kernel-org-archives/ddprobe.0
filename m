Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54D11CB9EC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732232753; cv=none; b=Is1L5z/lYQlvFhcaA82+M5miMk1zYhcO2vGpbzHzkSuz+cM3C8ulh31m5VcvvmczaLkEpckCExtYxpdnVxGlERwZqwk58FO11D6EmPGvLsQ31PJtybMyXBgFN4s2tj+KPYuqbHUvZGavuUwmGebasqclmYgxdUkqXNQhrjy5Ez0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732232753; c=relaxed/simple;
	bh=KZ+hYHZZWbeeZMzp8Thvq5Dq8MAkjpjlqKSxR7ji24o=;
	h=To:Subject:From:Message-Id:Date; b=j1qdBh5KzavcWiquBg2L3Kj/hXKsqUupUvvY2Veo9I27SkScagjB9q2ycN99IG5HR9vomizZ8YO1F7KKA+LbxfW6hf8+9HnqLqPpTRhL2ar74M2v5wvX6HOx8jrwlbeEfOYyuLCXjHVIvzjJR4ZASFUJFu/ZhQBYchjv4WJmrVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o20DB1E/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o20DB1E/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9137C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732232753;
	bh=KZ+hYHZZWbeeZMzp8Thvq5Dq8MAkjpjlqKSxR7ji24o=;
	h=To:Subject:From:Date:From;
	b=o20DB1E/FyL3M/BQld0fneRR32gdZ4WOsapNO7K8HvAFxplFcC90qZ7eyYKwNbbC4
	 C+oDtdpcgIudbQs0I3XKEanpjpYhnjRrcYXKJoPDfuL0G0xaNnfTKIJYCB5SOat1Lj
	 aGWhnMTTtsjGAgfww3Htv0i/d8iv7SQYFV44XAjOqkc+hNYKoB3JMT1jdtP9Zk96dN
	 Rme5p3goxkeMHKSBYP2I5QNWUIvPiwLVefiwOJDyuKh+Cy3shLtyUgEwnn/0FPZoe4
	 Z4AgrM76+Qf/O0g+ZhdLxR9T5pPTSEfAG0NfAPbuTv/FeHaKa3/gTohsTv+JlCppU+
	 QomzRvmgUG8gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AFDE65D03
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173223275367.10517.14903468829127181737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0483a5ed513f0487af971a90bc877a1666380f02e1f7b2733d0ad80e778683ba
Date: Thu, 21 Nov 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732232753
