Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226501FF1DA
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 16:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782060994; cv=none; b=Z/whS+yzMkVXnxMw1Kki9Nfa+mx5CWDF63RF6tij5hWU5OSZBHIaXWa6p57PwSwjYjvza96DApCjK62N69NJyLoiBJPeGGaIoXkzmzwcbtTqcRRxdb7e/Zwl5jCGlDp8VPvuD2nZhYebkrubZpigiartlnCUG5IaKHhBYqR4U08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782060994; c=relaxed/simple;
	bh=GL1YO/bPLrJxSLBjOXxfrhC/C/AaLjlLWtWwiJYkEjg=;
	h=To:Subject:From:Message-Id:Date; b=eUGTtlJe3vItYNst0Hgj68mCe8E6E2Mz2HxwmUSdyre5aaiukv+sLo+LDzhzvmdQ0uymrQhtGnqRztvB852QhzHXc2KRlm6B+/IrNy9gMg9cs9qx2u2L+dubWR6r8BEqNGv3okcVTR3r5xTtnYLV0xwNRRZdpXtk7gt585qR880=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvRPu3lp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvRPu3lp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C023EC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 16:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782060993;
	bh=GL1YO/bPLrJxSLBjOXxfrhC/C/AaLjlLWtWwiJYkEjg=;
	h=To:Subject:From:Date:From;
	b=ZvRPu3lpkJ5R+ZC6AS9TBVKkuZYwAtRih5f24NPF1VjenL9Zz0ezfQRqT7KEILU4r
	 18aJy2A+Qjtl3jKwyHN9IUuMVL0DtoX+RJwQxXpN3qIHaMV1AJr6hBKQLXmyuegVVZ
	 zDZyOJc7+yRECXVBJ1l3yU5o6QngVu1OJ3zeRkkuvmYPJfCM7HUl7MOVH1xyG9bbWh
	 OGwsrR8kGPZpy3mxlyeQP3s+N5k+ptjREpX6nabkdITEKHsANwJc6eD83Fj2k4U+9R
	 Ulo09rUkyr97kskaWEzorY90DA2/LzBpGEvUP0rlSTxxGVF0w15xDpO7jTWDDPGV0F
	 0+2du4tqwC0HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAD3CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 16:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178206099368.26568.5314158435392296405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b5cb20c6ae8e781492bdc40872aab00ccb193d0f68f58cded248748f4b11740
Date: Sun, 21 Jun 2026 16:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782060993
