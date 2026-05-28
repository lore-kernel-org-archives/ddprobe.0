Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301FE319847
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 05:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779946954; cv=none; b=ZMAo1C8KwCB1fXXu0LYxAb1DoTkdFZhU50dFTiz0VeupAZOP4ICTbNQsy9gajgT3Xrme7UQelQbNkFS+y9iF9Ju89chknj3lRoBk1lb/d3otivrGYN73X0UId0aXn+MaiW+OenKXLasGtPrE+UR5O7PV8jdWKRrKYapGJnhYuw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779946954; c=relaxed/simple;
	bh=1oSJJ+gtR8/qqI20UabcbzlZrbceqhGabcdUuqVSeOI=;
	h=To:Subject:From:Message-Id:Date; b=URma5frz+Lw2hDK7DczOv7h7IqxYSfMz6fVVa5NztvLHv+fSlgBxbWjYnmtwZHHhdG+8ezhayQSUAWgAxLLovvniUoDqj1KoZhvfE/2PqwhM4qG3Ex6SztZO64O+6AHpKhGNicLZvteTO4FIWQ9ZMMMr4zLRsiTLs0uGpfXYpsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PngDCmrG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PngDCmrG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DFEC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 05:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779946953;
	bh=1oSJJ+gtR8/qqI20UabcbzlZrbceqhGabcdUuqVSeOI=;
	h=To:Subject:From:Date:From;
	b=PngDCmrGPdaV6w51GZUvPuPP1ajgX4eK5aQPg/T1EPv/p8r/5tUtLcPJq7SGtda+t
	 Nify8CrOf5p7KgXBiAFDppbLWhHTTufx/TztIoumedxSgXgfLdhYlK3135icJERq8E
	 znTx6ewUJE8H7k6xMsncjltjESYyDNvKwyrj8IErYzIc+nqTdmpC74Prk1K9s2WCn4
	 OfmTTPISFyEzz6EI3vOpXW1wM2r3kzMRNNGUepk4PF2BRbmoLO+pgbfF570YT2H/5b
	 Ih7QQQZtng9SKbSyMQmWQJRikJ3iO9USej7FkHyrxIF9rLbY0dgxvdbZzEI8v0iK9J
	 6Mzt26rHaXRng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABD4CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 05:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177994695368.13975.17043805342371123245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2369c4e74bf2aa4eeb87431011ddb98f7d7b8eb6660d37d198e13355241aee23
Date: Thu, 28 May 2026 05:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779946953
