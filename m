Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4E91A2622
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751476194; cv=none; b=Yoen+Y+9olhYskdS+y2jkSLpEoIfc1PvX7CAUVa/lZspNo3ZRpzIgi2mMOsMdbVW7QcUZGx+kzSoYg0qw4/Jh8BAoedbn0cPT1waGkaV7cyVPT8C07bRt9bS0fHdfJz4NL+TleTbvSpgeacIH5rHqx9IuZWpV50YLTJEMLHChBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751476194; c=relaxed/simple;
	bh=Co4JM3TmMcAYl6w/CHRHvZacfE8nba/ouVDJ89I5xKk=;
	h=To:Subject:From:Message-Id:Date; b=R6UMH97HRhrFItGriF2WIKyN4VI27IagCcXyUbi4HkanXdvmdHfYl7U77mC+lqnLevRzvBjEvqbJkHb83+YDUOmsKcSptHeOwsBbFA1vldhIkrGjxnrKvDVL3d3fDiD6q4HmyXpYPZneMHDnNEN7ulSC1Xfe1P1pEdPflzG5R/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tb8JMMK2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tb8JMMK2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E6EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751476193;
	bh=Co4JM3TmMcAYl6w/CHRHvZacfE8nba/ouVDJ89I5xKk=;
	h=To:Subject:From:Date:From;
	b=Tb8JMMK2OVCLFiWH98l8aQHBK86FiLrRM/EdMDmYLJ/47XwME5IBuvc3JJQOgP8/M
	 1+/0Y/kBtmn3hW1Wt6jn0MLHCjL2TejeZewcceNf378s009/9ewy/3XuwyCu+cxg1l
	 tqHnF+NOQAjG+aea/8zbTzGgLF4Dur8N+sdvSb9cb1VO6sdNWqN+gjyedIWQ5Vt31Z
	 rXOd0IV7CgzjT30aYHwuhatGwNPSwMI0mZRAyCQ/LgzTvNEiVUmOELDM1iMDax9ffi
	 kRmuEA1XcWdgMVdlWy1Bd0RHY0Wo0vC8iLnzKfw17gQCSZSubFGvMxG+yJRTHJCedr
	 Aiat/l7yNQzOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE22C77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175147619358.1134.13081286190664134130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f95bf28c91217804c0d8de4df43d2e8a48a47dd77c25980c5a731cbdf5344825
Date: Wed, 02 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751476193
