Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71A91D5ADD
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727288753; cv=none; b=PEkQZGIgwbfa+K1hk/PoKLINiREHVFJiBpWogiyqQNhaYBCAEEHIRO8GZu8awwNEbLNWWxf5DI2fiUhJeYwnJLtQyaUc+jARNORFOY6tunuDgmtUT2U8gU4ntro/wq9beRSoyuZH0ydnlSdyfVCndK5mfoDNgBEdeh1ggFhYKjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727288753; c=relaxed/simple;
	bh=c3y+RZ5k5gWbG9EDVD09YSwGT5bHoAuERPDsZ3a6w4o=;
	h=To:Subject:From:Message-Id:Date; b=SNOBz0uqHI2Ioh3fuAX0bcNG/hQsO7TSVpTvY2Ie8nhOOGx14Mca5YsAwPOxqoVSC/TONRN3RU9S+I9y97oe77Ym/vTY8gHHZz+v/+zdyFkSloTNj+jft4qVP+z3LPd4ojVBRmmnmPVnbIfgZ+vXyYBbsYa+8HcUT8jaBajqkU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLwFgOrv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLwFgOrv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC753C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727288753;
	bh=c3y+RZ5k5gWbG9EDVD09YSwGT5bHoAuERPDsZ3a6w4o=;
	h=To:Subject:From:Date:From;
	b=QLwFgOrvHIOr4MlcFMSIwi6440cYHOYQBZ1rr9tkYSFuYzW0Lr0IBmYe6bb4FVtEV
	 M/HGxkfn8PSsudwCHYlP1duGXnqPNb3lPm9SkOW0vJKzvmdWN6iodpgTP3AEm0cnij
	 kIks2tLzEW7GKYUxeLH/5TEWAmDg9B3NpjAjuV0jBzIQw15S1ZBUdx0f1jgS4stpB9
	 bWcApDx9seTW2jwoY2+1ttYWf4jHi3KTNMjmlbfvFP0WtWEuXeYLekWP8pKYoSClAl
	 5WUkyfqK2TScvRKglg0Lj0O7MS+pwtU6hYDxNEZu6zV65bleQDtHdljMiXEvZbHXFj
	 V3075lfBzMrSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D95DCCF9E7
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172728875359.16208.11149148925316111382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c85cb015b335cf6cc0c5c6a4c88513adca47ff84bbd4f014d5152ae3b2cbd2
Date: Wed, 25 Sep 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727288753
