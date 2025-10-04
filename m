Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A61215767
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759588194; cv=none; b=CT3IcMEcu5vGlo/Y+BFAVDh0IuBvuwJ9W/OwwaIrGPpEopR10f5OU/KBP3dvh1eBi+yaMYBm1lYrTG7BlNHNRW+cBWCQYYwCoKiFmLBQVmG1LRXB2zuSl/yrgqA8QFzw1X0hfXXVNAebF8d/5Wy0exUtfGxP5nfQUftvfKVlt0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759588194; c=relaxed/simple;
	bh=n0RE6iF700beYAAGwsiUn7hVPhbw0Zftqk4S6pTnkvM=;
	h=To:Subject:From:Message-Id:Date; b=kFR2J45961E8bb4Dc4IDB8xz29guEA/9QEJrQ63fAW3Y7zWlBAOcPFAghxM9jUdhMHbKp/4sTXb/v9/0LoJqEvg7Fx1MLWkyd2+um9RWYSgsyAFLwdb0LTao1tS7DbNe+4C71msgwxsn/TyeA9Ev2OfknPmMsMMU5UleLZGYU+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSeIJ/lk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSeIJ/lk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7338C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759588193;
	bh=n0RE6iF700beYAAGwsiUn7hVPhbw0Zftqk4S6pTnkvM=;
	h=To:Subject:From:Date:From;
	b=eSeIJ/lkO4GYOrjw4mL3d3E2q6jcThNSPLx2TdxnBOh90M+T8JJCiqw44krkwQEJ0
	 KKpBCY3C3QHHyvccQ18L5QwQrIMAMT9CAKMxe8ueJKtXkRbUqbsRm65WfVjqlT9ES/
	 XcRcqW/jJMeuAROwqx4fC+TOrBTzD0VZ1biE+fkEMvLcQ/HT9b4et5VdDikWZSrLfz
	 KCou6TklHmaCC1iavUawBkgSGPTsZOYr8iYDPb180pU7HN1lLTAHrknFftVu85qYgl
	 w2r77DE2m5Momxzh6LpwgWSimDq/rrDbvFHW06iIaJWn7zOrgXm8ib45VvN5o3Bbt2
	 U9kUAaUJA7sZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E03CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175958819357.27592.5074026557317152265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6fea70529e0206a30ac7ae23889f6210a2b69f603f9816b4cbb022a4532d4e7
Date: Sat, 04 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759588193
