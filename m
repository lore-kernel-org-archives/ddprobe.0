Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F323D1F92E
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771896894; cv=none; b=jbPdzC9zxEX1CFGfT+Bf/M5qAP4OHG6loI2cnFSK0pItkiZeYMslsaCQPDUzfC7KpwfBWuq2Mjb3PzBlAiiFuihpt8PCNfw1ZUNJ5Scn7WpH3jHIN2tNJ1XN7yvVxoNpTT8q/Ue/XFZRUs/denc+iRqNK0bsWffZmutJcU5FDoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771896894; c=relaxed/simple;
	bh=0RNWhelbIlWttk1D6h9EWTd9tFBuKjtkn8XespQj2GQ=;
	h=To:Subject:From:Message-Id:Date; b=gD5/kqvZnpZpyXfvjIHZyRCFxf6vLXTtfW5OF4OhAmT/KJ35wiytDO8rnELbGuNpQfQVZWfSMrtE5FtiG4Rs2n0imogjRcQTsuP/tTegIGX9DCXhh4k8XrqrA55fc9VsOAVuy6aptY6UQNjsDtSpd9KQVZZb9M1Mhztl030TWHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPJboVUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPJboVUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F2AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771896893;
	bh=0RNWhelbIlWttk1D6h9EWTd9tFBuKjtkn8XespQj2GQ=;
	h=To:Subject:From:Date:From;
	b=DPJboVUbeRsjGFNYaRe+IOrzPqu0wLKfI13FZRYfa/9JxdYXIJaNAmhzBn/cdO4AJ
	 Y682z49QczkvjOphmdQ5ARCZzgzYX9Q1ARXi2WxwoFZNGuEPbRjjrouBZNcAVgYsEw
	 DYJWMzQNAH85Mv6GZ4rrtBmKWsA7JshSTz9EZiRLX2XDAHUtE2u7blBcavrFhIr+WS
	 ne8kek3o2Qb5P5YgqAy2ChaQfsF3+pB+UqZ/lMeTchRgeut36uBEk6drr7q1mv24Or
	 GaENTveTFvQyYs+9bb21xh/7Ms0nhNxzFb1DcZqwtwoHXRuP6d8TWXiIjg8XO/tc+/
	 LB8LGD04otbRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93099EEC2B8
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177189689359.27094.4256080667877660809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c56af61336710338f32d86a5e20a6022264e6aa800f962c0ddad6eb7dcd33514
Date: Tue, 24 Feb 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771896893
