Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBB326ACB
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745807395; cv=none; b=BNraUBcDCZwR+JAoabwhTNcHbrIeIwROibnQs4vvf6vDFzS/kcCUd6ZDa/P99J7cZg/EFar/hdB6kW36H/rBP0AdrEEmexS4fVYRo0Pal+wqZj0DkjEloa1TTv4TFjimgxPR8dVkJuRMCoFW6pT9MtcRHYQ//CZaArSWSt+0CSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745807395; c=relaxed/simple;
	bh=AW1K+hTizxI8RimVkH06ShGfCHaeo5GPgUtm/LJMrg4=;
	h=To:Subject:From:Message-Id:Date; b=hX/VRFvuJfeKzcG72qLndkiSdgNTQqVBwXQzPgbTRpP847HLEFrGjNAepRPCrkmi41IopsmwBtw1fEfpdFL1Awo5BBaMjUZTjkzHoCgLBW6LlDrs+FKQyzlJLeku/9m4/qF+AJIn9g5DHFxq5D7u0gFm0enjWEePu6YQisPaqWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1f4lNqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1f4lNqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64ECC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745807393;
	bh=AW1K+hTizxI8RimVkH06ShGfCHaeo5GPgUtm/LJMrg4=;
	h=To:Subject:From:Date:From;
	b=f1f4lNqY+t7rb5LPljzCr/NxNWmIUdP7MYM86UWWaSNZKE8OepGCWVFlfAx3sMj1E
	 fKjNswK1/gMrrAYYKTSB0luvM3srCibgSgTCMXyadfSxcGS4Jwys9y8VwUy8+FYE37
	 g42WMvEgD6PL79/A9rrowMH+p8/LwsnYhm5KjycceoQ9oA0w54EhflUeelga0sI1hG
	 vZ05WKyoOiq0jqe8Jfali+2zJAUN7EIzBUpyzvvkT6d9DNPJA4xC3PgdyEloMeUzLa
	 NPqJVUuuI/F5zzkpOaDe7QtVh9GKJ1bKcD9zgonrKkmmEbwVxnaVoCYx9irh2pNzTP
	 zlJn1TDY+snNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91738C369D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174580739358.12354.7767685881859113391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfbca5c486f9a45cc1be12030d88446f033df0d01e02e6e50a185294d61afefe
Date: Mon, 28 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745807393
