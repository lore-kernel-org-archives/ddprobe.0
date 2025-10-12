Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C561A5BA2
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760253594; cv=none; b=aps+lbrZ4rHQVcUpKUXqz00x5BASUSSUSMA/1XEhw6LH7zaipyzUgEWoly/45x3o7XVP8wInVrnVfHRcmx4VkwJi+ZpgdSM005AttS4l/6U7fMIvswRZ1DecDYbJ5saSHnqw2X43UHcc5cLnJzUOm7fj429EtG/Ecn2L9J00rLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760253594; c=relaxed/simple;
	bh=2MVv/rshJ+PxMc0G3GFQnOu87/7WTizPWTBO4X/IoQM=;
	h=To:Subject:From:Message-Id:Date; b=SCHs/rw8ExGUov3vhkGwPWmUI5XB+aQnSKU69QzZ0s6CSQ+JYfo3FVoL8HI1AleJ1cVcuCucz4YKdUY+c0Jwrs5pV8uAo4TtGr/hHioP8gmMUXE67Dl39Tn9r8gBdI/gpsmKZLARR9D/NDeJv/rLU+mdETxJN/lTWy9rixva74U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvEFAyZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvEFAyZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF4EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760253593;
	bh=2MVv/rshJ+PxMc0G3GFQnOu87/7WTizPWTBO4X/IoQM=;
	h=To:Subject:From:Date:From;
	b=DvEFAyZMt8L+czZ7uAC3/yqIMi/JMFlLCFP3ranlh4rvgObodtEAU1PreKZPAyQvO
	 VOkT2t3eo+yltVvuU2ffUGtbQLJy2/JvLdvoCzyKZBZ1uQ/zlblWpIW7oTlqZRcY/N
	 tEyNDGtc+Pjb7ZjhCGWrtHXRW2Ce/oI3aTMHxBlUxp8i4D6zTw8G7qwe+zrHP2EuD9
	 ugxthTlSPMlFs4qftwZEafmGgvfdXsSrJew7/caARvRaUmc2iruLgrfZwC+NYIpdAJ
	 jmvOfdxlNitxkzLgqaGj8FHDo/X9MWKCtJSyeiUSmFdcc5Q6NhBAGgv11WCSdtHHjn
	 gJk0IGdMcjt7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFFACCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176025359357.15374.1180583954338128291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e39d6d35ec8b3a348e9b6e37f6ec15151107f8f32bf1e5a485827bcfd3bd640
Date: Sun, 12 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760253593
