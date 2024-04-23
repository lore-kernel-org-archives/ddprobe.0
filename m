Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770D213D8BA
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 17:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713892823; cv=none; b=kgJQVoCCYng9TR5cewxSyn6nGC4IQVisAEhi3wfX9jaCnAiCN5i+Im+tqWImyfPA1Mvd/RGSX/u9GN4BGsyVN0tt7mi1idNIXyUv2SU6zm4dyY8L4OcjtOZtEd61lyEW/6rIfcyEwZ7p8yinG+Epalbl2s+zo+7PTPIDgcPAw+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713892823; c=relaxed/simple;
	bh=MvbK6X4NAQbkqxXGBdU3Vw9qv6AKgDec9EK1qf4r3J0=;
	h=To:Subject:From:Message-Id:Date; b=CyzdHLBdV9I7aLnhulHdr/Hzymn+wt5LWFoL7bka9681TdfNjmNwplRVEqkeehN7TLLhDFXBoQpRKnbG8Z0J+oaDV/BjMeqUmSmBQdGhF9qznFnKyBcXXZzNmMIvmFKDMGBgGlz+9+CPubMPcgLtvjWGOgmgav5/aQl15qleFV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCe8FpLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCe8FpLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0357C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 17:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713892823;
	bh=MvbK6X4NAQbkqxXGBdU3Vw9qv6AKgDec9EK1qf4r3J0=;
	h=To:Subject:From:Date:From;
	b=eCe8FpLHFUX1PYW5pSmuvaBtId2RBKMObI3IUUzkxwn+Aiy5vnzlIPwrvLEEwW7iE
	 z3lD8NeO6K49MXozwsJLRLHBD8Fwu6YqSd8WISu6V/NJTVHhZRULCHlYPS8rRgrybW
	 p+7U857rwFYj7x9bFf5hMZA2GGwDwI7NqKphZqkQgGUUO/QecycHa1N401YleQK4vQ
	 U/z2lDxBfMOFzs61NhWHrI0qbRI2PM2aw/23lWrmCVK5Jo0DjRWQXmPFYtyJ0VphNF
	 sGz3kCM3RlLK8uUu8lix0PHF4EssB1iNolup9+sU5G1QW9EHcBqPf0Cbfqp1E2rOaa
	 04rMDoZmMf/aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB413C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 17:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171389282288.31304.9650040987833555084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89334378233e9349707d9a2a9633a727fa65c2a4564660f5f320e146cce3035d
Date: Tue, 23 Apr 2024 17:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713892822
