Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FA81FC0E6
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753915194; cv=none; b=pMBemrXXub1kChKQme8lpZXFNM0eROMYybyGlT9h7lTqEXvOt5KFA4ttnBa6SvA8bYaVtM7cu1nNQ6kqMT0i+/djIz1PcdFwnQGXSEbl5O16BCTloz9qlo8voFjy2AEMpEK471kA9uckQYTmawNiSeGREzxd2BwTofogbejDrrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753915194; c=relaxed/simple;
	bh=iZyRt52AQ5zcdKJVwwffNeEUjSIH7wTRQKKstznBgdE=;
	h=To:Subject:From:Message-Id:Date; b=gHRssv90fLzK61nXsvUyPkUTfKJ0UD50Vc2LF/MMs6fiXrLEyw1AaiNciEJX49XUZpum9lAgUC1xatHVE5FGPTuhp32QBmfN1LIE4zZdlGJny1uJ+VRrWlvDuF/I61puNsjuKJ8F6svOknqVyxMg4i/kFMkCOp5IdGWNPO8Pjbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irAn16lx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irAn16lx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1397C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753915193;
	bh=iZyRt52AQ5zcdKJVwwffNeEUjSIH7wTRQKKstznBgdE=;
	h=To:Subject:From:Date:From;
	b=irAn16lx9MW68g3ay06XR03p9VBC8l0ZkoJc38U/c1E1uENr7H/F4ltxfLt5xvf7q
	 FnTUT97RisrxMPZsmvf2knzMXH4+jkbtc2+6J7JNTQxjT4vFFQC8KJQouTVmuKMPrU
	 Ph1ogirEpRKC0LoLr3+Kc3dvDvWArj6IUdr+8Dihvb0lGlRyZbhc+IS7EeMXke1tOP
	 Wmys2i5gGL1MBqdp0PE1dx6RPdGHaVbwWibvf8Augbfhi0KrTI//gqxomYV8tOju84
	 67fXqrnd+WBCWY3QlCqVf5IlvEw4sIffLuc56Z33VM0e2nbVutZVgLXx0PULMaguLn
	 UawBFCGXDPSkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5EBC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175391519357.15131.5515005394578486460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c68cfddb9397faa2cc7539f29bc2d8c2219be20607380c04bdd4acf8e35d5a4
Date: Wed, 30 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753915193
