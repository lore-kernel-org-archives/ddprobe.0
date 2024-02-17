Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA02149DFD
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708135097; cv=none; b=jZuCMDWcN/LdKwylfAtblKfc6uhJWFltMuMpGHddvR4/hnShaHINEGiXKH51sjc5qpHxcwZHVousv3rKqZPXmOcgIXgqrVOovZbYb0PoUrp4epGtuRTEnoab3/2X7Jmb8T276DxE6RkV8mXFt4j+59cC5LTCIXy8EHUMsD4P5Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708135097; c=relaxed/simple;
	bh=ocVENhjDAFDrKiNicBfXqWkN9zcRO1HqnZHlfY6/pAY=;
	h=To:Subject:From:Message-Id:Date; b=ajx58ISikso/qLgQcxhojihIfUFTGMQQt1oI/TKAO0uXq+9SLePSTdG9qh2STew4d+QvNn7aV7cuW2Q89HDESQVKloo1EtHejJeyUD2Hg6lhR+WS8hSYWfriMEU0bT6ahL393+3vwa3gnA8URyyo26OP2S0Jaq0Jn7/CycOcIPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYodl9Uq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYodl9Uq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 921FAC433C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708135096;
	bh=ocVENhjDAFDrKiNicBfXqWkN9zcRO1HqnZHlfY6/pAY=;
	h=To:Subject:From:Date:From;
	b=sYodl9UqZtbJzepMTps1xcJv+byv/SIK7tMB8wwE8uYHC8B4xWsx4nmFyWyk5zged
	 H3B1WHy6NAIFqYcAhq0lO1NzhAZimR6OpmNQaxeb3tvx6o8Ata74Vza/Ja4Vu45RzB
	 uwjQxcrop8KDxUcomMDApvItH0rBpoPJcJ595EbrI5faDMSWs/HhS132wx//yK87Vd
	 cB4QqJJpDsTrf5ZI1WX1b6YIyK5EsP409mGCF8cOROPIB+wQjLGHbQMtXfjjDI0v10
	 CoIuKgpaSnLPyCK90foK5Ib9CjJEUDsUdxnDzCXTqjLp+wXHV6yrjyHoMSm1EOsnnY
	 vzT8VNiq9FYNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71A58C48260
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170813509643.32586.6267180105357149339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708af02bb18d4976631b55c7ad3c5d0005d50c0f7dda84463a7756982cb7bc04
Date: Sat, 17 Feb 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708135096
