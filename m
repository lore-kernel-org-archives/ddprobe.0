Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D347271A9A
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762201794; cv=none; b=UZNaDLk6eURUn/WiqqGInUsx/sCeZJYwYqpVkJbQNy8qQxT0gXNKauA3aVu8TPy01HwUkLnanHt5Q5hs5tqoLS6p2vd8jSuUU0Vga8i80w+qMv521dNOVKlpcpz4fr2/pkO5yCjKBasVLI5dtyA601/ArePy07UdkiIi6rSFJTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762201794; c=relaxed/simple;
	bh=1X3CkVbu0d2FR6GvnW6WshUhQixO3orSZSFQ0pToPiA=;
	h=To:Subject:From:Message-Id:Date; b=o4Clkv7P15iKWG4rDFj7bfv6IU9MPKPpVOQqmeWixy38XJWUB1s8GdK/QY3OimO1BqmIOuhdUL7+4pwNFuqop9qAByLlYoch2DVYoQpDBWTSEqOh/oMHVuLar/uY5fogW/IAwgfwpYagmkx6xq5x2ACKGpVhHIz7Lzy2d8yRMco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fu/y/o2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fu/y/o2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5F8C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762201793;
	bh=1X3CkVbu0d2FR6GvnW6WshUhQixO3orSZSFQ0pToPiA=;
	h=To:Subject:From:Date:From;
	b=fu/y/o2xTIjkkiJtByCWvvRqUFK9TiLjdwZyD1WPqqnjMRkKztr7v7nUXLzLWcGE4
	 z7lLantaj6y2GU1rDtrNuuu3ovVmHTmq9YK8svj9QuQiAXjQWroLZXk1u5rzYcD240
	 K/DsmBIBfwsvHx8sFveTS1eIvpTRZZ1QihvseaZvA4GFHoA1Ji+Wz070RBCyk9FK7F
	 9kNQ3e2XjIjs9mme5I5zBUvqjJY6U8/nxliRWBJrLCBHZgecoEK07rqy8SCrHhpiMh
	 CI6rqeU1/yySWPmBFsp5yE2LjQzazNKnR5wIea22UPU1FicoU2psA/FHVThiHZ+so+
	 oaiD+2ldw0mDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924EFCCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176220179359.16393.16288045853178237767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a1fb3f4b5484fea52e3f2d7c638b41730520a554089a249c8b747b2cd67105e
Date: Mon, 03 Nov 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762201793
