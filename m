Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF5C2F260A
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764286974; cv=none; b=IoSoWyI60yxzXrdmIOcZtU6Cm6l/ayRmSVZkLPEJqzfRrIaEzG4TdRpfH3OSeD2FJiDv+JciaUq2QgLXm2Ga5R+Iz6rPzXnWAoz/oTRr6EYnncKaGDoYX4BaGHMcgueMFe2w/3Km2wzNd2016NqdsjpMZzYcDP/Hz4ni98GPgEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764286974; c=relaxed/simple;
	bh=0WUknnA0qgt01owiXOg+DNszeWUdV3kf/3dULVofeoE=;
	h=To:Subject:From:Message-Id:Date; b=qTg25vYh+1pa4zYTOlC+jRV1XfUMEy1EaRBhjhiejqjTzebRh+dTRFF/eYWqvNaM7Hg/1CE/k1CAsPhBMu6Vd/U4EqBPBaW52SMrgN13ZjsSySg1ysZsavXb8wWw2jbGlhYfyZJTJhl0IKSufbWs1wEeneaWByUcPb2jvaRcY/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Enh481jX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Enh481jX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83E8C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764286973;
	bh=0WUknnA0qgt01owiXOg+DNszeWUdV3kf/3dULVofeoE=;
	h=To:Subject:From:Date:From;
	b=Enh481jX1UGnLxou92max4cbRSXSmHND1ZG52WcbmdmmmcfDw6pSM7if3y6Px1iAx
	 h4oAxenlAu5qXyuMjXqMxZR+3vpKWbyHr9mb7XVgeJFlxf71SIBdrgfO8C8hVrAI6m
	 PgGcsr3gabJBtNlNU8UGTqRym5VTA09PqdO42xFobYojjxFmkE+nMhiAahnL3Qzg2u
	 H1EPj3dtpu6MjN0HIhutFSF4SJUi4NBnT6beLdoZif7CnChpy/JL6R04gPKiTEjNf8
	 ltP4lbBBrqpKDKFXXIjcunzDi9eqRe9IqudbftfSpgXUKJzYUu2haZYkq0VuCACRBm
	 6CTD5gysv0k8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A1FCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176428697358.8535.15523855290811131741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06e07c4fa6137c35303147a575aded48c752ef5cbd25b52c00d3a8ac3ef8a9c
Date: Thu, 27 Nov 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764286973
