Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271A87082D
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758134994; cv=none; b=kANxhBkmqKIBCClcxKwBhYo5fBGr35Hd3w35Ub5hPAmCcg/Id0kM8P4wEe0v7pVQqUtw+oi+G7o4Sm24ovKyKfiAXoYvt2hr2M9yN7kbtrYDOaHnJ6ziJfK1XVOYFXi4CByQku8lxg20xzbUXXWsjslH/gbIrHoJr1fEvb2+Aoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758134994; c=relaxed/simple;
	bh=Wuzk/auDGGXxxzT9wNEqdxGMLtYrt7iaizCepJqUOl8=;
	h=To:Subject:From:Message-Id:Date; b=CtwbeQIVRKuE0UzDHlgvdgOojyzH+nbXM1jGDJ1gAf2mLHFT2Z+2fOZLd/nmIJd11C802aXJZuD6ukuAFMLXLkjwoJiYAfuZPrz2CpeCTPKDpTP+AMwArR4Lw7rELM+4jx0NphhRUeFyiFqm3rwkdIfkn8keaVl/XuEwPC5BJDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYvrMT5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYvrMT5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57A8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758134993;
	bh=Wuzk/auDGGXxxzT9wNEqdxGMLtYrt7iaizCepJqUOl8=;
	h=To:Subject:From:Date:From;
	b=IYvrMT5BaT9E9TJ60zmfXOFr9dlAUGPpxnZ/v8g4tcV2vzSneKdQbR57P1G9mGLvz
	 CG6YCNwwUY8u6wUv2fmYt1PW6BtfPNJjqr36QdP9wTTTPAYYcT4e0JlUWP4Jv4Naxt
	 sSGOZVbGfu8Ebn9bRtUbh/jKOgE6zZKv1aGWa93hUEqtA284dQcenXARNUmSsjBVaP
	 0ynikfqbmX+cqa0op/VCf1jyqt3L7DZXPK5hVLfMm4nwAEvPzjoEdu6CpWUQnk6fhG
	 q13yiYB3Tg5l2/kQrkuRwhkI5FYqf81YAQ0W1Z+/4mqWqb2WVtVOV/VcdkvEAqh5ZX
	 /iBKj2Bp9OntA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90421CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175813499358.11778.8537229464137197700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced4089af76969dd4aa8e110a9e6a365ccb031ebe1f24d7ef5fbf3f30cb44e79
Date: Wed, 17 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758134993
