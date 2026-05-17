Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392D523505E
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 21:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779052834; cv=none; b=C7M7l/iwl6f7Pd1vKP5QWax7BQx9t0MZqW1F+IiK1HEwtCGRwUVtUppZkGhvV3E2GCQIedpSxruYsjFygUKNqPszk1fMpSFbhc2yAS3zd9UUfNNP3oRM920NASO0QajnMXUdjAnv/j977ZXapUxW69QPNCscgPpqQUln1jFbK34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779052834; c=relaxed/simple;
	bh=OZRwuHQl0KlEvVwgcFz94tCq2/kjUwkllgUhbcEYH48=;
	h=To:Subject:From:Message-Id:Date; b=dnjxXO/PMuQI/gbbVjKUIdatfh5uVNIMxGsIr1vW0WJ6B0ErU60qVLNfg7kvw4NVI197Sduzy1hBZE+TmNnGD+JHKXcgimz34xD1mi7Be2HrJzPz4vMfzwMXrwYJoDEW/LzrJsWB176hRE1B3G5k4EPt7ayVLhxe9JQ2IKkZVE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMQohH0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMQohH0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3010C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779052833;
	bh=OZRwuHQl0KlEvVwgcFz94tCq2/kjUwkllgUhbcEYH48=;
	h=To:Subject:From:Date:From;
	b=FMQohH0GN6eVBqRemXpNesFaZlPE4Iw2L10wwT27oGEGAmyQXgRYOhkQfgY5NnQ6d
	 vOgJ0IHH1wwnP77rkiWKU7HnLfFLlaFGIPXdqD97uCJofHri4j7TPvE7t4ohl26aDg
	 usuM9B5g5Wn7xAxL51OZnjkk7NLMQFMqPNLjsS1MEUCrKL0hh8PenNtV4iKvWNMkQb
	 0UTfLOQeSow5/3JBPr2zijru5VfvAkJ8/L6V6MudEJJrqg2/AQg8k1jnirvl46Mz9F
	 ykUFs54JRiWD+PnS97QBe5e1f8+/akQ+setdEzfD0wEFzzQ7yWpad8iLWNAO36PBwn
	 wQtWpc7uSBPvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04DFCD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177905283368.10758.494020757246570430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc95cb3c645429e2deb5754dc6ae950576f5b5ee64df2a4f742366447d26dca
Date: Sun, 17 May 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779052833
