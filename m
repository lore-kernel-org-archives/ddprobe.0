Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C801B3085C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750272593; cv=none; b=j/l7cwTS+ZmmouEIyqBJSJwn04y6tWl0R/u0AlwfutsuwefnAkei9PouzaMd7hueIcyzzHplALM/sXqxu7d7VsFnwUyg8LcilNvbqv4X5kSMSx/ysWu5LBZsOm5hNORV2GIyph3E2lo/2ObmAD7CUsGxxMqqg6kTC6oI3Yy44bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750272593; c=relaxed/simple;
	bh=2YrtTeDsZWWLne4Bvc0ZJE07iKeMTQmjuvzJQonaZjw=;
	h=To:Subject:From:Message-Id:Date; b=NJ+JYRZcWcWxrz28ONiPxGynmW1rZ5xg+3Pd7WD8cTjyYg9Zj82hvCe3VIIPo2x+p/7oA1uMrtH7DN34UZmD0WmSJgx6eEq4Tee8pOJKP/kDjgEpeZyu4Q4auB6cwgBzOipvzwMdN/l0VPMuGJIMmwYVvN6ghZWvt64elINwLos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8+Rl48M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8+Rl48M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A422AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750272593;
	bh=2YrtTeDsZWWLne4Bvc0ZJE07iKeMTQmjuvzJQonaZjw=;
	h=To:Subject:From:Date:From;
	b=Z8+Rl48M6QyHxOLvnlPR7Mo7gZvhZ9inbSXbx+G9JfRdn1sDhxoV2EzNY4RiL0zye
	 VDv8npzb4xjuvCs9WFbhTI0cS3ilWLIhskE5cfL0149y2Sns+ZgtCT0qYLYOdtGkin
	 7BhfqLRstdCOQE0PoWXGyda92+tNc++9y9xlA9+fuLP0GwUrhchOjWYjuOi3SZvm0A
	 n9nXm/gNTFrTVxxo9PL6jBRfklL/TDJ99MXZQnmp+HYZWntYaLr6bAbspPMmy43S4S
	 zDS0K5ImjTwv3Q4EwuQ8XLrIxPXHtjG9WLWNVyQLe/3SDiUtNywvSpDCeev+K4GozN
	 NObfKUb5JlGsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F965C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175027259358.26394.17960573737932015194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f526fdb695d2522d3784f6dcf58529d2e061bf637e5e43887a463464d34e5e5d
Date: Wed, 18 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750272593
