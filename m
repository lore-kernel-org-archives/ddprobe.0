Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160972DF14B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769534634; cv=none; b=h2oRcGavW2/n198mBsdROnmDz5G2RRUcJsH04IjHSqbfIp3Yrfx0cUXpnq6/9GAhqheE7uOHvqJIuQhFr41gH+IogVyCkw5sje7LFo7zaLzS0dhhEcO30H/aDZkUddaaTwy+beLobzAfmVqzWUv7z9obVosMq9G+nwgHlesrTnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769534634; c=relaxed/simple;
	bh=W7QIC0OZi4yAIhflPzRBhCJFuOnoZ7sQu+vIQ1UNtwY=;
	h=To:Subject:From:Message-Id:Date; b=iP/cuNPQfhDCfsracFK2RAxjHiAMMYIYPsp2IEvJEF0Osfz6URkCkTAKLRj1sAsFRxeJCEUwdJaEZpQ41vt5bqaSF4BankshyruNo5NiXxjDi/6KmAAaoiWJkQad0DIWJaoiv4VnAN6Iu1apSi7K3x91+970qGSc7DgFKsxfgxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9zwXWzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9zwXWzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A795BC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769534633;
	bh=W7QIC0OZi4yAIhflPzRBhCJFuOnoZ7sQu+vIQ1UNtwY=;
	h=To:Subject:From:Date:From;
	b=R9zwXWzzjzGdsHb/Bw9zo1jqVhoTMw7jZdNoKi2hLpugob5ZbLtMgzvLQ04Ie351A
	 eIp8yr31BydCacF4HMnkx/O/FBjwOVNouTacSp6z8wttcefVAptN6G6XawC7GbdIhB
	 bexkSEURhybAh+S/Egzpw915T02xmsUQTzNCHEeWKeAPoSb+WGvgtKKg4JcGE56L8e
	 2ERcGpluGiNrOas4Gx6/LSgw9MHB1NLTC0AAOMl93DWzcNLKWAREpVSK6835/zuraJ
	 Vi2fVO9WYUWGqiqmufYsnD82wZK9pHJx+Etdbifu3u1kz+KMUtSDR1H+Iafc/4DffN
	 nVr5Pq+B37snw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A6AD2FEC4
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176953463358.19646.17616113681634279916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab34027353a288797be8584afc1986178123e44f4f767e46761232300695dc55
Date: Tue, 27 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769534633
