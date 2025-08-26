Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4AC2F7456
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756201794; cv=none; b=PZH0xttMdv9i5eVJ48skDhvUS4R0ar5Hf3kZ8FgY/3WnGPomcts3eoTj5URB2QAQIZjUfycKQ+8fepK/bw4iozliabK+g4O0/ORHSrlJRasX5/j6dUY0bX15T9V5+ar1m7VOVTMsfHi1KxILUTbfboSFx/zpdaL+EN7gVoOkAgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756201794; c=relaxed/simple;
	bh=U+P0b5MhZqItVJwfHxcqTZaiGjNdWlTeAlt/MQG9p1M=;
	h=To:Subject:From:Message-Id:Date; b=LaKvzhWtuQ/fi5rbyPXq394ICoYX/ulqXCKU+0n35UFgoLFs6FZBQqJh69LnyogEfcLUsXMVzvuJGNw5Vnv9jkD+pPRfXiKGH0KeafvWfedoTNW04MrXRRAzYWDS9eyB+meYNgYTCmd0oWL0XBpqAW/JirDGh76Au4uqfWMXKtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojdATySU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojdATySU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BA3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756201793;
	bh=U+P0b5MhZqItVJwfHxcqTZaiGjNdWlTeAlt/MQG9p1M=;
	h=To:Subject:From:Date:From;
	b=ojdATySUZBE0D+w6JG+1C0i55rSJy9+koGW3uCjyDICrRX0yykMLXVpZ0zlmx6In3
	 MrzRxUNLT/6eWDPE53dzj+27qAt/1Lrr5PH38yk7wyvlH23k5q1teXMji+SEV5WHhE
	 sdVMp5LRtxltZppct2/uvMW+iVFI6AR/2f1KLNdbwejuIgaaV4ZlsOO1u9pul8OD+5
	 TxPDzI01B+OlokSZWAElUtvpWtZm/cPLhT6h11cbQavB5RaGmDZv/D/GCTQ3KxUMuD
	 L6loZlt183EBMBDtekSTLEdsHBK6FASh2+SsUbHQT63qryJYeMnj9iE0NNjC0KjLNe
	 mMoOgFmhB8Zwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93733CA0FE9
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175620179359.12495.6816539134513728343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6764d127261748bea0a674a33cd171b8abffb4a14a56d4e3d963afad74d40c17
Date: Tue, 26 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756201793
