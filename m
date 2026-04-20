Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103D441C62
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776671254; cv=none; b=A9cSDy+aM5yFZhdOg13yVADusm3TOKVH0gwUH37TqSDfZijzbH9/Zx9J6E22K1jLlcIIMETG79qD7D8t8E/WeWKPh28aScK5ffL+FSzw+woijbl+pFPel0F1AOO6VADVS1WrlbW6mqGoV2HJM7oTYx+daXJgSuDOtXocU2Rod1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776671254; c=relaxed/simple;
	bh=HPsZRWNEJogf5xE+uB6d944RXMG3M1LZQ46v9KelWUk=;
	h=To:Subject:From:Message-Id:Date; b=QI4nt3vMardLDQImr0H35mVEn7vrFykKQ1YLcgh1zRigD1rg+0Vr16lRf3HlQmQyAPdndZIQqzE4R2gH+13O3cnwscuySKqOCdm3teKXJEUMjAxfPsoP5x8hV3zVKw2NwS7Kh0VA+z/+0A2V40jvfaz+FS9F1yqMW7jGM8gBaxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOMD71Mq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOMD71Mq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87D5C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776671253;
	bh=HPsZRWNEJogf5xE+uB6d944RXMG3M1LZQ46v9KelWUk=;
	h=To:Subject:From:Date:From;
	b=pOMD71Mqy0IwH8d/2bh+D/0BzuAxIPec5/CnKpdyHrZfITMJ0I1D3ggvIMdb5cbKe
	 TpF8mwei9PQaQaNPixr3sxHAqY6Vh7ltMXNNJUrvC/5Wit+5gZ4dVDaqe9i8LQNn9J
	 jNh8SEkbPuloGyqRa65KhTCGN0fRZKnwh3zggp3eMxl5AWZ4GTssL0YzRZKq75BUd+
	 EMWZWqBU/8oYutQzOE5YxMHYlTyZCza0RfacPe1FYSrdlQdd1ULI6JEbJ2XxeSg+F5
	 40R4YOHk6CMvRodWy02zCGoHRDaLdpibfiQPco385g5hGZP3cx8MO6vNIJ9H1YsAoS
	 m08RIjSA6m4qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AEEF36C47
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177667125368.28322.4625483774652279548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c1f9f62a3ed933884f6e3fb6b901116bbe7729ece0ab40b6620cc598e408107
Date: Mon, 20 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776671253
