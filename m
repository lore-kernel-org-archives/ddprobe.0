Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BE019D093
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742894994; cv=none; b=SPKoQbRqXvvF6BLY1jqFc/sAeLfeb8jx4YEUERJOJ7Br4BVc6+YS//LHy+/VhO5p23y+HFvEBoT7Ij8sd3elv9IjDKWje13V2UqWo6+6GnHXSd0ozLSBSmL7vvH9g8/rRgvxPJe1qqiIm3tN5rBBKJ0NYcwkzxVVrYGzc5DmSuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742894994; c=relaxed/simple;
	bh=bDh4h+LRD9DgxyGF4+zx0TU8msrRs83ppP3Ou1T2qMA=;
	h=To:Subject:From:Message-Id:Date; b=CtliPf1cyXCg2bTtZWELcPaTm8fK1RUjDj93vKaKxq5J7FJ/JlxczCgM5UUEXbo/FHVASHuwdFDTKcICMYR15kf05GYx+vx5Do2n+ZCsAWYU0gY0TVGGd6wKgPmqnZCkw/3kQg/hBFkYu3sM9g9lj9uEt2yAc+JMH0LVnH1SXC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXsQAj5e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXsQAj5e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D17C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742894993;
	bh=bDh4h+LRD9DgxyGF4+zx0TU8msrRs83ppP3Ou1T2qMA=;
	h=To:Subject:From:Date:From;
	b=TXsQAj5ejAP6mtNHIUIkEU/CdZD0wxswX0kCSNey05gYDr9mmKq+A7VIuhyOJldc2
	 Vtl6Fc1a1bH4Hv7ftlSHA5RMhtaMpwTjSUqghAZzC2zTrTo/oMJTHnFh9nHRG0PGCg
	 x5tJG3PeaoklQeifdHoPsPC7CrUd17nKEdgCjgWLJnbixH57NRy4u2Wa4DZmVfmyt4
	 39PoKXVj3bU+jvldlihqm09eC5Aw79gQXEP8paKeCLO7GW6Y26hSw1ZNj8vlljUqPm
	 dYAVhVXmTrFF2uV07qsvvw2an6Sba8kcGksbsSiIVEsrSrcC4sqzeqUkfW8lU/Ejc1
	 rQUjKyw4UEsSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A936C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174289499362.12996.6177845886846257077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8afcd6182fbf9c758f665ff59a24112307cdd8b79efa7dc0335d2ffa6c233cd9
Date: Tue, 25 Mar 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742894993
