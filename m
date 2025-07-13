Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B50C277037
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752438594; cv=none; b=HQO66/0OO0zLpqZPH+T7UM57WHjWRr8r58f1FlGDS5ucTByIy6e/0cHoQZgaJ94dRuMUVMiIU28JivYIlBbeueg2AguTrEvlDXrC1SKG+IvH9Nj4c2GH7sOLi5ZQvkC9Y3V8IAHdVeMDGWPIXdqALPPXdByd32AEu0YHBWRAukQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752438594; c=relaxed/simple;
	bh=mLV1f57G5zaPOzMWPJtSQ6OiFKAleoJxjXxJf0iT528=;
	h=To:Subject:From:Message-Id:Date; b=lT1hjbZHGCqgECpyBksVqArlJ+VO5aXwxr3zWrWfD/+FR/ZCa/WDDAj0JWjtQY2AEDbJl1CErdqUoldFd1psVegphaJqaaT65SAsNqmMS6AtWBZOQJgx5fM82Xs3HSfr2SuqUXboa2JiUqzQhJhmWqPYlx8WItYftTW2V0IU1Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hx9cYqxD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hx9cYqxD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5628C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752438593;
	bh=mLV1f57G5zaPOzMWPJtSQ6OiFKAleoJxjXxJf0iT528=;
	h=To:Subject:From:Date:From;
	b=Hx9cYqxDSzW/1qk0HR224m34YQHfxKOv99JTzrpK3Biwgw7x6nKkUuCEMw9e5KOg9
	 Zy/T2aWYiuSxdMpE9rhHb2ZxJ8dCsyCm2P3vGn++Zcp97loGI9OS1VKkrltVjrjtpz
	 PBH/401Uiuc8OZ2p0VKqbLfpKL9bpgvw36gkhECffRVaFEyrfzJfXO8zxDq8Gx02ul
	 l8giDdFq0H9rczw3M2ft1YQ0vUSRGWSlO6Tnt1U0c7aklsLZx81YM7a3EMXzR1momL
	 XpWA/4WrF6Q3kwM1wpdGxz2eNCbzA3gnoAqn78UIU4WhP+p6FpZKVpmtUAJTnAdGae
	 pWxJr7akySuoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939D8C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175243859357.23941.18058817698631093616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7349f0237e29e2c34669231e08ab69e16b98038d20f9dbd32802d0add9a3f6e1
Date: Sun, 13 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752438593
