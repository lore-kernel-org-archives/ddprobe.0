Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2824826A0F4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747929594; cv=none; b=elSKjMOLv9bGEwpxxuSgADwirUGEkg8dPWnfKfNdJcITI7w2ayR7i9/5J0Npi7I7imINAtIl7Ggu2eJz+iB5HgwLiCtllqiCbj4L1RHBhQ1N+DRJyzQA4SCykZxjStlLtSbH2YrvFblC+RwDp8NtkxEXbSjuxPrG+sVOyMBBCSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747929594; c=relaxed/simple;
	bh=AIMKp+bOS1kqBxoqvz7t0BQosKivVS73q4mHu9Gy6CI=;
	h=To:Subject:From:Message-Id:Date; b=SVv+XyvPdN3d6vNYftQg83BIVWV1haw5Uh1qld73QTBJnMKShkECmwodVcGH/RT0iyRncxEwdU/DwueHhPv9admQPVHN6iI9lWoQlu3sqx5qDAJz7VCV29aG7TIWN2xeiplOhFW8aGYlAw/we2oaCT9BxXt5wqoRiPSECDY1si8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKiDXHtX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKiDXHtX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F94AC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747929593;
	bh=AIMKp+bOS1kqBxoqvz7t0BQosKivVS73q4mHu9Gy6CI=;
	h=To:Subject:From:Date:From;
	b=SKiDXHtXrbV1jYxfScQwgL7AuydtHm6vZxoF8hgO+0khV+Zhz1JT0iFeAtTToDOTS
	 IA9BQl46wUMO0TCpK7f7YbqAG+fBPVqsOf3TZsmMoHHA+ctIecscSBa5h7TMNAuw5h
	 Xwofd7sbJNr2daaFYCzRRdkSPKZNYWrIO/tW8xPqhkdEmVusvI8SaJ3rso6L0J4ei0
	 PtuIGT2jqNkQNGqFYFCbxTko/edSxkHEdCBywoqkoM1A1+/HeyjD3Vyvr/w/cdadf1
	 MxZAEpqrXele3GfdzrhHmSnkz0XlwShLNQFH+KAVxXgeAYDv/PE1c77uKXAT8NU0aw
	 bC4w5gGOGGYbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79DC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174792959357.18105.4151977600564671786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325bc8b1d52413ed805b7c01e83de28fbe41c872b11ed0fbbbe5d7ca81fbf863
Date: Thu, 22 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747929593
