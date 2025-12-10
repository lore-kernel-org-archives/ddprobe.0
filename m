Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFD123AB8D
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765389174; cv=none; b=P+NF52lQZ9Caafm8KZnmeqFIbKeMN9pfpBXjpL4Bb90lWvmKuBlb7NJUHL6z4Ien/nJ7qo/v8GKwLMaDkw/Tu8kcEM+JvRaFAtACA+tLnay/1VEDMTqj3N55uJ1LcYRpexUTyqmZvnKmX2/GyxGiDqSUeYoR/YoIfpU+ItyhZUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765389174; c=relaxed/simple;
	bh=OBj7zaSNKzWNpP/rIoVMreuzJ5Me4W3JwgKzTk1ZyXI=;
	h=To:Subject:From:Message-Id:Date; b=l9A6eYB5fzqG257HepsTH45sgq+D4zjgtcesC2/cyqqwaaL7p5lVHVvAYL7L8Hg6Cf+419ANPDtVVZulB95eYsJnurQ6cTroXqkJuUFQU93mloIuhm+FlYkfFnU9iRlMvpZo5PMaP59mJZGm0Gn55FOXmnn+Jck9hKBJyU3RrGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBMiQtHP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBMiQtHP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3EFC19423
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765389173;
	bh=OBj7zaSNKzWNpP/rIoVMreuzJ5Me4W3JwgKzTk1ZyXI=;
	h=To:Subject:From:Date:From;
	b=kBMiQtHPjHq228gfrr/JQKnobCqK9+yJlM/OEoWlgQckk6vpjtOsZ3XnrSwECCi+A
	 sLjuf7sfnpJuNRjhNNqe8T9JLmS7pe8HuMJl+CyBfseyaDZbtEWvmj/5UDOSFAI/ld
	 vidVigqVyfys6CZH9cCt9uP4ulCAXqs8bC94atNOek/f8fU/TCC87HwFbGOlK7aBII
	 MnvhJu98vLI68Y1b2RQOihbFFEkoxrAVPJljIIPkv8kT7b12yJdMSjGydaAYsHByXR
	 HK1WzpzleQz6mzR69mC64tJeooXDPKuCUQ0aNswiwrgy1YWirQ7aV7lyVrEZ0Eub3r
	 hsrkuyHxYTUpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F8DD3E761
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176538917360.904.18285799997573208925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ebaec47d016159442384901a3b5d867df3025be81a36147844a4087f08adffb
Date: Wed, 10 Dec 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765389173
