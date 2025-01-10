Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE2320DD79
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736521554; cv=none; b=IBTO3BZe8ifWXg5UigpWtHwlCbngJKV0PRvuVVJUA5xIpAiEASeDiOyuMW/zq0/ki/kvB2EhVwr4RECjDzcsXHpRvfIy1JtHThMnd9MH9Gxupqqg8mWY/O8GMvpAs0ag10Buionearm1R0bwjA32Z91bQzl8hVOg6n3EwV7U41U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736521554; c=relaxed/simple;
	bh=R4YNsD07ycC0SKOpXdgXR88M+iT2zpQ40gaWcpJtgxE=;
	h=To:Subject:From:Message-Id:Date; b=cylDcJWEiuPFCLNr7LO8umYeGnCbUq4+NoJrzyw8khPf7wKTtn3dpCDAqVKRPPYWVs8od/7LvoBA9ugjp69IDc68+EPZIt1b++qbXPtzmITnClDja2zEYaha311eitfJ8lzw1PeY6AeL4ra3aRxYagg27iwwcdntoJU/3vf1v6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozz3b/Ej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozz3b/Ej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5679C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736521553;
	bh=R4YNsD07ycC0SKOpXdgXR88M+iT2zpQ40gaWcpJtgxE=;
	h=To:Subject:From:Date:From;
	b=ozz3b/EjR7q7mZzUAcZem5Ppf5B8hAHf0nLaQzyw/nxGfNTpWrWPYtb7pcyZn3n1R
	 8HQwt3zXsB7y87+wATz3uoE+S3RzVRDsgF5/G2BALAbN4h2ROIJQ0h3ZHNHKOGsA/w
	 TfCXZ2hRRAL3RufuiGigFeb9kG/KdH9O/6j1+Z3R8eegECz9dgWU0UYcLR3DrRB+Pl
	 DMHyD6y8b71aPPA3ySWJS6CoMJsURuv7p8cxtkCVDRZOZJ9/xo4cE5dij6Bj5WyuNO
	 UEAzpnsA34mnTX7g8tKUwMXE5gVKRn0gZyV1KIQIXu8pBHXRpCXa+1dg4AV0KYap3k
	 odiuW3R8V9Xtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94371E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173652155359.14471.8055572337279437655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05acbd91682548ad5247f0d1fb841b53e898f23a7bf13b91f88d2def1e094c43
Date: Fri, 10 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736521553
