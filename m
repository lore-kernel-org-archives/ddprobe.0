Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C27D1DFF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722839154; cv=none; b=mZou7b9WSftVwi9IS5CyJXF+9z0zhAYzEUs2NjiJOGrwFHCsb1RuhXKfo4UIyqQ1DaMhA5/cdKOKEkNJY7GUNWSUAZQ6XDMMkcOPCb1B7rbPrugBRQIJYpgGNOxmccv6f+EsUSS4dU0843toEJN4AQq6I74B4e25SEcE7oh7hOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722839154; c=relaxed/simple;
	bh=PApN36I4Spvfl8cn1yehIIA7ZfMNbEnn0EsX4IF1k84=;
	h=To:Subject:From:Message-Id:Date; b=iWyNzo15LfamdSvXKjj2+vH23PCdhZqSRMvPNT3TEzI+v6Nv5xB7VShc3X+8zyLKXYeg9blrL5D2EaSkbZMuci7avFglFGmWvaY1UqfNgrM4VtFGOYooLhcibiGElg6d7La3JyxuNNeJ/iMYQCbyLLMLGNCBDzDUGKnWakkSUN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGeOQnZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGeOQnZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30FAC4AF0C
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722839153;
	bh=PApN36I4Spvfl8cn1yehIIA7ZfMNbEnn0EsX4IF1k84=;
	h=To:Subject:From:Date:From;
	b=HGeOQnZzkvjzyFI8s7zAAfMitWMh8L+kL+hLh3iL8gOpPipfUjITwvjBBVOUllM9y
	 Zi6zitZPA1JyXAN/84qPUAk6QSs1aeD2IBE/SfWXMaK1LOv23z1tFvYVZbKSwg2D5L
	 Tu6wzq2JzYICd4ls91wLat1wRrQmEg/tqwziKStWdxtMPQf3w/OCqOwvSfOOd9bi4C
	 wVjrx/RjUlRAs727cea3sgivPXmIReGtmK3rbrh5cQhHsa0gBUyptGsKepJsan40Ks
	 uzNkfG9e5sr4SMZcSId7+CgZkU0R4SK8heSByU7vq7TvZk2BYIIXh53ZLezcR9S8r/
	 OWEevHaI446+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EC7C3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172283915361.23290.10744450783713481736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b4af20a1abdecae8353cf3924338b98f5019420f0c985a6797af149f796853
Date: Mon, 05 Aug 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722839153
