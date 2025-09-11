Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DF822126D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757584194; cv=none; b=rcdrwbJ4g0n2WYxpBlRnXj5Gr1Ziv/JORDXkWR2eVdQOSQjqsCCYps16jidDqeQeQP7k6vz/XqCx1TBDXDg2EM9V8HgmPucsPKHGyjuYnU3aSH/0CHJ92y/eyrVtxvteuUgABqfS8zjs8olgJyjOJKfBIRwL7g2BmMeFrzmgRPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757584194; c=relaxed/simple;
	bh=SUWgFGRNNieK+VMSlXuA5OrjjnvXh3O8WXevBB8Aohg=;
	h=To:Subject:From:Message-Id:Date; b=Z0ycRg7z87g9UbvzaqbQGqTXX2yVXUlcCbOVWSmgk7zHMqTO5ChDolc2/bh2d0D6n8eN0WzSi7PVNzZc3i+foox9+lAUGce2ntc1P+igFjgpWU34bH0B8/nh9Wi9IyCpSj5O1cF2sSdLfUF5qx7qoM3y1RJgqMA1PltiZxeVimM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMF+1cCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMF+1cCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F91C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757584193;
	bh=SUWgFGRNNieK+VMSlXuA5OrjjnvXh3O8WXevBB8Aohg=;
	h=To:Subject:From:Date:From;
	b=DMF+1cCcIWZaGV8ulUX0upSg6RyftcHQqQrQbv9/AO+OEBN0TFGtqm4K0mCkOeFt7
	 EAZO28uFHs9XjHpiY/oTRVuVD3hlOxZKvneXBP6LXLBBferrr2PfsSKTiSiik5Vx7A
	 eBYbejSUPzNxZJbegJFVaSAcs/Vq0RSZ5ccUfqap6d/5FM1GRqFSxRRaccI6wm3RSN
	 ISH1jhitA72l9UEyowlKF6+V2lxcr49VpodwHSpCFJcWr4Jbj+bjQDQb62Nd2UZwnE
	 /Cc6Br0xY+NdJd0ibsY0Il49aLryyKkr+QyWXtXnD90vq3NZmwmQYUQkLOOJjdL14L
	 /PPi1mvXZbpFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9236ACA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175758419357.21417.10971976638983664567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f48f81b53c7cc7a5efcd995a88a36e098e63927349b32291f10107108d55cc76
Date: Thu, 11 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757584193
