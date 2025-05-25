Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F1E849C
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748143194; cv=none; b=s/Mm2/Rj8q2lI/G/p2Z75IM+Lvw3tYGhT74HDk+zEda4h+x2fM6oYJG66LwSBd2JL0vXFFyEvenYGIjZ00m+ftFH7EgvI4B6ZpIdynBxRlXpA0jsIWcWfMYoLIP5adOIVppxj+JH8y9ZzDRjMt/pJP/OsTS/+NwAtFqt4Kn7W7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748143194; c=relaxed/simple;
	bh=FT0p2mwhMlP1ZKBaws+BO3aKWYDnNIh+TLKyGsPY0xY=;
	h=To:Subject:From:Message-Id:Date; b=OiJfO2/mYJkSHvwIv7ZyKqgdbdZbdOMyv6/WoS1NLgZrHlO0YgUk34apK/u+VCa2VqO8u+Dfisu+MDLFDZ9t9JjQBIW2VIEq8mB3ZAFbzUeDDsgD4tn+oeiR76UllmgSAg2wPM0WpUlJN2h5MfV0lvtQ/ySBZKIigjylg1Mguhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCU2aDUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCU2aDUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1767C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748143193;
	bh=FT0p2mwhMlP1ZKBaws+BO3aKWYDnNIh+TLKyGsPY0xY=;
	h=To:Subject:From:Date:From;
	b=gCU2aDUrxUpSWDOMd5flhGuXzcR8/jnoucDMwtZ6e0reXFWISUe6u3y/g1dIR5+Xo
	 7gf3WXglAm0IdaNoa9jPMUKn4HPcPQhO7P7jX84C2/1x6pHDXXFGZDbRTPdJ7iuw6E
	 gu3kGoZOvHIhwt2i7+49dOyNCHkKqzOvwfNQ7lkK3txBJ/ip4U41UHR7FW0vjJNo8R
	 iRgH7W2eFQdikIGJWT0LleCB16lls/UeQrAnRdnddg0CmYU+gfkFUQN8JpCWF01OLd
	 XNBrEgImSAxfNI7TJWwrHb3bQdLvUDhQTxMx7KgPGOTUIWBvvoww0YCJG9wN8ZOOxV
	 UjQu5e28lHsvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFAEC54ED1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174814319357.1806.10645934042992950994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1559b345d53c8881173eb8ce4e6f8d2445719e6569516f9e575ae737ba1a9a78
Date: Sun, 25 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748143193
