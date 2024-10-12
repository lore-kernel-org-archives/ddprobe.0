Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EFA1B969
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728755154; cv=none; b=NuA6ge8uvjfYW0j5kR1NTv3tV3pIpD+Xtv6b0fVRQQahKZTVOeeV5uvO9KemS0//tiru6Eze55bIVtHjTjMtmtO3VguuVwAucuxNrhmqmkI1lsaeeezRlEdi92/rZd37qk/bW6QALgoKxZ8bDWRA1fD+O2ldmJ+ANJIde8QWfWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728755154; c=relaxed/simple;
	bh=xAiB93RVlERu8O9o4IHM2yFVS7Q8FXORBRzbYKp7+LI=;
	h=To:Subject:From:Message-Id:Date; b=jAgLoRIOqWy7uWcr09yYxsPAFRa4p+Ja+hBvg+E3vek1wM+8eje9ePz5ysF6XDokpu+Ku5IHMVB8gZeBUAeQHwLhsCGtPXSrKHYmAnPGtqi3ssXtrFoUQTqmyjEGWeoUHpz2LV9Rc+bTx8rSIv1GlttTs68y2HqE/8zYSErgkU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4EYD5YS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4EYD5YS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB315C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728755153;
	bh=xAiB93RVlERu8O9o4IHM2yFVS7Q8FXORBRzbYKp7+LI=;
	h=To:Subject:From:Date:From;
	b=h4EYD5YSTW5IORy16NJIMaRZUPdbsnYJoHK/4xaWcXBD2WKBurfjDzAyDKUkBcd37
	 ziWUUdRgEcRpyHjhEVjdNZT4HpYkSQX2UKq8fFU47elimPeRlvAqZrulZWO/dxtuss
	 ksCo0hgwSdTApRSpK3crSNdFoXn86EWhlKI1Un6Gd2Ma8OXe641rqjoxgGxVtNEKJy
	 4Bv5vHJuFGiWw49e6hn+5u9ttTLTDAJFH7OyyZHm/g7q2i2yfxIMHwYaCmDMtYFzUF
	 Pmdc1qTNjn5zpWu9dv8HUDuBcjpXx+cVYLa+YP8EcaDquFUXL4RLcRKLgxTL/gIurI
	 IAinTbsojVjPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A51FCCF2571
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172875515366.29535.9834361871735540316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 396cd16ceb3aac3cdf524499fcb1c55ebdf51b8d6242801ac57a3d29c4c453da
Date: Sat, 12 Oct 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728755153
