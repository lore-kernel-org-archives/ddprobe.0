Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8BC1AF0C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756395594; cv=none; b=QaVUOy5O7Bot5OQ0Culviyo07YkqwkjWt7+qOC9hr4ICgJCwvOjjrSMRnFJks7DA5em68+TgwJ9OeXfGoY8QcI0/IX3sqSlOUgZU9Rb+AwnrvUElOaJ3mmFu9pk9mT/kWd1U8r/06/JDQt/VueJhqUlqckUKt2gv96PQVDs29Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756395594; c=relaxed/simple;
	bh=fSOeGNrxQhJu4GRdXJN5Eurk3+ArcWyNDXOiXEfgC4Y=;
	h=To:Subject:From:Message-Id:Date; b=mtPdDQ/toZecockgQ+d3ZFca0PaVk5ntR0UUWhLAI+l60VrAgPJLDTqE9Dh0k5HGApaIfXGNzelMSQOb5pei99kNRHur2C6F0XL9zFVnWKoRuoOl/Ai6bWpiGuOEtlVHccmXRATqWC2IVhDm52BwJzTeo5YWqiUf9GUrbtpJ6uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxxWl5tJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxxWl5tJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2345C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756395593;
	bh=fSOeGNrxQhJu4GRdXJN5Eurk3+ArcWyNDXOiXEfgC4Y=;
	h=To:Subject:From:Date:From;
	b=kxxWl5tJyBoSEjJ68Sh1BIFK0krfLF6EzQiA596gwpL2TQFYhNpLXgtN0SVVGk59h
	 y+BZEpqM0JKVBl/YqfrNkn+PXsmwSpiyPkXGrheN0fWyl89T61186sNV75x9Nj0T2N
	 3s2n7Ze7rvQ/cN8zWjyVuD9nr3LfIa9fdmrC0WAMSr+8qAFdz7TZVJ6/ZxLwwC5taG
	 nS4ni3dvxarCBy++StellSpef9UHFCwqCaUFizy4iSWUIkRYWebH1abY1IQXWIVo4I
	 QcxzHXAbWnFGo6o2wkXKZY+EnZhQdkkGYxyUHkn6+aoJuJaG+mD45gNdkhlw6dTpd4
	 ValS9LavlkcbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F355C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175639559357.15055.2096852533616426551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 529447df9d0d8970cd0af44938cd388120f385dcaf21e7e7266395b3515c4cc6
Date: Thu, 28 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756395593
