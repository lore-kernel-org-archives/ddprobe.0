Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F67D1D5CE0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768723434; cv=none; b=Td9EBt1Ym667RCO9zXd9kzGM+8gg6ja3ir2ZAZ9JWVlkiCO5PrX7Uik26MqlzICgVS+xDnBpqbm0XMVU5nLd5NcVWZKUYAMO34BDfCz06bOCzs2ORwVBoR84tcIn7CdnpiJ+aTWx3ytua3gKOlScgyFkUbCuRzFNME5VU5ru7Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768723434; c=relaxed/simple;
	bh=8CHObfnfBeAmy1nNE9/Pz+2rUESd6jRbBqV0ksQTsQo=;
	h=To:Subject:From:Message-Id:Date; b=YMI9YE08qBPP3HkM8NvlICFk8t1XUiLzQhG3U4wTMx+lg8NjM7P+YHuwo+5Z2g54j0MtdZMGYMWz1voQ+pBjMHPnnxfU8yBoZwY0lDN0/ytpLEv6+KDDrJdsutiyjchWeG6mwJCjalmSn+NU5zCxU8K19LmjV5xerby3ZzUVpqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLv6sHyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLv6sHyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F51EC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768723433;
	bh=8CHObfnfBeAmy1nNE9/Pz+2rUESd6jRbBqV0ksQTsQo=;
	h=To:Subject:From:Date:From;
	b=OLv6sHyE1AhZAxhLupdoVp3EPhMEjFZaXiuI0ny6vHUIXtU5+MIfodKyvCK9m1owq
	 LPtpx3NKi5pYBKSbskchztrnrFtFGed3p0cl5aZDMwk0/aNabqw391WExTAmb6E2OQ
	 PZF6MosNAykxHDxrxskqbvmg04oYSdz9qaRPQ/XdCobnRX7F1uMEN0gAC6wFgVd4vV
	 BtATBWKSPn39ioNEf2hFSnuiA6PWw7r40N4QauGAlb1d+V+3qpcReYAQ6+ooaXC1U/
	 NFL5MSkXCzZ31vGeRD9KvfjTVvcXnhvO1G5UJlyTz68cHmpSZb4cVObfmGsouaHJA3
	 kzKsbr7Kxn45w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90977D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176872343358.6805.8227312573707435178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d1e54e0f9fdde00f02ae534353416cb92d47edc8e60589943601687438b0b7
Date: Sun, 18 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768723433
