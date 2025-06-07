Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21788B644
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749309594; cv=none; b=ljhtqXsos+MAZfrJvLOwRbGKUAOJbtAyBXw/WVVvQeP26M+Ofx67BWtQDMIA+ElVIycP+NggD3CZ4riK0zFbc8HejKtgGBLDGUws4Bp8qd1LdqfHs9Z9YvteadmplxNFWMaZcEb9vEB8DzkDFtX75gXVM5JcPkUtcYDTyPT/75s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749309594; c=relaxed/simple;
	bh=COIz1wGeb/dIfyXSryXee4iNbcyo0GGKJ9z6ukK+8Pk=;
	h=To:Subject:From:Message-Id:Date; b=H4b24dDoO2LYvtH8CddTQIxZNnsg1WnH/BjMwjqJItVi9djJWsc7z76Dhp3j50FYoEguKN91xAhz5zgrOSghbQkJ8cAXzd3vfqBMFEx3NbJRm9uzl4zZgD6Gq/rmCNF/oLTXmu5ng86BAIF4EfjcxEf4yCOfxZfoz2zcZYOpO5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXxVhzu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXxVhzu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80D7C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749309593;
	bh=COIz1wGeb/dIfyXSryXee4iNbcyo0GGKJ9z6ukK+8Pk=;
	h=To:Subject:From:Date:From;
	b=pXxVhzu+Zz8TS2pyTclizKD9qzE0Gu7AMYNs7TL8xbGVDLqR0adbsDxKVmfxSs8MO
	 XVyZ32GYXsBZUWp2WL1IqXfbmP+1LVxr0i3o91d7fgTZy6TbVY6K7OJlailYnoMZE1
	 xqkkmJgAfTNju6Nrp7VglihLKAHT8Iujn4YeT6HNWMtbARA2AqOnXCv3DvJ9liUINY
	 banxkK0Q1YU9n6ahz2+bryso941MjtKfUFGDxX7r2b+dj2WQHD21HsT4x8rywkaQqF
	 c3lHd4oakADy/3aL47Txy/j98F7YmCHj14qCDtAwNiGOOoCXlVx6amIj72PICl78PP
	 J993syh+W/Vfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9212AC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174930959357.10591.3386587929553507415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d6f13ee797a8af336fef7cb748d9adeff3b06b573684944286d0a26f0add525
Date: Sat, 07 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749309593
