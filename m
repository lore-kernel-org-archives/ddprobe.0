Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4FE3A759D
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774012494; cv=none; b=e8wJZfR3BMgmUgG40j6dSZQoMxaGlo0D7mVv65BJnQ1MVM4RA7fkmAbvXMWcLjdGNjgh4sK9Au8kbPCDmhX8Sh5HGovZtfs+ljLfDf97LmwH+LsI6EhKkGyZFmLgitiOownKbfhkMWf8WR/nmB80oVzwKzwHzDsE2qDY10O5JkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774012494; c=relaxed/simple;
	bh=uinyOdjTfc79JjYzRNSGWe3GPXdXyiOmC1X9Av0jj44=;
	h=To:Subject:From:Message-Id:Date; b=p6LTryMMlviD1NCCGmDLFqSScwczI5GKxV7w+/dbz1UUfTmZ+PDxk8HtulmTByemsKHM0m9D+MKeS6mzC8mqXGKcRwskSEool+z8eTcywAcAfBoL8l+56A7MA4LZ+tPXLefZosoyr6dfk1zkv/1cx9H8ErSTqoA8YakZZYvwVAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgLapeyx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgLapeyx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F00C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774012493;
	bh=uinyOdjTfc79JjYzRNSGWe3GPXdXyiOmC1X9Av0jj44=;
	h=To:Subject:From:Date:From;
	b=KgLapeyxspWAbeJsFtBSWFjqH1NImG5abI/ilBj+eadpsd6SiaLV01EbDNK06/txp
	 NpPxfWky4W9U3l5ZNMjEBkVE9Glb0B1AksVO5wbiorKaTSEz0IR0T9s4by2UQvXOXM
	 6T82PwlmsCuoRiP4GFkkHUKUqAvOxIvVDcyFkFD6ONa/d9dygSCz+mWHZxCdppJJCp
	 fK7Xg7rpaFy7jqP0DRcZQOymUFQzmsUz3CGvnviz3E3G22EiCRtReO3/GX6am5DNiu
	 nGh9g0TyjEgcGZZgxA0Klfglu0BT27VKnWhmFMt9r+k+0VfyjLo7f8dKFUqHU8fZ8f
	 mrsofg6XK0LuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE481098783
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177401249358.22804.7081792542337875134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ea9d1c29abbff8ad75e2f11c8f082829ea11bb59076759f323bb40931b477f
Date: Fri, 20 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774012493
