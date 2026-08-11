Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C653C372ECB
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786416634; cv=none; b=cANZvgQbpjRp4TeMgjTO+LENdZdVJuC2RidWM8nKp9qPab3zh29kaLJ930Yl+xWAFY9Y1f+5nPYJqtvaJtfFGbawrIHMcPl3GAKCl5mM2uJ2DeceX65R3ydfUQdAo7ueFGDytvsc9euDLvaHNE7owQkjXMB3Ut8nexq6ZZ3Gkd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786416634; c=relaxed/simple;
	bh=pakQnvN9OhX96CbvNoWAlvOPtB29uhlznM6oAmcYR5c=;
	h=To:Subject:From:Message-Id:Date; b=f+8X/yxrfGCzu0yI6OJEsa7P8JqtZoBAFRPvH/CqATqX/VoeUW9Fq+xoSg+3flBEXZd4QT724od9KzSJYxIysi9yxKaLmiWvEc0Qh5CHZATXkMO/q4fV/PQdAKaieJnI6mYHiEIzs1f1amI2FDg4ayg5cNCK6xbMJBaY+AsweE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jo3e4o1p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jo3e4o1p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC950C19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786416633;
	bh=pakQnvN9OhX96CbvNoWAlvOPtB29uhlznM6oAmcYR5c=;
	h=To:Subject:From:Date:From;
	b=Jo3e4o1pPmMLfMA4kX7+PClI45owxKYxCklFJ19xeTG+bpLiVYwgyqrjgYVetYNze
	 wZt3XqtHmBCEH4U2wMZCaC991l8h+d25RCbvNjiq9F4jWEWSVHdf9kIIZtPCN4301I
	 d7U1JrZBdKeM9LAOQzLIYZUxyMzTf4877ZRN1NPjwtfuPHeUhPG7iaEzD/mR32T056
	 f8aGMAdxE7HperBSJzAb9vyIzpI/qG5lI7iw06kpBh/Bq0hJ/+49zCDNPjGc2zCQag
	 7SA6DwAXHy8OIks7TGcLfuu04Vrs2VjncmJOjRHtDB1zwBnxrsH4YbMi269QorU4mU
	 PPTFnJtA9Z6qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC72BC5B570
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178641663369.10085.11525458371575514019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9255efffa36bd3d2d3c9fe45e5b04c370b6c875d494b41c5d7be0cbf2ea51668
Date: Tue, 11 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786416633
