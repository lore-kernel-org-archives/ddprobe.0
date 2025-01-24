Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3653B1BDC3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737726354; cv=none; b=mn5fAaZdcoGkGg6Cnhzk1M259Csig8ZvQrldXRfuHqs1bFV1UQSdQpcgp8rn+WDh6iWR9V5A93Hffo0VA+Lu4sROxBJ/kUkG4Zsxgy+j82uwJEIhDM6dcBX9Gk6+O6tuWSJZUWLv1WN+MFUf0rXTrynNxem/jcjr3xBQ1vcJCCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737726354; c=relaxed/simple;
	bh=EH2HvjQil1gf54BUu+rkFVe2VHiHcig6wg8AGGZkT/I=;
	h=To:Subject:From:Message-Id:Date; b=KdYzIGlfFW1rce5NHr0rAnVLKn8Da2Y5iEp8G3T02HpSH7isHCHi6x11gY03auaqQoVW31lsULrAEqP3LPkFp9rjzoifpIxaPIBqO6rCny5aK+6LzAsfEP7CupBwuNC+UVMAIEGvDp3UNnMX7if399GCVtnXpBqO9MWy11mDJOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtTur4A/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtTur4A/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4928C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737726353;
	bh=EH2HvjQil1gf54BUu+rkFVe2VHiHcig6wg8AGGZkT/I=;
	h=To:Subject:From:Date:From;
	b=GtTur4A/WeqHqJn9Xm8QWxDI4brYfQ9BGXCIklJXR36o9MqYv3oqBpnp5FyCrrIfe
	 y6C1ykH11LxCNM9vYPo6NwBkqfqM6IMQIVaWRaRphBPYV4qHKcJMq8ukCwaEh5KsPH
	 TIygFFVv2NFT+DCBKzAjgvQnOcvrP5BoLoHwHqRZ399q+oBr+g0vLaZVmoUDCvWioW
	 V1qlrj0LMJXk2xW6vhvQ8lFcZ6COeuvD0JHQVTw9u2UbNrYnYmeA51hrWqTNolBD3w
	 lE/He3VDIrmK0gM8wQ1fS3I5MQE/fEFhrQn5cK+sKhyuz+p2QqEHOk66sMTFBTwRKp
	 9qwqkatgH4pbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5BFC0218B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173772635362.25084.2291065847983388551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4264de3f4c28e58fd9803a79478feafa9e5d40eec719d7246e367f30c970c67f
Date: Fri, 24 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737726353
