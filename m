Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C1D84A51
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723062954; cv=none; b=XTTAQoaMtX6TX1dbefXDvdSpO7SEgo1uVKXc59dA3JwZAbS+NWaWT++NrWNJ5l2RXNKo953axU4x9pgNvndVeUJ9oWqsn2j8mZ9nvIqoIYc03AWO1XzcpWoj6hOfUqmwZvV5y/qq6KdUQygj5YZvJgz4BTb4aPzFCcZMChAld7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723062954; c=relaxed/simple;
	bh=wi0M/+TcG1U5N7KvJTX0IOpCjzjfdM0h7AdlGNPsqYs=;
	h=To:Subject:From:Message-Id:Date; b=GP+goudJBmBQn+GGnS+JCUU8BKzRIsw/wvBKFeidEOQkOdJH8FZNmgrGdz4+Q2gLtKDO9k5pc7u3LKf26Da1Z2ppLAaWL+FTS/MLzzSSB6djC9y4DVE1RTNCrW6Aka4wFznxjnj7tr5QJWJWjYuQyQ5iR7NMOUevhoZ9BKp6+Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvDi/M3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvDi/M3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6B9C4AF09
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723062953;
	bh=wi0M/+TcG1U5N7KvJTX0IOpCjzjfdM0h7AdlGNPsqYs=;
	h=To:Subject:From:Date:From;
	b=TvDi/M3OUhJz2FTUngkZuZvmQWGn1biDsXM2J+LBTE5E2/vx/XvSNUF0JCyGikVfL
	 30vDrNvCLi3zkPcJwiah7EmF2NzoyaYloFZK+g0esVGds/8OfyR4AqMfPag424y4Kp
	 nkFt16uDw8C5Xa6jPoZlyK9JxWIQf1wElzqKAaMDX+nQwxw6nR89clVz+P7FMRhozS
	 OoksibdJ/2lU5Xf3fXn0kR09WfSMoIgMJuSnldDz3nwaa8WGHlIF7sI9+2xIxwr/SF
	 CIOxSJtt1KZBZ7CdJs2VtVhIXRmx5PONJh3amctX7yykweUQOPK1NiJRXy403TVPc/
	 kMYzXnqm9tA1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B51FC52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172306295362.9217.17620800384421536636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b70f972e89bc52397d6abf5ec20889bce5ac49182461a6edcb41832d80a51ad
Date: Wed, 07 Aug 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723062953
