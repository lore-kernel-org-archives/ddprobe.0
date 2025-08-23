Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474AD1FE45A
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755915594; cv=none; b=Tt6P08NBeUVAoAYKw+gVsNwsMtmzyzHnjBWQ9/UxpmhwiaAWLGfbyKzpFieMerv4PORvKtiLkGf6ysex6/iz7uNuBKIs48oXlyrEga2+FsKP+0wxGwLx778WF0x7R00z15u87uAfvqD+eBXVYiGyUsMizmv5wcSQKQkncYrGUAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755915594; c=relaxed/simple;
	bh=cG+Bect0qcq28Mc2lG9fpe5K1DQOdOb5KoWEd9+fdq0=;
	h=To:Subject:From:Message-Id:Date; b=UMlVCtGQyknCsbOQAK68rdYL92BoCYHkQMcTji8IuSxvpbMQijw71iVU4ORUCMeTX56dKqvASOeLJ3kI4nHl+iSN0IMq/N8IrQ8FgJxdW3YQTTCnmuyPqU5QQu6tkhfNVMLuSuWUXvTflK7i6s2x3CwKMdppF9E0cTrukOllY/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6pg6ovE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6pg6ovE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1374C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755915593;
	bh=cG+Bect0qcq28Mc2lG9fpe5K1DQOdOb5KoWEd9+fdq0=;
	h=To:Subject:From:Date:From;
	b=p6pg6ovEBrGfouKIg6ESG5iHsjLoTvqJdNvZgGfqAMHGcLobJsDtDWwInKaLWcfkT
	 hGEf6FZK39XOr3ysTlNpCF45OE0FFLxSaNVJ4HfPD3K3bWfszhLWQUKo3TgTxT719S
	 v9WBKDXOb0sXl04DsAamofx9LOLXceUzhvfYufelXzjiSd/Awh+2iMPatP5L3AqEbe
	 2TL9r5CZlxS/Gt5K8bd6VBWFiE23rjOeIEq5Ux8LOk8WlZ/6XxshqfwjZuk2zMWnwc
	 xhCtfMQGbMSFPujcrL+JvVAudLDjd03vx7/w4/4Y2FotLmdLFWtZ1NW/b11LBEtSJY
	 4BaWlikudYbYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F087CA0EEB
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175591559357.19157.16995808231488539642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2242a532f678e374ded1a4f6a22e11dfe3749d09232a3ba1ae34472b749e980
Date: Sat, 23 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755915593
