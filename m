Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBFB399CE9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 15:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785166834; cv=none; b=WpWDOptR/67qM7v0SJ1V0VE/BY+TdRKnb5sDyfQVna52XIlNbOY+KLcCD5u20m+KLYraCCKfCTZTQVxQjvZvdcIIQt+ruJVhcHSL65+OmtIQlUhXpri7zPv9z9R9lJOUZlcAdSdoW1/BeS45A7bz3fBh8rrqhX10tUSPB9Dq//k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785166834; c=relaxed/simple;
	bh=RnKJnYv/s9cGlHR4fWADnid166bzLKyV9MSDmRWQtL4=;
	h=To:Subject:From:Message-Id:Date; b=OGOVn+oIkln2dgab5JN2K9rxzZ+3ojUOjmw8kjh9C0IFsOgBBlLx4eioCDfaSbU9uHOKR7DuC4JZOmrhL3MkttrSwXU04zAsrvzIp6MdLLwwse2VMKXf2pWeIbDb8HcU/svzjRgLLXdDV3PxuNC0ZDZoSmEIKpqqo/0UDbAcJc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxYkrBNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxYkrBNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C083BC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785166833;
	bh=RnKJnYv/s9cGlHR4fWADnid166bzLKyV9MSDmRWQtL4=;
	h=To:Subject:From:Date:From;
	b=TxYkrBNk/M+6PtlKY2NJUYuwIdB3I2kPYibV2+qar0V6OOweg8B5dWUq7ejCte4D4
	 pRPQ8iQLB2jFZHj4V1UNHuKjet/eV8qYe5x77REVh2THd/JbbUhP+nJhZs/SW8aDHw
	 T9nhEM3rNY539R9vvI278ZW994D+O9ugLfjskMQP29Uv9Xz6NvOp55pyifot3coOk+
	 t392f3bS9iCjSlcfC78Aqu8jbiuzhcyA55ssyVIpCk9F9AlGF4hQspMOVsdPIBaBB4
	 Aa8M8WyI+DmRMWGnLaHjOIeHxNuDqbwB7CjIxSeWoHNIlaWBrFUwtndvl5uuq4akVS
	 Tippk0+YclilA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E9CC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178516683368.11872.1132974770549840595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c6dc13de6c775ef9b0cb4bb1ab0bdf300bf7f8c7ee9c7763165046885bc80de
Date: Mon, 27 Jul 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785166833
