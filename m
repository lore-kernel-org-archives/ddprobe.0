Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EC748550F
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786722034; cv=none; b=atZyealK8exXWKtxEhgwp52rUsd7k3vKw+G2zsLjQviW0Pqcb28YNgdPcIESRQ/RN7ilw8yjEP7QqB1TOkgt4cdT/Hh0GPouI+p+XdFfcow42peRg0Kanz4Fsq9Z1OTB3vbsbhupbiz6gfNhgs5USPEAsfrtg2mImhYteH6z8FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786722034; c=relaxed/simple;
	bh=dNZIQ+Y0n4exgTKtm6MEgu/hjCQPYiwHmJotAo0ZOP8=;
	h=To:Subject:From:Message-Id:Date; b=KGqbm/p/cvgC8ik/4hW2vh59x/tkTz6iEgAcrKRGadJQWo60bqXJ1RhSR5QTlbzca4xbYCSfE7p5npc7Otojw9hl9OV323MzEZrUncoL/rponx9lDBatXoh+Lueu9f4Cesb+mj6bcyAW5L0fq+H3tJ0BVluknClg6mvGdNcHmOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKgC+6yT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKgC+6yT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD36C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786722033;
	bh=dNZIQ+Y0n4exgTKtm6MEgu/hjCQPYiwHmJotAo0ZOP8=;
	h=To:Subject:From:Date:From;
	b=RKgC+6yTBXr6TTILIvXCVW/r77VEzRVrnwCG843FaYzDqAsIu4wpm3KAGfHQlKRNb
	 OaUsMp5ac6vlAiHMtueowECzKbshxYaLBTn0a3E+gUu3JYxhhYUeVJgYItQKr/lzOn
	 nQml6kv3S22Chj+MXqmTES/1E6zh2+swYFr0AzqGxz8+EKKlf9mziCJSfsfRGuOj2o
	 mo8UlBc74cF2zr06IObSUKaaZzi5EGSZzY8fvIivq48HOpKwyoz0CmJ0SY2x5WUDFn
	 gbb9OQlX4yWkYAQWrT8sPyUyyx+x1/J60ghBYL1HnakBUTJUm6o/5Wu3fLyRSKyAZD
	 9oCXBLu0N5HAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7ABC5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178672203368.28247.263364520129959271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7481294446ba4108cf9332f49896d40949768f7d71e42fe3acedc9f7e6396fb6
Date: Fri, 14 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786722033
