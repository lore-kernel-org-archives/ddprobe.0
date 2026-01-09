Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A47AB3246FE
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 08:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767947035; cv=none; b=sMz+Ko15zJ2NXPU5tD1UbOljyV1ZkAXTkBG9wsh3AXboA5b05q0Ks2qetPjtx7Muk0IiJ+bwWnxR8JGQwAkmvF3C5JxIm3MgVeNc5y5HrkdqtAF8B388l4I+Ze0CvclDi374uTXM7/Pk8xVovHdwOoDLHLihtB9R0/quE7eXHUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767947035; c=relaxed/simple;
	bh=WdQmYi2ElwfqeciA/delJv3CRdbFLp37VXIr1Hu1zuQ=;
	h=To:Subject:From:Message-Id:Date; b=DEEMXRVrKMQjLi3Cs14kuzu72ED/+8MEoEHlLj1K1efNyxnIv6PARhOm/zlLCHhn21sDInGSw3wfWrLXKhtJggg58unRIPJhrKtIV4JeUv5rHGmvTBRXzWlgzBkGihQwjbT8uqcgPht6CjsmbqjwCNcdzLvaOucCeYaZWibbfag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFHYmiYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFHYmiYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFAFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767947033;
	bh=WdQmYi2ElwfqeciA/delJv3CRdbFLp37VXIr1Hu1zuQ=;
	h=To:Subject:From:Date:From;
	b=vFHYmiYxla+XYpUsSyi1pIDXEX8w95PvSlfpYbUIAlCfunKBgEamYrFfziBXEYqI+
	 f6neE8BENG8WuF3+hlgLAMwwadLkfhwxBLgMrNbphC4fM0djQ9cmLTn2kOjj9/hxuZ
	 mU8DJZ60g0G/cmfJEVIE/ZIZYUssIcTqE+DiBZ5CeGaszwYMfQjOg2nTlzmAUpJZG8
	 n8efeQPBmvOf1xDfpunP8H6o+dHpnReXj6jO5t0w6orodkE+b2EpM/K9VSSrkXkfox
	 3imcczOFe3PEkm7mGFYhJIP4elgTFSJe/xxObLBba6GSBY+uAg/Z5NphuUozeHgJ4y
	 IMk3MUUyIproA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7CDD232EC
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176794703357.10416.12103680824274441918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdc06bdbf38d63ad561e1d97b04a8040b5a177ea653fd75932a50905dcbff860
Date: Fri, 09 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767947033
