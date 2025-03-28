Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4144514A0BC
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743183594; cv=none; b=a2XSI2QAYz+vPntxAojjLiHTGGW3J/nnTnioQJpug68K/J/xKLIZP4Uy4SKJfZynhJah+bAUhdYc4tiIDpNtPGEN2TNdEBuwOc12DVQ0W09ZHJiiP+CT/rDSjbFXnw7vsnjKcnv/upygLUOZdEecXRzKj+zTvRgM3leBna96zQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743183594; c=relaxed/simple;
	bh=FTIv8qtZPJuErRRo6O8JkAHmq/jvrIA9ymIMF9uqzlM=;
	h=To:Subject:From:Message-Id:Date; b=td934Sh7RxCUJnqGCVUru/iCDpIHCBD6COCQr+hxJQx2ZwQbO6MHXreSCKxJf0/HgUmSL9xMyzhyFUYVeM3YFA3TgPNc4iiKSPmDbnDsN2x0O2GO4Y6V3fE5RW8ZbxBllLkUeZkjdVe2/Aqg+C265vyni+gtlSvPQHFyLGZvZ9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8ZHJRxa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8ZHJRxa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7151C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743183593;
	bh=FTIv8qtZPJuErRRo6O8JkAHmq/jvrIA9ymIMF9uqzlM=;
	h=To:Subject:From:Date:From;
	b=A8ZHJRxaNGm36MD6QoylJGaUlvrLiBROBsXVzhFJldwTO9Ho/x+TK8+ReZh2tKHUk
	 gdgr6RlU4K5/LQ6NPItjrNCbByUqw+Gf5Y7+rNfhmlKhJha29LG5j96xypqAhnO+uu
	 AQc3ZpXA6wen9X7A1+XiCLLlXriF6pebPVwc7WTvJs54gs7n1QJrs8tGXBPpl1i6M7
	 MoWo9P3u/5Jv103wBlz9vNFYCzu1qpvPQISGQZ7Rim2Z/icMA4bYan94YSWet+eV8t
	 zX4Qo/6oB0AeLrCT+j25qzTCypH2td4fjFNSF9nuQjl9PxbP6Ietf2zIm3uL5sVNDO
	 ZO8v+Wh2gOVNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FDFC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174318359361.11401.13675394604487379469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05690ec88e565fb41b7f2dba69d9b5ee80f6213f3b702921b1128aaf04909124
Date: Fri, 28 Mar 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743183593
