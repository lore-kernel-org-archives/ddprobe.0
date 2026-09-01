Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D5D3DAAAE
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788303634; cv=none; b=lqktDXYBj7hi565qgOfuHCg+/sNgSqt1hJVtjbYWMpjuCmV9Db41StwjRyZcUgRJrx4bkfuMjeRSGbWUBOAgU12p5T9UJIlZ3mrM4P8HaebaxdaLBe5ko3A7cumZV0WitYhZv6gKMZCVSFNgqQamDHl4scj79//dWlPJCno8tyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788303634; c=relaxed/simple;
	bh=Ujj/eO36eZOjCpe9+b4Vt7EviG/HCP5qBTQbwEQnFLc=;
	h=To:Subject:From:Message-Id:Date; b=YMkwnJ6W1XOtgL/i4oEzIOo6OYn2BEHKz9I0lZjw4SU9Sa+gufBOjY7J8+aoPadZZijqKZo+FB3JWfgJgEJBtB4BFAgCeND33OdLKLxTyiA2Rd1CtHO0/m6pk1bU8v3SUWeb1OQqjsTGn2UoN413mWfIWrySbeWkur7IZJ8JQqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7FMog07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7FMog07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D2DC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788303633;
	bh=Ujj/eO36eZOjCpe9+b4Vt7EviG/HCP5qBTQbwEQnFLc=;
	h=To:Subject:From:Date:From;
	b=f7FMog07DU9sWd0gcUu4tDHthvHgszD4BQ+Yuy2OWYsHEbCBJqQ8P9xCzuU9JuhnK
	 7Ozxysb3g+rh+Vx9ITPwwn9BvzkZk/EFvGZgHm0o3SX8tPWAN4U9nOYxVsWuItWBuQ
	 vmaYBQh6dzPuOSPEZ56YIJ9oD6VRBszjZhSAKRiXCZklJ5KaDZDdxDUBhQgwGWhLMl
	 8H1ObsiTtvUeh3HKcqRbrGpZG45L5AIJm8YTfsorldAuBkjt0xOyUR7z9gLxHPsqj5
	 4OLgol8ToMfo+2wak48Sy0cvuPYQG52jCgDhUvIcmkKJh7kMFUaI5qRp1y9mnQ0fbg
	 IDjqEEhlxOYbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1206C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178830363368.3405.14795146579556202923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a96c53b91acbc410a2c3019b5d92f3b6060fb9a84005c08f8e4f6cafb6b89a
Date: Tue, 01 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788303633
