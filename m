Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7159E18E02
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 08:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718182703; cv=none; b=h3HtZulFk4SMlUJjy8/3aV+M6P10eCt7EcegGH9ffVNswMHZJu9ZmSx5r0a9QyJjZNv6hJceKww6MsbfhjoRMB7O5xF1fw2d+Y1DVOdoutsRPzqcXn038q0u0GJ6IG3R9/Blw6tDEiRcE/nd3QGEEotMg18T+VrMWjl4N27CBP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718182703; c=relaxed/simple;
	bh=ZUYQ0wOkfAlQCEPOkw3HR1QToKGN1HHYLhOtndiHLp8=;
	h=To:Subject:From:Message-Id:Date; b=FySmkq2xH+hSALaxZJ9Tvaps76f9n7D2waA0UAhZOIOOWO8bbef8PO6nqqJrO1OKZJaR7ki/Y80Q9INf4k03HUYP4/loPf3gowiy7/QiYHFfG/PZYCjXQSrbCw7HlvxYx1IhbGCAfAsSoFUlolYlma3QrsSMAZzvKAn6IgfgPUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJeFv4gR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJeFv4gR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE187C3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 08:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718182703;
	bh=ZUYQ0wOkfAlQCEPOkw3HR1QToKGN1HHYLhOtndiHLp8=;
	h=To:Subject:From:Date:From;
	b=ZJeFv4gR11l+w3/RnYGvK2jdFCb+H+jKOFQdfCKy0l56WXEIB7v3sb6SD0UA2itek
	 3ARzmVDF9d6pom/8temBCxQscSHluxQ0jMnoSEIKxzAIZlghjlrImB+jlNJ9fps66T
	 3J/OQzSpUHm1mEtS7RQw0QLybwxDl2rOn6NuqY4z0Qs+nnuo2F6UXnh8V5SkwBh+OP
	 doc+SXfrCXUncWRNiuUrQFqXV2wjh4XI7w3j3kttFWVI//nQCPN3XF+hluxEhejtcU
	 tfc+o7RPwu1D298s/4Xkpc2yagcGaiEI5b8Cy8rvP9LvPPTrKkdUksQBXpIyiM8wa0
	 hLdJDTrnBR3Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA52FC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 08:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171818270288.27360.3637122520801638225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8aeeddb9e68cd42b474f7fffa2b7f99bd25717ac5caa2f73d8f34c654246727
Date: Wed, 12 Jun 2024 08:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718182702
