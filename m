Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8A3225388
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751010594; cv=none; b=jvM/o5G05ckcKyediEStCQO7a2Q5IKBuQK6Q7sBDWZnrDWHP4tdMnGqXRegEYREKbFMnndKECNA9GLN3v5fGZLbFRHExXxXNH8KvVbETNx7DDwQVI1GSPXoNZ4NwlRT0mvNssXcl64kDJgIoOM7c1rr2Arej2hfd7vU0pgUmLlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751010594; c=relaxed/simple;
	bh=rvy9mrogBGBDmk/3gqn1SKzCN946rc5J6y5ZuZBxXxY=;
	h=To:Subject:From:Message-Id:Date; b=k9HraB/ub2FPSNzm6ZKYRh/w5mvgsBKmeIrmRLZJvajPO9HThDJP1hpfsdAwPmItDJjGJsNHGuZ5bV9pmuah8DuvhOXbExkY+DxqZMOXYlhqM/7OwG1CLW1W8yWK9HaMKvAngEkIap9IafvNi5yjupK5cgV6bPd6vptzLM2LXvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qm8qRPiy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qm8qRPiy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A56C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751010593;
	bh=rvy9mrogBGBDmk/3gqn1SKzCN946rc5J6y5ZuZBxXxY=;
	h=To:Subject:From:Date:From;
	b=Qm8qRPiy+KZPv/V7/D4ZY8RlTXu1oYkvhttOmXEjTXfn8NIKGW2l4bTfMWKaLKkFp
	 xbU/isqxqQuA1smrImJgir3tGbEL2xP3WRw218+hvm67LszXlfoxgi+uBtBqcFCgaD
	 5EHXwggFLnhUG3/dQd7crhsk81RLZp1XCIVbn9jGen+2OXTJDG7I4SiHlM4JfCG4IB
	 JnUOx9ysR6M0fPQ/GUIoEIG2tA2on+1tbczcAGCTpAPtK04neSzyoTCNjiLUujB8I0
	 CfWHMOdL6GAONHByjD2a7QcdnSQ+2F1wRuB9tmGcJKbovfrHTNsbea3gvHD8QMwAqT
	 MAR7CDqpc7ecQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92900C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175101059359.18767.3853954682458918437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9792fb95663c5b9feec2a03419c168733833ecc6e3ffb492dfad2f2830fe507d
Date: Fri, 27 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751010593
