Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EF215381F
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726216554; cv=none; b=hHyQ/ify2NPdXBXdZEs+5PDTDq8wYbJsgUcv55SCZwQNzi9cl94KUS0twNi/AcwnDdl1JLFYHww9EwIqgjImnjQGMKJhzISvu702xYZ8ZLNUC53zDRMI9IXZg+0S7y5C+k389lZiX7vbwrGhTF96i/Sf534WNB6JWO2Da0gtr7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726216554; c=relaxed/simple;
	bh=JILf0XY032dUt60bPnGfS7NOXDJUXN/mzpPO+FZxMHs=;
	h=To:Subject:From:Message-Id:Date; b=qDB/sjDyg2KTiP0trh+sG4hM0dbkbf9QCogV0276XZjZw3XSALobttmc9cfoeAYcxk8ofmh/lSRlAaSntsJdYYquaY4T8KL6R5we1JXrq/lhhdHTS2P1DtJ6OiDIIJiqX+KTFiX5i8N8izsDKQNq72SqrIeAIxekXCyCufgduKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjNOXAIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjNOXAIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4D5C4CECC
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726216553;
	bh=JILf0XY032dUt60bPnGfS7NOXDJUXN/mzpPO+FZxMHs=;
	h=To:Subject:From:Date:From;
	b=VjNOXAIXxz2lVXdq+WwHMTzkm0xBXHENJx2YIY9K0afpKl7lm4VqH6FFt9Ez0dMy0
	 1hyR3jntu3oX/iF1eUqcKUuHwAgozWWtOJUDy69cRHtzVtGNvM8ekXs/zfxGgFXSj+
	 hWcDOOfhU0S6XkDNdoeKzdVut693Lo6zyGBPQAEaIyi3bZ1CCvdOoYSQONgpfN7Pb5
	 MoyNWb8TMU3v5euqBzYUMeS4FFJtWZQyWcB91kjdU5hVfGbdKsrrbgQsetjVVYUZo6
	 8JcwkOSAgU7/HZ+jmp5aQfxw3qHsrPubd1TvLw0ZSdzZI/VS3Na2RRMorhNxyU8PG/
	 Hh/cEBu9yNReA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FE1FA372E
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172621655362.25420.15616556957930907511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 964d1521f469de5dbbfcc5910a44dd5b8113238b0dc507df62633da62adcac14
Date: Fri, 13 Sep 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726216553
