Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B8934A3A5
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 08:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779696756; cv=none; b=eGFL4AbDAw+iWHvbEVF9kNltmc/YLDIKgWoNN7CqldpCrpzNGsJCpJio1nshxm8S7DlKAa3B+1ETmCoas9p/LFyKDKjtwNHHwdV0ndkU+9MSg/SgeRDYSSYKcD/3aAG12oQVcJpC+hzay03iCK97ZGGgNsoiX7doRBlAgEpmaKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779696756; c=relaxed/simple;
	bh=GZfwPR1BFXqBt6zKNb4Fy7yYzXi26godzwJ9yNjbzvk=;
	h=To:Subject:From:Message-Id:Date; b=XBUkNVYWo7wWioFoOZjSbJUlRD/IxM/xsK0SwKEFJ0tWggTbzkzCjgAI+LmuaZni7LQY75EfT2qsZ/y52dEoLZiXbJuicA+WBaO3qEAnuOsnuuOQsp9L0J1wNnENsorv/015gXBMNk0cTRRE66UV8fj2uYGhF+hON6gaCS/QQbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t11oNoNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t11oNoNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF2FCC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 08:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779696753;
	bh=GZfwPR1BFXqBt6zKNb4Fy7yYzXi26godzwJ9yNjbzvk=;
	h=To:Subject:From:Date:From;
	b=t11oNoNtW7Z3Epa06QYNcVdV/3Bh4z6y6ALd741rud2sNi4+5ImjLaB58elZfrCqw
	 DYNv9VnBijlBvNDupTIgpUGoRkz1Mxglfj0JkLc/bSoyf1/K7EUOgWuJYnMkE2XBpn
	 /SWaiY9pPjpNDqSO2dKOmrJOMVqQmXhknKaHUvMqjXLJ27QfUYqbJGG1t1I8fOUAle
	 PoFbfmbmVUyVdwoTaIetDgtOAPESvWRphJXeBrKcAyCaCoGzGwZvP4gn7S08JhUMeW
	 saXaxaiO4gH9fBmrO9V6F9yrIfXQBod8onfQ8/t2pvfG6fwWyS7F2TaahBFWTha5sQ
	 ACK5uREqx76EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0F6CD5BC0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 08:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177969675368.5387.13170879046467164224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889cdb2000f1a7c2417a6e05324ecc7a1084f927dae656da22f88f2818565fd7
Date: Mon, 25 May 2026 08:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779696753
