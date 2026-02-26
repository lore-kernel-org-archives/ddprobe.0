Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2284936AB7B
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772130294; cv=none; b=LXumvReQHgNomCZa1/OQB7z/asl43V1ULw2EsBO1mL5aMMXDV6gCN4bJ3xtVSiIknrJa41HF/PBGyXLPn8VadsWXsCpfS4HCfkPjYtmymznzuTx++fyJHUyFhJTTFFrLtcGm4JfEcnFEi5qiHnNweriH1f39aLzPggEjFdXjyTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772130294; c=relaxed/simple;
	bh=8id0kozJ22/IuA6l2SdBMhvqzwWdSGsnFEH2jn2ttvo=;
	h=To:Subject:From:Message-Id:Date; b=DZvfmb9C3FVdrLHXpL67y70kKpk6RcyAVDH5AJ8S2smgZac83N8NKpNwyp1FGWDQRKodv4Y/NCSXHrRFYLklhHLM/6f2FzJb3ak4ZJnlcXCu+eB2OmTIzgjDHzTansUNRbyxiHLYAeBlhewm2UypH1KGni4tUx4Pf60MgE6Ztic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aa+Uc4rA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aa+Uc4rA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4715C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772130293;
	bh=8id0kozJ22/IuA6l2SdBMhvqzwWdSGsnFEH2jn2ttvo=;
	h=To:Subject:From:Date:From;
	b=Aa+Uc4rAW0rgU+2MXk2v6QG4lTctKSCfOVmuWKj/N68TIj1Zh2xIXdl09Gj9WNBbL
	 V8pE+iJv2TMXBKE1B6YSfh5JS6eMyjdCVj4G26RalYtb46/gk0qXGvmxoHCVZ0kVD9
	 191O2ilVt8WMfKcg0M8OfifkBZgguRFR9dmzLLMINcVzOgHl+RS0NwTzqwoGKqkQEX
	 twSBmEOw8AQKRsVD1sHpt5wbuXL47I3uPgSUm4AxoPvjuOME2uvgt1exIW2d69mc1h
	 7FMjjy8K0d4Nw4yubSF8GvjABHIFK7tK6PLy4uUBJg5bfLkM6Y07hfNEX+pfPzw676
	 6n5D5AkUl2r/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A145DFD8FF4
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177213029363.7930.9104084916615748813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a02bce9d3f34fa40ad7227742a05e9cf2611fdf77f12428bf4298fe4751ef44
Date: Thu, 26 Feb 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772130293
