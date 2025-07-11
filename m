Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1007813D531
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752245994; cv=none; b=QqPnueWiLRH9C+FQrk4MGY/C612tRef4LIhnmdtA93pgmKYZUUq7yHVIz4V8+MAjElgEq0+BTIQjmNuebx+1PPpKjRUIotkcFRoZtUuTKfq5TaAhcg/vFf7wYFVOjdB3bIwBEgnlXor1KQDeMKjdm9WYWKzEl5ZkexEnGxzSFog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752245994; c=relaxed/simple;
	bh=yuAKlqmhd/bYpiBk8VXHybnEebeT5FJOdtODzuKhDXo=;
	h=To:Subject:From:Message-Id:Date; b=UpgN9MeNOggNMMbVp7Sgwb+yrCD5j0UQNAX7tgtn9rNG2N923RXQEGJgFTsk+xhlM9Yrbxhblt1mBQKsG2TR31qUlAlAt+7yk9x8wFU88UP1Qfy0c3iq4bwDcXW3zM388BLiYqDbt+mPjTAavZJJBvTJ/21BMl2W256YssDtOjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azHVn6BX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azHVn6BX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D36CC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752245993;
	bh=yuAKlqmhd/bYpiBk8VXHybnEebeT5FJOdtODzuKhDXo=;
	h=To:Subject:From:Date:From;
	b=azHVn6BXSeo+pLs1nMNjPmcUjZp5a5/546WQd1LXXJo3zvM4J7ODmFiy0gfE3KnGi
	 sXg6wuNgEpA0nhQUYss4XsL5PTYNEbrv6v8g/EgGhTToHjKUTNZJEik5hvBXpnB0qA
	 uqbysHNYzAI4+H8vb+b+LtoPdY1ORRlIa6Ux5q8+5MbKJUmL9gD4TQQPb1/m4LcdQE
	 EIDNgFM9TQ4qoqR0pxpk8JY4rQxIcjEP5y9N6EXuAwFuoCrStN8znhq7Hh+rJhJt5C
	 EpQjKQG8cAI22ICzmsgbz4Cj1ofYYLnUGOj2tJthsD8RuzxG1k16Lolz10NoMZyahi
	 24krLE1CXyzGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC9AC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175224599358.16130.10370486306730865523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49f66c3e500dc69fe3b95553d266a6e6f94e86d11447f3945b4a101e61fbad8
Date: Fri, 11 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752245993
