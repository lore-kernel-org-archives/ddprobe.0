Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0057B21FF21
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767110634; cv=none; b=tKMKvQvlvySorzKfn4Y+OxJLRKE0aB2yPUQnAX5k37fKbK3Z2vtPjl0Cun1NW/bItnG/btjT+1t15spzv+/ctFH/JeTo/mwvPwmNYuf634eSVBpbtxJC7oPfqWU+EOgLNR2PGHCDgSk77LtkbEBGCpSyl8IQXjZMZPHn5xVng2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767110634; c=relaxed/simple;
	bh=nAcr5MDE/xad5emJvZdpqRpPnS/kv8xGskbI220CTaM=;
	h=To:Subject:From:Message-Id:Date; b=luPQpk6hou50scHnx+R4SaxefxWgeIPP4A8ui0eYpG99DJwqGixaDVnFit9sj5EY9FeWY461CEw0qjp5anbHOanqCWXKQqzyZDhkPofTY8mfhVH92GZAO9Ci6MGvQPJxCfpRdBqnVFvLtYD9mcHO2k7PDOCUB8OoO1ULmNZ/SIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVa4QKBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVa4QKBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D18AC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767110633;
	bh=nAcr5MDE/xad5emJvZdpqRpPnS/kv8xGskbI220CTaM=;
	h=To:Subject:From:Date:From;
	b=lVa4QKBDPxCniqsLytpZivEDGoXJd5sao+fo5B38MkDXQVNrVtMB93YpfhCg+EyAu
	 tjDQXv5018+1DYIJrRXzju5lEyuS+paTEs9r8p15tTeBhIfJCu4autNNXGXuYi+FdE
	 qIYMn8vQvihX7FbNvnOu940B3c4MKmYQ/27qVfm4Qv1yRM6vv7wfnIVbM8B0510w3E
	 mCVd5PPVWjSK7nne8Hl3qXtgmq572Mam0H5ttz9G203CXiIUDBF4yIeCg3+aSiDYjt
	 gw+A7njYhqkIluDZyWlX3XixV0j6ctdqt38CH8erypptsQa/9VW9y+MLeyUuZeJyFT
	 v0FFeoqZ1Yb5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF1EE4983
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176711063358.14279.1546816606405108240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 089d90c0bcab59ace5efb0dc43224a385acdfed8f4e75e98c0f76009d1b45fc9
Date: Tue, 30 Dec 2025 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767110633
