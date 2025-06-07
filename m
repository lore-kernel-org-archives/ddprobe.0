Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2981B25CC74
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749340794; cv=none; b=mZKiyFDmrdRTX2Wj9vD5YXssmeer8cxPKKod1c4E9SqOzfaoscLRrk7k9ThY9y26mqDvda+BuxIH0LqmTFasvRHIgAVHDwf5aeGtHdu65qajTbHE+JGYVX8Hl9vcnGHc8nA50z3iuh/hqp8lZW0wgwncBPasDFLAWLUr6PW3aOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749340794; c=relaxed/simple;
	bh=kTWtatfIyL7hxsDEgtK9DFxvWjY13UM83Zlbwnxnqgs=;
	h=To:Subject:From:Message-Id:Date; b=s+45NIUyU8JcSabzXp3hZw7RBObKaoWHn+d1D+uqRFI08Cg9womPp3eJOeyVgqTEf0Wr0nZrhfPQSiroMOrBcbNWO8Y7su5xR9Y1WXXzrbf3QYJ/u7+95XSytADZFnZIAIYQhW6M2ro98C6JVU4LgnP630UNiKSQyGOJdm5BNNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEq3eepT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEq3eepT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2372C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749340793;
	bh=kTWtatfIyL7hxsDEgtK9DFxvWjY13UM83Zlbwnxnqgs=;
	h=To:Subject:From:Date:From;
	b=MEq3eepTyt7/+fqy9xT4o/dbtLA5+iJO15PBbv3cWFITP7hSGlBz2TIORyeuvjCLu
	 9lXOYQLzO8AVRds8mOVfkgrneNv+KkLgvuE6dDGqpdBR2z5Wu12gcMYknhExn/+Q3S
	 3KQPzLfFaaF0yd7P+oOgVnMDs5PrLrnQ0MWm68cjgDQt2CxnjH5D/90NwBu1veMQi4
	 nT1E5tAoee1nfnVebPTagEiQ4OTZZ1f/GPmRU1Kjz9sCbxoYpqFLhjgy8HDpAazcfw
	 jBwAEzn25ZjsROG7cOGk8RL/756+vcQGWXFZVstPL9BG2yPRUL+jm9iXMl505rKxtb
	 TMtEkuPTS3sog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF59C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174934079357.15784.13754618716679297608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 995970f9218692c97511e35d8960957e455e37f290553c5a33901fcc4e6b0880
Date: Sat, 07 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749340793
