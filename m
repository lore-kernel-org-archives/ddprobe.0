Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225898F6C
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752979194; cv=none; b=NuDsL+pRNkRIomorhve8wWKbXYR++U9gArrijcGbAutLI7zFl1nSy7blQfKKILof3Riz49G/hZ2j5aT17ysrVBKAKoeKHiXpAIn+QiVXl2ZaxGPpHyASH6wJsdYEGLzOTCDBRoy4yC7ySwbFkK1KAXBE7feP1g9b9QTijs2xrJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752979194; c=relaxed/simple;
	bh=REQDzBuA0vIVgvjNlaQSkqZUFMogvW6Gg7ckHeZwsRo=;
	h=To:Subject:From:Message-Id:Date; b=ZYxrpknN71qkGzuqEtjYrOxHEsJ4poOcyqsCjzQ/OasF25oekwTmqMqrZ9wMhbY3hUH9E9wlA5qo+nfj9soPw4UogFXAke9cEiKvyJntL+I44XX1KmvFdBnOG+jjXiVXwyHtt5dLKSYLPXbbkyZgUb4ODIlwzhg6VUbKNnSZuEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mO2VOxde; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mO2VOxde"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2780C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752979193;
	bh=REQDzBuA0vIVgvjNlaQSkqZUFMogvW6Gg7ckHeZwsRo=;
	h=To:Subject:From:Date:From;
	b=mO2VOxdee7ySh2TCZo6cRemJdhCinwGcVe/EbYDQijDbhb2o+avQ/voHk1LHLMwm7
	 8WJu+/sI+Uu2gc50I5RrFfMwfTq5/hEdOUfJspswhlcFifwRYqdrPB0v+eL90tW3tJ
	 9nUwZlUp9+sr3Jg0XMZaHLlBSvD66JKGKcTZouRDqvyENyNyErAPaO99nzv9wquoeV
	 6FkTZW45P8wgKniN4eVAfwMwA6arIhaM15+w1Rzx6qQdYN5HGZwiewa13d5TxBbkUp
	 rq9cl1PWzVM17WwNEOmdYFo3V0JiqWpY4sEFfm8b/kmHlNCGfeXnNBWtimPGNLtfq3
	 am8NAc8Yces0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC86C83F34
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175297919358.30567.10416348206910001906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fd29aae2248d2ce01f169bbd5eecc9f9b7b0c75aff4051b2500d6a55f77bbc7
Date: Sun, 20 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752979193
