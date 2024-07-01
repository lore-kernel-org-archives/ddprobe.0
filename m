Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547827D08D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 12:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719835523; cv=none; b=tEW0TH3+RhWkeJ14qhmJFXr/RgiOrNz6FM77fKxfnk4/mfrIRKUIQFJdhVq8ybXqDg2CH5Q5aYRQJgypxE985k1zLCk670ZZBHHMFm/85Rftqtv/Ac+8TLonX3C2W6aH6ELBMpzkiPufCiOv0y5iPgz6mwOuTtGKE70HYaV4Kpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719835523; c=relaxed/simple;
	bh=ELXc5IhFj3yumSMwlbtDztdp3zjImmxD7KsDNe348Fk=;
	h=To:Subject:From:Message-Id:Date; b=bJbf9uiwS4gqLeceJkVK1eXRdKybF2CdJqnrAnTqMmLlITnBfpVvtukL/WyNeWKESaH5Hm9esWCNyvoRX0epKrpZfoHnC4h1WRVMw7soZHQarp1Ipege2PsVAwbJi652LpHKEypGSIf79PKfvGQghYFvdeHig2kE4GxOibZ/9Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hn7wNlF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hn7wNlF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1CB2C32786
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 12:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719835522;
	bh=ELXc5IhFj3yumSMwlbtDztdp3zjImmxD7KsDNe348Fk=;
	h=To:Subject:From:Date:From;
	b=Hn7wNlF6SK+BkQB0qGy7JiHGE5NTZ7rfEBHiPFhSN9WOARyj/k2/g4AmzCjlfvZ2L
	 21eItqUlZOxMdvltAkhgmnrxJ8c1wNip51eZCguk/iozT/ENLq+vlp9E4UUQukGrKI
	 ZTneYYY5DFJEMXrTHsBH9+kY0ztdKX6I2yECTqDXR2JOrRixE2GZEc4qxmaRUBquEH
	 7FbQxICpqhCN/HgZviyWWle8ep+d4ZV2IAnVF2vHu9wgUvqNvb7pJKl42RRDFSFjRv
	 0h0zQ0sn3Ehrkdwz9Hgnp+TQOmnlerv4tnvx6mwTsXnMh2jgNDjXG4vPXgCl952eMm
	 Y78nyKvpeFmBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEEA1C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 12:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171983552282.19571.7289678120712475026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a4ed3dc960d650b73e653e4c2ad48b20dbb6e81bfbdcff57e6e280fec347ee4
Date: Mon, 01 Jul 2024 12:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719835522
