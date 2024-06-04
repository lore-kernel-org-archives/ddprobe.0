Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89BD08F6C
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 04:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717474523; cv=none; b=QhLgUfZs4PxMEYQD6UVqET9qW4SONBwUduDygKB3WknMTjaOnMl79wmsYHy0fOKU36pRtewE22RYXKPbX+bZ5Egh/6W9I29aZ+icMlC5CCQ0GJwSgtQs81SKoh1X7IWnhJs8bCi7IrvAUlcsP+VL73+hp+7tV3SSkSdDspYXfjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717474523; c=relaxed/simple;
	bh=aS3/C+Kxg0TpQNkB3fgg9AzfMB5gVXWz/gYKOxhcqok=;
	h=To:Subject:From:Message-Id:Date; b=bxfBm6OBcut5b4QeGx+1jnTsi5N2RYOQoRfubE7E86hzfNslq8uEYPfseUo8kzK3r6KNSVJErYMKXU+2/VsuGk4MH0G5dDUVtTFmsvrmSS/RkJnKe4O5UP8hwmQJUIt0q53+tJBi3mNFSDMzE52awaU1WPmy5TNpgHWRt6LYdF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oY6zSoij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oY6zSoij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 085E4C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 04:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717474523;
	bh=aS3/C+Kxg0TpQNkB3fgg9AzfMB5gVXWz/gYKOxhcqok=;
	h=To:Subject:From:Date:From;
	b=oY6zSoijCHVSEdH8niAGJTGgOw1KV+J8V+UHqghjVQMVN3EF1f4odtUI+E7ZL54fH
	 AKA94Q0NTqDwdjbR8OMtqKeAhiQCsqPDjhFSPwwzUa7uZdcS2sKANIMrshTYDWf3br
	 LRVDGvy17/53Snw43N3K30o6/WDQ9dfJejRBAMO74oA1deANMVI5/8q3qIMLRfg3tk
	 k9i8vuIQ0tD8XS4UTedVPfTabMN4QiMOY3VIjfaichxe+ATQOkCdApUbUX6VmksDMy
	 33ffWc7d+SSNAEnqh8O/8nZ/gU3kKAPGykbtpr1ph/jrY6wJEA5o6bSZ0YP2qjf6aM
	 mirg0oGmUkZ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E859AC25B74
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 04:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171747452286.19369.2673246518820724581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 329cf94584f518fbab1a7d0572aa77b478298bfc810b560ae5af518f5fc4f5a3
Date: Tue, 04 Jun 2024 04:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717474522
