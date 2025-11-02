Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EEB34D3BA
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762108794; cv=none; b=PgzSjhOrLG4tyUiOEsVxl9wte7QC+SDpXoimJdy2Wgkj/jlhKe1wpoiQuvjdT/9GRhEdlUaAaInpZGolFgLsK6p+ataW2UBEwHjJpWHck8DLAPz562ZmVxHXQMvIk02hOUlEBFv+493Ks4jx6MuJWeLeDkOuPDbO6XjDJEi2HnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762108794; c=relaxed/simple;
	bh=pDrPPthlLd5I9zUARWa9etrs4719hgkymmGMv4bvTpk=;
	h=To:Subject:From:Message-Id:Date; b=gwaCskhyPtbGu+LpASsUTih75TuPXIgCVo76x5PoaWct93G0TXGDqidVS3rp+Dit1AfGU7jppNGjRgCUtjyPC3IOMyDVwJJxuF8ul9R8tVIY4Sq+RKPkNHT/BaUNsfcBr9oK4zglA9PxH0lHgXRXHfElN9tHhcpFsSsw0VZ3Nz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZzcVlRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZzcVlRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E09C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762108793;
	bh=pDrPPthlLd5I9zUARWa9etrs4719hgkymmGMv4bvTpk=;
	h=To:Subject:From:Date:From;
	b=tZzcVlRNuGefpnBYUYyXHWgPvRWAcWuKjmkFOB5IRrsnTVZWZbT1KfaHVeP6kQlGg
	 fnbX8Gt0h83RFf5S9FSd9fCOlhsuJaNHcmud2oltOLD9Q5mb7YpkKWjjfkynNlutar
	 maQm1MbKQiX1fCjJ0qCfkOiAhZS4LXKkLQ6omu5mY8lJWO819ycB3l7i+Aah0jey3v
	 NvyRswfiuFaVlP9sNVPpzM3/yMlOT55V01Nw0WNb5THIbcQznosbfXReJFlyv6zf0l
	 Cjt+L0qiQl90Rpf/2v+hCNWFnnxlJZU4cSXpjAyIQ5ub9u2nBZQqZFrRB2VkVNcHJf
	 Ydy8o+DXXYqWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B43CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176210879358.15067.17958324193871178641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb8fc8ac92206adedcc5cb9e5a7a4da566ce1dceadd998681c3ee60eb53033dd
Date: Sun, 02 Nov 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762108793
