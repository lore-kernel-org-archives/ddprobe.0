Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 998CA5466C
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 05:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717134263; cv=none; b=bFnohJkZ6ueAjGIQHh5gkNjPLeuPUo9Np7J8J6C37arPS4sGnIZml3xTTqi74Qr6hhHuBM0RuQ8jfDWEX/tPya3OEyNFGqitHFiJSkxwb88h3+gvA1yepUO4XbNs+4gksrBXTMC3I3eIngNSbPx9C8KQjBZPjG++afaUzxe6yik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717134263; c=relaxed/simple;
	bh=H0EwTLcDN+FOXV1GLOvSrq68GkpR7D+Y75seXrr+cCA=;
	h=To:Subject:From:Message-Id:Date; b=qXBIBSShTdrUXA7f7XSxfHUG3zd+UUxaSR0+ptncwZKk8Y6FAbXHWIORQiaPdMgiOaBg3LWAEpT4SloHW17Wq+ATwLiF2WR20tsIStuAQS3wRNE1nhTro1VdruOiZAPA0xFHidEiqz6f6ILJr4Tu9NS9oqefi86aKB1bLkfuz9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttDgx2iZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttDgx2iZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10B33C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 05:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717134263;
	bh=H0EwTLcDN+FOXV1GLOvSrq68GkpR7D+Y75seXrr+cCA=;
	h=To:Subject:From:Date:From;
	b=ttDgx2iZ+ijRqZ+GJBCBEOJM3QXHMgOxfDw5VRqgKlSoFrbeCo3bHUBLL7hf4MvhH
	 6ud3YYauTrs4rwJ/o7VCWQVb8AQnXNGIjzANyIpCE2RYjlJ36fMyAIKkLIjwkHbeQF
	 XvOfsxYGJy12qWUvpO5y5j6nt60osAXwVHNHAgiGgl9w6AosnwZSGDfbh7effS6xfe
	 IiEx6djPBrTFCw/d2c04UPVOfMooSujwUUehJdUWs8FWwq7FCV3PT6RTQoVys9Y1st
	 rc4KjDNqT1W9uMPhSw+QQUgPSRaoQJ56g80m7wjcKPFXQaJfO0oaho5RpGV6L3VQns
	 QwBSHu6NJFvzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9C34C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 05:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171713426278.10657.6770847482965369954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f694a2c5fbec553f27d782c1fc0c160d7549c28c106ab7a97a9c1e9d70f5ffe7
Date: Fri, 31 May 2024 05:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717134262
