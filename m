Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B46733FE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734744954; cv=none; b=gws1PRNgEOvnz5FOLGtzejM7Ow49kOzsyuGbKJdK151XqjcDuJQpyMCXteQHYe0Mx7ISr1IPtwNTlWn7ure75jc9ap7Udcy06vG6Izmrn2yZEI/uLiqn3DEDeVFPvfTDmz58vWm2jcQRaYBnKKaIwD4RJDAoEbzZ2Y2s8niJ4LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734744954; c=relaxed/simple;
	bh=n2voen81PzMX/8n9H3nG5sGTUYbmdPZk+bibLGdZ6T4=;
	h=To:Subject:From:Message-Id:Date; b=SbMRSONpxu7N4jkJ6f9UJ/TQ7OMxrSLM+epoqDZuAFdvtxfRdu8k/gZCJMoSb7uGQupEAnZw2bcLfD8kn2zQFWyArDjfGQBKAPpHcZiq10tB6T/ggqQcnkwJNG8Vwua4KjWNMEEm+5OUOkZH5Bw+FzEoW1tx2gLxyHyAcZ8EuCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5I0JlJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5I0JlJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC800C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734744953;
	bh=n2voen81PzMX/8n9H3nG5sGTUYbmdPZk+bibLGdZ6T4=;
	h=To:Subject:From:Date:From;
	b=V5I0JlJc/OCbRsfevqVYJwWqioFKOkBEBZw9b+P1JnF4ixHTkFEPzoIxUL4yU4RB9
	 oT7zKMHx1/z6WSRLrkOd6qBh6S0FL0BFyz5BGjonEsCFidlgWgomJh1tIuXahklfqa
	 4ObyKnKRH2iPnH90XLXwFbaNUkN/CnfDnp3n2OCzk04gPd6TEhZNFOd3ytGqXMFS7n
	 zxs0sgTUNwDnvr0fw7N6Wtx2kj+MdhSuYagrU2OMA5ZISr2rqfXhrYASgoy7nOjQym
	 oQcbOGQEtAIr636Ed90od4SqsdqAXedbexAK8eyo9SvgY48cixSuVf0VbtvstokWaM
	 L1ngWHyZLLDHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A33ACE77188
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173474495363.25562.12099372480849627258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15265b77d662ddbdb1f2f9fca2a13892fddd52dfe71e2c2a20b002849b7ce5b3
Date: Sat, 21 Dec 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734744953
