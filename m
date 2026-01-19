Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183A678F2B
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768802634; cv=none; b=L7PGLz/GPLUXaN4YBPe9ph6YG4mawpe+okmZB6lhlrSW15ImFsB8CbXiGxwFYuq7KlfOSDk3enUzf3Hrf7Z6BkoBZry7+JPlHsgYrZMsOYlbjbRIn+rJioZGtb3oPpdaXXPp0/fSFktvbtmhdyC3/KXPpvtadDUOjvwtFs6K4zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768802634; c=relaxed/simple;
	bh=ZyAYtR+UNdD21zI+wacMwUSSVh2hs4z8i/eH3/fN6zo=;
	h=To:Subject:From:Message-Id:Date; b=gI+DAorHwLDXicgFDM0IFOhWNpgqemYWJorhA5TyM/g5c9AdfhXcFXfUrkR9+fc7rBTHMoTg/HhvUafl0HAZNpeoNM95nCAmkrcD1/xLqcjsLI9M+70+WFRKHRSRNF3hM7Q6mGez8VoMoekHF5AYfSEAXZx1MDQZMVjy/J3Uwt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNJ7dNSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNJ7dNSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC76C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768802633;
	bh=ZyAYtR+UNdD21zI+wacMwUSSVh2hs4z8i/eH3/fN6zo=;
	h=To:Subject:From:Date:From;
	b=KNJ7dNSLu1ioJnaxN2mAUT8J8N0B6PYo6rDRWsgl4QXW+6VkAOcFoYPYNZRDO7ci0
	 W0k4ap3qpYOSNWpNZZB+rc3li9u0RRzLBNr7vhkAckajD1LVZz7Oc+sEm/D0tMLDhF
	 Lx/EgRCLkTlWe9BFpIq0d4c1BIsw96jF2xbGraJ9mp6M4f1cuQFeE4fZg6ecyrLKKG
	 XYE8pLkZIikCScsUx3TKuR9O8GDMxpgXe3lRtUGK5iotiPsbeSw3LSySs2OZj1UPOF
	 huO4hOInqu47hhaHdmxXMF9PMgh2zvA2wtrCo6X9jC1OAsPS0UVwqfgBks12mdaZNT
	 72ovDZstbXcVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99200C98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176880263360.17382.15742876151905099866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cde3ddee00d65e9596c26b885eb33c417023e6a0d4a231b40140643fcf2dc1d
Date: Mon, 19 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768802633
