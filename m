Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190C81ACEDA
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 06:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763793714; cv=none; b=agOT2zYgHIdwvUUsjOMiSYaVsZbLvhJufl+0YtweWSUdfg6DdeC4Rc05AdA9XE1slX+6ILMMNa24MbI2cWz2e0Yw87ql6zcptZrrFAg3wfkD20T1ojIl7J8l/mqEK8N8xKYXi4R2LItCRWcLY3lpHSl8irb4eogB0qpZjBfjQPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763793714; c=relaxed/simple;
	bh=EbTxTtKXFI4hVn0rlcyJrGa0xzGMJZwYdgbT+INZaNo=;
	h=To:Subject:From:Message-Id:Date; b=N9KXvROlUyHUDPo3LXhrH7EL29B1xcNH3k/9qz0WqgRF/styhyoqzpV2ITHk2g0HbNCqxXueXEtEhlh7ro4Fr4SI3HRWj97lfVsBds6t3rswJ6ENLdB8V57qqMY5MHj3gqiVTdn4ZyiGqklXvZGU1kpCkqtmksrGGX6/yGIVi6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=liPTg9lB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="liPTg9lB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5933C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 06:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763793713;
	bh=EbTxTtKXFI4hVn0rlcyJrGa0xzGMJZwYdgbT+INZaNo=;
	h=To:Subject:From:Date:From;
	b=liPTg9lBtT6zrdqgIvZSyL+IDwkCjI0b9n34Mab9LQGQclez0NVjOtsaZlgqYjTQB
	 gzMdrODSjbpjIM89gCislWQ0D9/EIeYNeSlB3/O3oE0NWyqqASiPCePfHeaHFlPjrG
	 zYFJvdniIDl512CF2Se0aykhQyuSLhVu2zur1DoF6nKuZK5/ykhDVmbN70sDIak77B
	 qzrXDP/gu92Vv7nq7EoPBRp79OG6PZI+AhumDTmYyDMiQwkAdq9jWRLiH6ijb4Zj41
	 LLWsejpD+2HzGAnY7cp2rsBetZ9B5y/p6u/LXo6JtEgM7BX75XaP3njFaHItQf+gUO
	 lRORbmnOcuaXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926BACF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 06:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176379371359.7605.6752539253863584518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b9841bc38e7749a5ad6074b2555cb7dfc521e81bd3a2a56cd0f77fa2c48ed11
Date: Sat, 22 Nov 2025 06:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763793713
