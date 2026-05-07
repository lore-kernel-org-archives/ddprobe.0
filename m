Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112AE351C3C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778193454; cv=none; b=u07t7nQY6eyzjXTOjUIvYiPi7IBLA6nI+o2AvfBHS4DgX1c1qZSL4MslTTbsr81Cj3S8K69Jp2Pqh/KeWXAVVUd3kjukDdZvo0iq+LU1rlBwY21PVow4FmTl3cpFLkxoh03eyXEbvVEdHoDvCpDlEVNcZSxE0DGuHjILj71ndHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778193454; c=relaxed/simple;
	bh=vMesVjRVND3aXCs4BFT275UegJnNIPqjHWK4xfJLh4o=;
	h=To:Subject:From:Message-Id:Date; b=hyPn48STuNZh3Nz7Ry3tv7ml5VF60pylhIvwIEYj1Wv/6SqLW6wKuwWNTegwWn1u9JiZJ21ZMQhWAxk0Kv/3DjzglMpKLLzyc37wMLGDva5fWIe6qW6O6DVFijbNm25722goMPHC0NO5bo3LdW57MvAj7zWFs+uQhO7FgtsedP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVJxTIkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVJxTIkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEADEC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778193453;
	bh=vMesVjRVND3aXCs4BFT275UegJnNIPqjHWK4xfJLh4o=;
	h=To:Subject:From:Date:From;
	b=oVJxTIkGdPGfol8CejVk52GBBcb/T60caFu35G+h8yQg4qsimPUAHZrlHpq0uVtyh
	 UM7voXJB9rEvhSXH0oISiVPkZTT0Yy3RR7Km8f297LTE3ECxI0bLtGAXNXZv6yKxi+
	 21udhj2rbyq4RL+ez6eNyRz//Rc4FHcJmYKApcev8Mt+DmjY/rnx2aHWxQ0Mbnvvix
	 5pSipyw03BoiNFgC9ls1GufeP+rjwEzgaXYuif7HKi8XVSLFOGcoNXiron+uJ9SGdo
	 CMUY4RFwjqoZwxjvo7/OEv2N4exikN3/+68EqE+R8YQkWkH0R3a2gBBtaMk1NVkQKu
	 UvNck8pdOsLGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAADACD37AA
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177819345369.25075.17113523965710869061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2ef176238452b446afc61b7350f56baa5053c5df1e01d164e9533e5b877da6
Date: Thu, 07 May 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778193453
