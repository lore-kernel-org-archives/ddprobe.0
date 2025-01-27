Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430661FC3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737946556; cv=none; b=dCV9jWubj3KUei1pWImmJFxURQhZEqnDZr8YBEd7CKIWPJNX5AwXyJ5SAxqk1eyQf6JonPcgAz1jZpONKHJP2lzXKzQA2unLRqYw5fYuSiChkpwXmTXRJkWSzuLf8y+kqkTVT1Z3Rsa6AwaKp88PlNl/puUUrFK6YlmRivE+B+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737946556; c=relaxed/simple;
	bh=9MDQz3Uk41xhRowje/EBfJwxOhFNQl5hVbr1JnxJkHY=;
	h=To:Subject:From:Message-Id:Date; b=SzR7Wi6uUqEMeHwmj2y+MiwiC1ImYIiszaL7fXI5nXM8gU61FrID43DTqD45oOvQBmcaoHrwFRVkwPEwhotfZPZDXWKvolbcnkE1VcOJAiTOE5ZnAPq8IYvgcYU9zm5px+8priV9aslX/i03h3Sh4kaJdy1CEi5+BrWfMUsifOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4ovU2p8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4ovU2p8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA32CC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737946553;
	bh=9MDQz3Uk41xhRowje/EBfJwxOhFNQl5hVbr1JnxJkHY=;
	h=To:Subject:From:Date:From;
	b=P4ovU2p8z/wZ5hVGVoqHgrbl3Q5U1gth6Kxt1KKReNAVjcnItH+PHQgPjQrYemPIH
	 6hqXxjkagH0/rcx9mz6yHzdE51EAbz4eQ2dMfjLzqRsPmxorhHRc0RPBQjrKB8nCZv
	 L/Z5yF+CBsF69OwJVJl+wgPeIiesKGauJlzDib7kc24DxiEKwVF93T9fyw01/1FhwG
	 IINjZX6myFUjQN7TD3wNImYAdQLtVMDqPLVuhIUibk/YxiMZcAE69r4C2zneHBo070
	 od7LFEpZPqBaIxXOyVWWPLvfZpMAwall0iZOvhLavr1SPVEVa6z3T2lTjT47zUDVK8
	 DEhgq3cAY19hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A28C0218D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173794655359.28798.9192994289899440803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb403be727e6eb84f86f126aa1619d9b5c14e34e987327fb7f39302de207ea9b
Date: Mon, 27 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737946553
