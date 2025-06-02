Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDEF2C3249
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748838594; cv=none; b=UgWxhH9gpKkxvv5v0caZ4+ha4ynsTSk3nrZ+KxfCLCCBkA5cU7o/w08IPXvvm3GPaUTmh0XLCI57HRwEUn7KzI2PTKp7tYPCkjkDCBByVmpJobDPnGiWE6AKejf4uU8I84a+L4juOpLMr4xHl45v+ecoowuXkMl9p0q6sSpx4fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748838594; c=relaxed/simple;
	bh=sfBpboVRqf+dhoqYh/H2rAqGnLm4T9/CN9XILYF0m2s=;
	h=To:Subject:From:Message-Id:Date; b=abS7OeUCYzZWJsedxvWZ21Z82r/cB+CujqLdp5QUamoEu3NvFqztPF2HGOrQB/Z1fawfloWwmi8Wyk3uBQTBb1x4f8Zj2VlmpX8Am7I8Qs8DcOHUQnb9+PoIo7Okk+f9RFSErtGLRzJapJrEFWhqvpnTA8T7jo3LFlOx1CFpYwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vILef3j2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vILef3j2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBD7C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748838593;
	bh=sfBpboVRqf+dhoqYh/H2rAqGnLm4T9/CN9XILYF0m2s=;
	h=To:Subject:From:Date:From;
	b=vILef3j2J5CxfytdjqHByCEj5WVKqbUcN1xps1LGYxdAr7dmYe8NXltitOxD368kk
	 gjiRm0qSB4/gBGKNFd+NofFA6Rt5fBpBKHLBNpK0qB757zLJKJQtNsqUf0WYd+cIY1
	 y5pTkXk1A+SbDtmMZifJneE30o1oTyyagxoo2XDydMxAoiifFm7+va59dO7qgTTvLk
	 7PiOWd5aQTCYoO0khmY9nDE1mOo0vE+Mq2HJBJBizEC2CtWnmUgS2zYxxvyVAZx8G+
	 1wPQqecf9huw7bO5QjSEbu1kjBxHFhrEy3Id3k26TOCawZCIY4/Ft9jVpCveN5vr+N
	 9egSaRUzYnnDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969E8C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174883859358.26143.17456122227776263789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e976a2994a5c39020c279bb097d550a4e96fb2d0707a6eea7ecaaf2c876c543
Date: Mon, 02 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748838593
