Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFDBB289E01
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750100393; cv=none; b=TdwLbkU9ScSVgiULbpYy2LJBNuf7CC/h1QpxpHVjbWvi9c10D5+7ghIoi9IKVnqa1n5xHGXpexEv7OxfDRZmgvo0C7k6DhmbM4IBGiiKa4PDYLKBXKVfS7HV4tgoiNDZ/aApY8WufekUQo1qcxZMliteuAQQniE+9J/z0ga2YAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750100393; c=relaxed/simple;
	bh=O4yPfFQvGigMi38/TECadIWPnxlZYvhOi7QaeGLxesc=;
	h=To:Subject:From:Message-Id:Date; b=eV/xtR/xjqv5YzXSZGfqY4NtCi4S23SfhDuoKrexpe5m2iNX6/kpbn5pWxJZYL+RFjc5FLhOP0pMouRnSYaCSUUfeNoCAuTLBJkXH/BajF87v4qamdiKjhcjPgnmesLfCcy1iA12CmvfjDeCf/9GGTbES4nRzwO8m5sch6eZRr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aiPSNC16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aiPSNC16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5952C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750100393;
	bh=O4yPfFQvGigMi38/TECadIWPnxlZYvhOi7QaeGLxesc=;
	h=To:Subject:From:Date:From;
	b=aiPSNC167vcL4MmfJey8afKxArYgJiu2uPVzvl+MnpE3WvQX5IRzYA/LJHrqSZkcU
	 ktvLefwNz6/vVMc1q9E+5TfCgCSLz9G0kUvu7BDoG/y68OyrCOW/3i1T3CaOJ0tb1z
	 CZbKWNsT7gWW7j7bB5SM13ssL5dPQ7l78gYy6PiI3OQTEAGu5a6nONW5naNLx6qXYj
	 FYLz5IdCNBknmU0Ymz1VhPpqSzdp1ovE/gkKHijvqJr1KCHgJE+QVKgjaNlaJRvfVF
	 MY3ykgPLUreCT82Zc+ozZro0YYGZ9g5Oe0mc4AoVxnenE5HPBZADA12/Pnbp+m8KaM
	 OlOQoTTaqAy2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CD9C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175010039358.31806.12786699985389872318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d8179e51e84f46b21803f2ff119cf6fc9c0a840927ef11069cd4ffc2430b34
Date: Mon, 16 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750100393
