Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9D24F30C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790074834; cv=none; b=Q77ONhVOu4t9aWJTqR3Vc53dZDeoqQhgAz83Jd+h2ambB1qvSzVua++wFQ2u3vkUPx0TLqdbbk85/LVHG8nJkvXiQEZnhn9gw0gIvrCKmE4xKVX6bQ76vqY/eMDKt3VPFDVvUqP+neQiKr1uGaqTgGRRTvBeuyOCUN0KbbreGi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790074834; c=relaxed/simple;
	bh=54vrnyvOsxZ7hIr/ZRkRk30LErV8BFczMzoJwiCK0HI=;
	h=To:Subject:From:Message-Id:Date; b=lq/8HTBDo251RN09wY4TCzAE5LD38JJarXBda/QUSKIuTZfK43WFfIa9yFRC2Z1Yg8dy6Kx/aB/fWDw+qF+Fcnur9FoXj08F5ZRlv7+Mk/5q9dYN5xQRL0AvqCVldaJ86fTUKLKEMtP1ZKBa8DjJgZ67YudB60VIw16HUn+vMmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vg0NVddp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vg0NVddp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B37C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790074833;
	bh=54vrnyvOsxZ7hIr/ZRkRk30LErV8BFczMzoJwiCK0HI=;
	h=To:Subject:From:Date:From;
	b=Vg0NVddpLgFi+npw66AFb7bC3rGmfjzoeA9H3IE6W1qmLDiGAPHVJ03/9PAX34ZcM
	 NmRNcCE2ZSoFKDsbrXnGgNL4YMLJ68e1c4zXOcPj3KRTciAOMrPR3GwlTvAuO+SJ9t
	 0x2ClyyHsLtAmPO6Fu0CtTxJ+XrTvWxrYOgl853FV1jgpyzlBqdcDwG5PF7HQ/g9Gi
	 QOxqzaPr8bxKj1U5c9OyNclHPMUJ+TC+tal0KpXdrgbVdbwmjPU4Xd1Y1cv+KlgzLK
	 PQWpQfE86cO7ge3noWWz0+iV0mjV1ygVZHvr1bKol+kmgX/TzXnEDGqds8WS82M4Xp
	 UoI4mELCNjWkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3F6C982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179007483370.19250.9082606825450139089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 014ac57730ee626109b7e9925fc3f179d928b733bc4e576d0288e28ed9fae919
Date: Tue, 22 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790074833
