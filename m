Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495F935DA41
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 03:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783826914; cv=none; b=WxKZEzqpiejNUEEYSWBpvNfsrb5knezRG7PVVGhjrR2NK2eKnU1n42cxzbviYj4NDRlV/K6OW8FzOPRww2r3DW9EugXIjaCntigIbq63rvjyt3A8k6G89Q727pOb7MZtsCDB3Dmvacaj5qwJvMavF7rzqy1GvJfZZm2/vZPHytI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783826914; c=relaxed/simple;
	bh=BwtqAPGCj48drHMqmEdszK6NwUIodMFUe7WUFNImna4=;
	h=To:Subject:From:Message-Id:Date; b=aH6mhm2vzEbb+kNh9jNv9jOvoTYnwjLJhnYFJ6Dm+rkiRZsjunkA1WAsHdJ3li5n6ySN70X9NTCFRziBGrg6Z0NxAKOogIdrua0eKSjKaWya21Gm3ua8tH5bp74bGCyJXgTSU/5yAMbT6XE6vQ1GI3xJ/4SzqFH7OcYpp+W4Tds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfOmnWj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfOmnWj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACBEC2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783826913;
	bh=BwtqAPGCj48drHMqmEdszK6NwUIodMFUe7WUFNImna4=;
	h=To:Subject:From:Date:From;
	b=kfOmnWj2ErVTiiVslSvbpf6LhuL+LXglwBcO5qqcr7TXxeh0o5MsfC5DUxCi6/T7t
	 XEpBF6lFkZ7l9m+LY9l/UfOWfefl1wSKIZkYCBilRx//OJIm50Q5SqV7q8zvofksgg
	 Dl8wiKvWiRFX9yf95so3NFDvZyrnm/V/Cd8XlMiOlOb5qxAUmcID5c07MAozeu+Hh2
	 AotroHLnWWCekbe61evpOCZX4mX9xkb2xSB97n07hFi6Mt93gcSW+3RzRcZpiWsif0
	 9wl48lDRVpEKALlQxS2+9uLqH/L2jvWJ4bn+5Foi75rY/fHi8nhsTkTrpLNb/Vo+V8
	 HY3E+dwg8Em4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8779C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178382691368.1896.16438171631005859604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fde0a1e765a7cadb663952bb6564425b44efec8d20f976579926c165ec66e74
Date: Sun, 12 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783826913
