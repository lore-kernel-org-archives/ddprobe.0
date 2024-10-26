Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C72A18C039
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729984554; cv=none; b=XKxdTzj87KETmqmbhY+NGa9HW5TauaDX9HY7aAKYp4IzQBKdQ0shkIqhjUJnTMM1w2hyTBdLDPQH1gMLkgzpKKHKqBkPbma04lmDMvgtbVmlL6frBcYp0HSlKczK787LJXSVeOc+We12Pp/Be41qDvE8/PAJFmXks9TrRxSbL6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729984554; c=relaxed/simple;
	bh=ay3Rv9GjblQLyXw20yWOMivGjjP4K9YDx3ha1RULazY=;
	h=To:Subject:From:Message-Id:Date; b=Rv/PC2p7HkgrWzYQv0MWIMMOObwNWWwibI3s1h7jSzR3x6RkRXBU8LP0Wt5yvzyATJRcA8yYiArpfUVldnWo+Re2RLK/HVYmVA7cy95AA7bKrYOcpAIKgZbhuzG86a5a4/BLH5DsNLZvZVSPQ1mRSji0TREyFwo2UysbkK3GGXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBfMQmJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBfMQmJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7847C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729984553;
	bh=ay3Rv9GjblQLyXw20yWOMivGjjP4K9YDx3ha1RULazY=;
	h=To:Subject:From:Date:From;
	b=aBfMQmJrDu3VroKhklV4qEln33S40rbWMk3NOh9Od9ORD/sXO9S9IQakcyS0qPb9m
	 WHE+Yna/k3fYjgfssVi8iyqjdDlaE9fcOfmuKgJWDDXozw9XYM4kixl+fth6qN/UJB
	 xeT0GuzUNRxK+7ZT6vk9qkqeocV2JOpLs3Dipm0j4hJg8MZzeiF0jWFU+NvT47yzlj
	 pVKvIe+L/GBqqO2JpDNv50A6kwm5d6BS/ACOHt5S2uBJLnRZ0/Gbe9jzjYPqwXIezc
	 U1oTTe/jXeC0l5o+5zXhv0/jBQpO7saz+hIaEFyYDEaPUfWZNueJgETjfuXAVqtjsA
	 1CHMs7ykM2v7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928BAD10C07
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172998455359.22804.4971771777706449051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a144cb1c962adf3405bc1ef1f164fb4140b7035a41cfb55bd5fc481bf84a8f29
Date: Sat, 26 Oct 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729984553
