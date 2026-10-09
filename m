Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D91D3DA5AA
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791550234; cv=none; b=VmzEVrqLnLVS7FEQjUI08kvtBlZWTp0cloAqbSXl42jPwm7dhtsFqAEbMfvLxYhyuidL3d6DBgsXXMFFWu9AVvBmXqCW/3m051vZ7fUCoo+mD6tLA5adl78WILkYxqgaayeY2rgz7+GuX8KJsopHkjzyGOZh5yxZlzBL8F4uzpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791550234; c=relaxed/simple;
	bh=fAP2GN5xg4vxfO05TMwJpNifN1KqkCCOwLE/WuHA/34=;
	h=To:Subject:From:Message-Id:Date; b=SFCoO0ng/sczplOXoZqwH4fJawzr+hWoLtCLB/O2qpJC5Br0BBDaPeX9uGsMP6uAkpubvKSiZT6Xiv4nMpLOItUjY5IJXIZ7PWyoyeDiKzSJTRzliElg0w8bYVgIC6gVlXSP+Yig4OVoyRzELowwZ7RgTRDmmy/csjB+XEv6Icw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6GSfkk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6GSfkk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC227C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791550233;
	bh=fAP2GN5xg4vxfO05TMwJpNifN1KqkCCOwLE/WuHA/34=;
	h=To:Subject:From:Date:From;
	b=f6GSfkk5sZxlXmIcmlMcAQegNOS2FiALg3eW6tHnpjiDbMwXjAqUYnmv4IGO5IjAN
	 nYyL0emzfRYHfJ7WuU8DVTK+MLT3jfE2NP5//KQ5vaGcq7znGivX8E/BT5UEl+dBsW
	 iBwBrGCSH13Vz8YL7Vsfk1S2YfbyeVy8rATCcHa1KHWIinMY0G+QOeZoJTTvuvWopp
	 6p+Qssb7VA0NE4GkOMizBLZ4CRNYMTYPsV73FskpeEtuT8NlrSuttZ+xhNQKt/Qs2v
	 tKiOsRUVnn5jMnmukfIoXjyiXL0TJQJrLWRX6EXLYyB0EVCfNnMpnj1k2RS4nrXH5a
	 4LhX0pWbo1KFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3FECA601E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179155023368.4519.5765575863829094012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59fea87bb315679fa6b783ba1b272edac8a463e7a9ee0b699b3132ca2bb0616a
Date: Fri, 09 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791550233
