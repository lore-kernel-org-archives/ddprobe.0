Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA0431A7FE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761150593; cv=none; b=RDUdQqA2VquQRGMa4Ex9pHlBXMxwQYWsHfj5L9CZhweF8ybyR9J0ElS5sc73oKDdn0IlnUfMAfwQ6MlUqj3jQnOwIqIwIxpb+1Rustxu3dDiphqP/tFALt3+M5bwkVR7Gt8HLwGW+4s861XEcefPMaDuUeBBERFtoTHRo9DqXok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761150593; c=relaxed/simple;
	bh=dDOt0o8c12uo09rWFL1IhcJ8IuHAvvwQXHOItMsI4tg=;
	h=To:Subject:From:Message-Id:Date; b=TCOtIeLl+CZU8G+mteTj6OtbSeWWAY4VCEEtphNpPhNBFb0WoF84nMK1qT+HJLzE5uUkHNTNrwKz6UKXXgRHCWCPRbS3H54l5sgmmK3f05jgY7ZX8pKjks6huHXEIpWZdDYleG0v5IN0Xtx6fwG/bto5oCoYmzoDcK5EGEhf0t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtxLvHAt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtxLvHAt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A491AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761150593;
	bh=dDOt0o8c12uo09rWFL1IhcJ8IuHAvvwQXHOItMsI4tg=;
	h=To:Subject:From:Date:From;
	b=JtxLvHAtr1vF+kPxME5xC0a6X3LODvAJ9LW+KFFii98RfMvi6RcoTIrgS8C5uPjeR
	 RXqP+1/geKoF5EWCdu0aZGlKEto46FxD1iSUu6oL/6eJ8WDY3et8RyFbnSkLKgQWG6
	 3qz0+P3Ff9brtYE2wah+HbFlZAb53qIx6lJ9N6zoU0MoN76DUNh/AWzW7ZaynEgeP1
	 4aWOO7zOcVLhF7FnX2IuMXesu34r7g1p8ixea0IiCMsi9stgehbXxOa0KXWS/Aa6JW
	 mB6Nxrw36e/IOQuIh714wR0YcXeEbWNLpPYZIZtEEVxA3cRAfcvhLS200eFZCbV/Pu
	 gmJR4cxxH6cvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9297ECCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176115059359.22958.12117977805707335114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f17be938599f6252dd50e50025a3b3cee4c8b621ff26b7c6f00f7aa510430fd
Date: Wed, 22 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761150593
