Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EB430BBB9
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765573974; cv=none; b=pGjOagwqJ1oA3CYsjiY67FRJIdZgm22DEt8Xl4IP3vsNTJtW1KUsOvld1pBSaUYsU1Sa0kpxcC4jfkkgZXueg8eUDcjnAXcgRzUcZZXboP30C6yfynJ+Vs4RVUpcp4GRsog2pdKLTe6fAuK3Y4GF6qc4YQ6f0/bCaUwNo7nj33E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765573974; c=relaxed/simple;
	bh=UreL7TTEp7ReD9VY8BlEYFR8hPG/H9wiQOKcDVs/658=;
	h=To:Subject:From:Message-Id:Date; b=ULltndNFP8hUCRLQ+6c6jvyAP9PkFuIWJIO8JPxTFtQeDFe6DXZs8b+3VUhUCSjMU/z3cL7liLiDPjzmUu6mnU+NvFmecEmE19WWiFwxNJsbf4PmIVrQBwaTxY5sy6W6gT+952d3IUSLjc4oCDdyz2opdF5z+LmEC9V8xZUCnyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZsyX/2cc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZsyX/2cc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9526C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765573973;
	bh=UreL7TTEp7ReD9VY8BlEYFR8hPG/H9wiQOKcDVs/658=;
	h=To:Subject:From:Date:From;
	b=ZsyX/2ccSa+q1HCuCdUXQCc4Y0QlfebzISOgO+OLf/f0Zje8anW5mbgjJwzNghVWO
	 zvbQyu5kQ9DhIB4Eqz36l9fpHyvAUgsvo+sDxroqFPhS7Sh/OlPgqFCFzmWNHLlA8d
	 jS2jBYzeP8KbyGDWV5O60NAsWOhhX8n4t7Lxi8LUdzdvUex68kuG0/k0SqrQdyP/eh
	 SIUnRjKGKKo+ic+xwpoDHckU7pmjqVYzNJ8vavP162RDXjqHvgH+Gmu6gcl3ZGLXIe
	 L7GtYqLn4J4Ga8s8HJ34p8no4BeoTks5pk6qzFZ+4yLr+Z0zR374IWVlb/r5e0aVf9
	 6oBCNfk8jxJKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9351DD59D96
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176557397359.4417.397533248733224710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 203262009abd527953a473e318dd17cbd7c8882a7937980aa0c592b3a45e9c60
Date: Fri, 12 Dec 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765573973
