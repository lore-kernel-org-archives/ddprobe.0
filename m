Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180432FFDF4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768775034; cv=none; b=GQs1OzGK6Ll4k2fkQ+F26s/b2Oa9UllX1X2sF6yP2BWvZ3hH6d3s6iY5WIdF9Zx0VUbfS2pzaPpdoz1yR+aN7v5/WvzOwYjy2XP/JfALaFnH9fSiH9s21Ywf06rwL6YZFPrKIY4F0Mp5EL+313Z3++OILbBXWv3sCRNkEWryZ0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768775034; c=relaxed/simple;
	bh=2tuhiyalIwpRNqNaL17ejonk9U4S06N7kosbvSEWhPQ=;
	h=To:Subject:From:Message-Id:Date; b=PoUVZNGxSV5QtjcSzn3Frf+Tdv9eebL+zdbaAPoeWMLWPTul0ZQMH3WVAXqot1iu0kjyyoKu12rZRV/GjnjBMPKeUT5TLuKIx9dG+P+7zZ0TKci6gAYdMaSAngegsf5kxgirMa9Lw9w+pQz7iUzw3t9TLIhFSek5xc9TmVfKSqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXS+KrLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXS+KrLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33DBC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768775033;
	bh=2tuhiyalIwpRNqNaL17ejonk9U4S06N7kosbvSEWhPQ=;
	h=To:Subject:From:Date:From;
	b=nXS+KrLUvqA95+Oc/lyj0xluPkEiHY9adUgrFMtrUtM10OgUFsFYe4bgojmU83Q++
	 7HrtLDbCZeFJTbAHXInJ1mSGEptGeR6MSl8ECbqpg+dJAoKwXReRj++LWunOgZu6xY
	 6ECbtUoGHPAdHCFvJin76Tfyws4RT3xZY/z/SCasaBd/FBEE1QDWmCIoQaeVpHZsxU
	 EvslA4BTbGWdWhqjXJ6EJ4NEggd3J9hgM/rwd/zT61rpLhthCptbFtEaGO4s+QU7VM
	 VRE3494xpGDK9phB1EqzpyjGd2TCjGkSwIq8FkE6MlvmK5JwQOMGwq6yZoWCinzg5X
	 0U/9RJOiHoYVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931ABC98315
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176877503358.29790.9597647670182725151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e601d41399a9345334c4ef3db8e8aecf830c91db8e6baba341ccc5e7e87219
Date: Sun, 18 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768775033
