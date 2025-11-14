Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277662EBB9A
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763101794; cv=none; b=eFrSH73yQuqNHnC4tSzn06tsuiFoOFfdmfAp6vbdKJZ5c6EAqAEV/CqKmOJkxaOwK1MGWcJStWXcdGBjhCtQAJlYwlgxImA3yXVIpz3i/Z8Z+XPQ4RBPR72deMmAZCa3s2a/t0lzh7glsTV0wQGAhrRWBAlQQfgsPMrglV8JcoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763101794; c=relaxed/simple;
	bh=F/+YrcOgkllnlx0vAs2+3FY7TNbke5qSYYZ7kDTWHjE=;
	h=To:Subject:From:Message-Id:Date; b=adUf0lczYlLV0acpAFgwWScnK6a/CE9he4Ke4FsISmbdggJglQKspJ881xQ+bxj9AHLSzBFaA5fxY1fye2osulF3+8ay0+sh4c3CsEdJDBQPPNPG6Gvevub5stq0KdKyjv20VmMYICUm2qM8vM503bsovxF5vIHfNyeL25d3E8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuhYq6IN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuhYq6IN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26A2C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763101793;
	bh=F/+YrcOgkllnlx0vAs2+3FY7TNbke5qSYYZ7kDTWHjE=;
	h=To:Subject:From:Date:From;
	b=LuhYq6INOIZAvDBRe+4ElT8poW+/bBP2xLVQQSeAlpUJ5oHTW0yK/B6BmnTnP3NWA
	 V0Kfey6n09UvrpTYFxa7HcpCFgQG02VkKvqSCssx/iq5llxbfagrY+o7SkqzKZMLQh
	 UYnXhWD4NuQsGgxbpN5wHiBtzrQ4j9zApOeZpu78sDlppgxmIJxg8P1f3LqEqoa93x
	 d/oSuLWoPqao+8ruuzFxrN+IKwM22b1RMs2DHhuWrj0mdQDmBEaJPgvk8XQ6VL4rn8
	 UOjbcoJVtfBZmsLyqrMpGMV2nUsc6/nBFyjK7nCkAAIaVh9tMQTzezJasBIgmi/Bf0
	 yRR3Lb6GtvmNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93638CDE011
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176310179359.24348.1537296988175764349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d976c433fef160b1971a4892c905a3890e7912de70ce5baa15a8c95abc635f3
Date: Fri, 14 Nov 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763101793
