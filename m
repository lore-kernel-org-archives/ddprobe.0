Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D561946BB
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724691954; cv=none; b=k9emJ7aCiT/lV5byJq6Yqw8qeenqjKHQgBsJ70oXb89grcnwnFq40k3Zl5vhO63rdmK7J1QlPM/OKHCqeb+/w2Hzc07IJRUPpOXZYI44P2yN7j8itzaeH+DRAIAtGCa/6dY9XLVwnEjOnhIEiIprazb7Q77Q5Sa4wqSp4n80PJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724691954; c=relaxed/simple;
	bh=OaQAXhHMhOQ3V8ma2/8+n+sbpf/levGv57ft3QM4vUE=;
	h=To:Subject:From:Message-Id:Date; b=nWvo84OWca50LgAcTxvMYkaB4CviA9YT/ViwclczFPvRFjIL9q3lD7FBAQ47eYNgytBv0v7K3ymKD9XhJv/bUM8JKXpz9QZ9K97+0JaghQR8U80W1JBEaGYAyGkT08Cxm4ltqZa/hPBRZLdAUFwdbscwlGj50kqyg4hwvMW8vlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKhRqFto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKhRqFto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEB9C58196
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724691953;
	bh=OaQAXhHMhOQ3V8ma2/8+n+sbpf/levGv57ft3QM4vUE=;
	h=To:Subject:From:Date:From;
	b=MKhRqFtoIlUkbYuywh5eNc9h8BDxtSUr4NclFmt85vqr0e51JEdKX+ZS4vqyISe5B
	 rs5JQ1yR2awqgAcVaXHHMldzriGaicnocExRTALzZHp2OirIcRefYV3evTglADtB1z
	 Qj02S6RXQjYpQTJhykFPe56MWueuNrCwkMBoceyPxMe8+JIgOwjbgQS8xsN9K5c+yz
	 KnBw2TmfF9w+GF1pMk5cDXw3Kyqo+rGAt5zjifwk8/vi0Sd3k5Tsabn9U9+5VA1Qxo
	 9c1fxaWPP87mK/7OFi+njAwVSzFcyMFrjcxy0PBAD2MaOPTk6MMbVtTWVY5JmB9lpa
	 /ezBSz8u9484w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF88C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172469195363.8275.11617708935937137906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5620420e420118157ce32ed865931b599bfe5a79317404394e1c54a800996b
Date: Mon, 26 Aug 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724691953
