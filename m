Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3F46FC6
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 18:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717870043; cv=none; b=C8VrU9a8x0X8yRMJTpHBH0VFr/Hca+TbWYAYeMB/2lEnZoJI7CZX3oPZVHmTmhftY9qeZYzPjDOLUPEH4UdxxYuh8EcrbYEh7Moy0NJWZAH1bZ7j7wBQ+jVVzOEzwZtG/0aA6vC50F1/2norx19PhW7+54Yovtty87S8sdMmUL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717870043; c=relaxed/simple;
	bh=K73PQvjAkAT2DbDKhJ4VKYHGUJ6JzQ5bvZmdyzQQs+Q=;
	h=To:Subject:From:Message-Id:Date; b=DDclPpWLZuE1nk1nc4SwosS4mNoj70jKtHcoUXesepvNaBnUxHQqfXJokPhfenxlcgNuwV9L9rbAn2eR078zOLHOo/3pX+G8bKGsyZ/2IureRyH7L4rmNa9kThS+fh0TMP2UAoSXvL68duVE8wS9aA8IDX5SuExoB6cFhWWlXa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S61Z/Kz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S61Z/Kz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F55C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 18:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717870042;
	bh=K73PQvjAkAT2DbDKhJ4VKYHGUJ6JzQ5bvZmdyzQQs+Q=;
	h=To:Subject:From:Date:From;
	b=S61Z/Kz1EA82F0fkhDmqEI4yydv6L2aKcs/DYBtWHvycND8frxKfViVGALFobOirp
	 E5TSIlbxbygk5BLVBpPrApp1zyWql7/L4x6r/37Lx/UgzgUHOKplxQzLv4wziEwvTf
	 X6aE5jnuZic6yFjI5AWa7ch2gMrmHDMDUyFJmFMTm+ixiWFsUYKT5QGrrFzRfZDOqV
	 N7BYQLCaZZM3UKQAMGYqNXMPDa+gRHQpyyop2p6r9LzdGZFWzqA/u/8320DXpf6JC/
	 jOVYpZl4ScbvgeodKAVu3tO9DXD+NFBBmzNjE5X3a1VwRpFRu0IrXGIIB9sYYnggpq
	 f4zYeeUqbhEPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BCEC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 18:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171787004279.1454.37933204928870339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72893efc3d8ece87c7914efa3250180000a6d5169169fee278b3c0049515741d
Date: Sat, 08 Jun 2024 18:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717870042
