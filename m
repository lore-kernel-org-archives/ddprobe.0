Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5726617C68
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 13:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717852043; cv=none; b=TD2m9xam/HMjWJHId8F2mcGet4ApofUtsR36H57bgv9F1CCVikcZSMJrKC8F074mw+NUEE8Cz606EtXR3HY8B3+mhab4thOX0me35VROyFcq62FnoZMAPvOeHtumJKvYDkGPOvkLKXO0+TY9KvssJeXQ5cQcpWoaOyKk77u1xz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717852043; c=relaxed/simple;
	bh=ea/2BfLycrFrZb3EsdVnbGhHwXVVIHAfLciN2knfL6o=;
	h=To:Subject:From:Message-Id:Date; b=NlrCAw4ikdmo376cY5OpwOjw73cGdAKXLZzCjzMEXIKO95IDYnAMc6k7YeWt0NhjCkOwYATEygWHvrZXEgPu8g82LrkqARW8YqxO2BLFenYx142Rf5LW5R7topH1K8YTc5+7gtyzUj31TjOZybN3krBgmjbIO/OTcVMDwOvu7UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fv/TSdE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fv/TSdE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D806FC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 13:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717852042;
	bh=ea/2BfLycrFrZb3EsdVnbGhHwXVVIHAfLciN2knfL6o=;
	h=To:Subject:From:Date:From;
	b=Fv/TSdE5c+T/08rfwZJ04CYzbJnhZvs7MIYYKlVDDGez4szfleD/ghCZ5xLM7Kfim
	 a1fwXP861itRB/5tCrKLTOo8nWDbmSBpB13CXWm81ImzeL8M67MT/ssuXrROB0ao2N
	 seM6X8HCfIXVBaHM8qBpNOiJCCC6Ohu9VQVpOY+oExF/19KsbxMIwO3wtCv6B4WhLg
	 ybfrn9kXXOS7P+0BdMF9SsUruAkM9skqpXdibDcfhkPlt2aQNPFBA8VMUR6XZhiiHo
	 n6dgh8lFCKQASQzVL/Tsv/ZYOb9SeGi1c7yXFQdJHMU1GJLX8Knje/pc+w3X5x7rbC
	 v5wFrtbzrb/sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FC1C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 13:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171785204279.647.17944478127518802994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f288dad9ea91b3054ce9f7d03b7a8e907f80c717232c235b5ad957a5c5092236
Date: Sat, 08 Jun 2024 13:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717852042
