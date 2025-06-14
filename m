Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED376F2F2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749886194; cv=none; b=KakHSd9lFOcwKITRJnanCMG2pYeWRs51Ij+x3FKs+mFExSVBEv75qAH0Bkwj0j7E501PYToql7Woi/05iUG8zUpJT2uqDa8HQMZJEMpDK5uFA95MPNfA6vm2P2ExSdwBSoiyoZyztO9gj1Ci69mU2XO9N8bzFk8w5oqS9XKAtLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749886194; c=relaxed/simple;
	bh=v2wgJ5ZmX0D5E8nr+pCM/9wWc5+atmS7fj2Erexst4s=;
	h=To:Subject:From:Message-Id:Date; b=jkCb4kO4krp/tLzi/eiIbzEgod6OR1ffvnPMjOLglCaKmby0yfvz4J+b7E9GbQTxujC6quOLfRIV8ZByqbI+12AJZ29hjW5iI41rkX5u2vrO6zpEMMitOvKSNVdoLz1KTG7XwILj9YImMBKp3yYPcA7fhc7ObQQoclyPeMzdI/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfUEU8t8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfUEU8t8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07B0C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749886193;
	bh=v2wgJ5ZmX0D5E8nr+pCM/9wWc5+atmS7fj2Erexst4s=;
	h=To:Subject:From:Date:From;
	b=kfUEU8t8CwxqZGjk4ZJcDaTp98lgHo1VS88ISq90svT8ItO4aK/e+IHe6eboFQ7Sa
	 kjBty7T1NiZFLfdM9PoPzcFQQzbA7l0t8zk1RdZPaf1EJMlCUQ4UGGAgKPQsdddwLh
	 nFWJZwxcCQ7NCne4akWjZnNC8QXLUi9ohJs7N/ko81vgj01h61KVq/vB23dmBuyxoV
	 2+j0DOrT8jNPGfV3L5VydLLUOianYiwV05h+80nWhCJYKfxcsxXw0sGort7ufBEy69
	 lXqu7K+BFDLep8wYmEb6stKXppLdIQqQUcVI8gvZysJEqQxrHYXI+QmalRPsdL8lA4
	 96bRBcwl1U5Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E666C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174988619357.1338.7156441132874864091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a046a09a30b098430d44b16218831a452b5294d7e08599bbf0c34a91ad1dbd6e
Date: Sat, 14 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749886193
