Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF6D33FE01
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766172234; cv=none; b=BSTIpmy5MEnYjvGGjSPb7UYu8E2swpIwdzpppKWRVKvuRHZo6uxNcMdrPH/7fJoVHqlCQn8CUQgO8u1YYeDk4Twx0yxwIaf1SnVZq0IKDQjs9EQ28BO2qU/MW0oy+b5zfXslEkW4vrMuC68LPVpRTqBfdYUgVw1fXFls0rz5WUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766172234; c=relaxed/simple;
	bh=1tE2Ea9aNhQGNGrQvBhWYkXVVF73C8ucsx2jVoQVw18=;
	h=To:Subject:From:Message-Id:Date; b=Da1QzFIFudhajfrvPiy2LbsirJ4YI8SAHPNQ0VdjPSEahW9UB6Wt13wMQvgH4Rfu8sQZEN/gZncddGmvwDS57o6Nb/aQo3ChCuiV1CyctoWj+rtbWYBaocscGT9TDmm3JndRjYHQQ8cZTmIJ9U8Gt+8xCOw0HAND0HcgtgU98Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eS1GW2Db; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eS1GW2Db"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A748DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766172233;
	bh=1tE2Ea9aNhQGNGrQvBhWYkXVVF73C8ucsx2jVoQVw18=;
	h=To:Subject:From:Date:From;
	b=eS1GW2DbTGMR5U9MjTDFtRAvX8kW1I8brZXzQpjITG6LNtqD0pKQtnaQbqzY8fPpV
	 uhuQnzvkqSzd5Kp6jNtAAtTIRxOcJD7zvs1mGaSJz2W1NdNuXadfKkHphLbMrRC0lg
	 lGjvhfCpvwKc4k9B5nsfVgcerjmPNQESVJ4eJ59TMDvRc4zr+s0WdsE66hRlPuPfKE
	 22NxzFYnfswacBPxxkWXpTo+cKxyaTB9Yi9RVI9jWM46R0LAR4GUXHEgEUHv/30lWp
	 FDiZPd4CsaDBh/rcDt3xKgJqL8v31heRQIFkgPldqLy86HZj/DYqSPQoJl5zXrWHvP
	 83djxUlHe+kEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A1AD7879F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176617223358.5454.16855816859281956793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3d687c0312cc8a001a81e4bee0d495736b4ee9bd0a65638c3de416467984b3
Date: Fri, 19 Dec 2025 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766172233
