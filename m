Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE12155A30
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753973394; cv=none; b=EEcq9yKPjqGIlzAkqeF8KOmfVNcAiWsVJiKiS6ALXRa/CD7anowkq3JbctNMBBDHIGNdFcRRf3hADVgMZPHRMcuxL1ook4kQ8r1U2aCKYczN8oqi8nHEXemCtGA0uYRU1vvW8WYrYdqVtGtLt3pnRE1K4OzCCss29duR18yhYIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753973394; c=relaxed/simple;
	bh=L/MUlc2anJSkkpeSkDwGWaBsIy7CsRYobL4Vz/+vF8s=;
	h=To:Subject:From:Message-Id:Date; b=WHJlmv9piDUukU5fGihzAtpkT7nPcLNhSHAvQnsX64oi5YJloc8yvi128kIHnPLZYk/rDHoI/z1RahdTYk4BSpGO6i0Xgp6IUqoQZ77U3r7qpX4KDmwH4G10hsJB855z1C23vzOfOzSDwsNrsQkgyXRkkQVB9VxjNuIPyovz3GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=besavu8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="besavu8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDFAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753973393;
	bh=L/MUlc2anJSkkpeSkDwGWaBsIy7CsRYobL4Vz/+vF8s=;
	h=To:Subject:From:Date:From;
	b=besavu8EVjju+8j6QlbZizyfIf7IKwGJJrrt7Q5WmlsIljckUn03vVtGv9+B8sR7O
	 ykovN5iHHF+UcI5w5PLP82wNaYW2SMrmAox7WzOBuKEVcqQOX18yScMdgUB/4v7iTG
	 miQ82z6Zuw2vn1iWgp+BtaztwTLLt9b+OY6Erd42PeQPpt8QDIz7o2gPbEJP8PBMfm
	 V+07V/iJ7Iqr62JnuYx4AUZY1FOdXrCOUF074Y9XQelH2gTTiiAR3Zc5XO06f51kKe
	 RYCYcCYg8qMZbid5t4YHbzwZxW3xQU9NYPYVm5VQhh9g57sRUZcSi+fOLMXJvgDYny
	 EuzJwYuIj/EjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB3AC87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175397339357.328.17658312980555977614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f35eea8983659c8312ec4d79567e861cc7ab18fb12431a1c3192e1b6428c2903
Date: Thu, 31 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753973393
