Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B0A1CAA85
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760581794; cv=none; b=urixEOhJ1oaL3O9JuuSbg9rBlYvpzusgrwlCXhqEKeNcb2qEd8TzRGOlV8yw/v0y4JiPtd0ctNnrrRbfWDpJDRF95Ufg1J8Xn0B26hqQ0vTuk4TbFLhZuutwiq9nP44Y7bTIvRYdO1aHIVIcq74uQfxCXPeZYBeDfypziVl12gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760581794; c=relaxed/simple;
	bh=AeRMp5goRXkvaONdUMcISGS4XNHBadAs4LslJYvKC/c=;
	h=To:Subject:From:Message-Id:Date; b=LGWYfZaDcbLMSEWL6EGT5w0V28emnFF63OaG790mtgEGvPR/nZtJ6+pZ6LDsswoRyNNfUbZem7X0ZalKFKArhzcK4H5fS8gELTIbWESFAlSUEFO28RacJxQzP0PBbkZrWC+ZemMvrHq4/YaQBN4zVEesiBJ7tgCxqMXdh5xE/V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQOIuJXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQOIuJXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13B7C4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760581793;
	bh=AeRMp5goRXkvaONdUMcISGS4XNHBadAs4LslJYvKC/c=;
	h=To:Subject:From:Date:From;
	b=vQOIuJXEItWVJnDkYxQTAH0E5ycHpBlH2hqdXNSUpW75wX5sQNtdADrlNwYshBEB5
	 rcpgLGGiTa6oUUrLs343MQYg4q/7nu4OblWSoyoelkzcanLdXuIFs0WmLMlrQxsWI0
	 /SjTZ/NNXW1Xw/ZltWag5GE1p/BOESNlqGAp5ufNqiYCaCrAxOrYukjcmT3KXGXavg
	 CjQrlpBx/b284gAnGLjtl6QwsfOZvNSp9LxCcuZg7k0dQZAJ10wJT/szXtN9MpeOLd
	 lDaJDBwRUaEeJCX15YQGJjIav4LDAZX46Z0TB9muqBSJHRDcgxqvoTrhITOmA92VcM
	 JKAnpsGTSCGTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF5FCCD193
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176058179357.5415.14786709271849519040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f2e69c3dea822941b81e7277706b84544ee6073bc8584f0c9bbabd100f55b1
Date: Thu, 16 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760581793
