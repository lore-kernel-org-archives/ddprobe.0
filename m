Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FB0295D99
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753873194; cv=none; b=Su1jy/6aKJ60306UNaN3Fw9VmM63rH0AmBG2uHeOsuu2VpSogmtXe3vi2gg2toT9J1WP8/NIErjg8lmsVqo3gJEon6O5lXcdiDdUE3iuRCIfls+05qhmfrgd79o7BaEVlUVhaUFgEzvhCQsFA31R54B10wPRA8FgCwby9l+TZh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753873194; c=relaxed/simple;
	bh=rP3zWP7kWZ8w03r+sbVH6TZFdyPCdO1euq9Jti1eBKA=;
	h=To:Subject:From:Message-Id:Date; b=rM4CcevEYoq8g8BJJNtEdewTpzsh46cmK6mQYUzAPmfy5nE407O7eW9WQc2270+aP94wiTcOp9gEq1q1qkLmNvW5ncgMhWdsroYSUqM/e6Gj4sp97KetEZFAjGSjUK1CRf56M+nyZycHizgfjOgnFqTCKydoJkuTXAZLxbmveNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKE1FAIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKE1FAIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAD7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753873193;
	bh=rP3zWP7kWZ8w03r+sbVH6TZFdyPCdO1euq9Jti1eBKA=;
	h=To:Subject:From:Date:From;
	b=ZKE1FAIawgkqLtB4RLh9sm8VEmrJM1jRAMqmg5MRTt79OcbrEVAFK88V7WWVzWuAq
	 5EmSsczDGNFsj4qT77zGWgJT00VrppMAAnN2s+bo5x+z4NfmhRig1EcdtxLvl0PT9x
	 TIBEsnLS3m5BbUzqCQrZRhRcC2w4vmVkrCG7EtRcZD85Smu6vLl7hnKAbilF1hCY7C
	 l1HHNPmPXVYTKcJt/gsMDy/CSloO0l3pZmbYWoohruaibbMddg9hypHca40MBC33Aq
	 4CVB1RLhnoGoBtUQfN0VNGWgTVsg7SUQsPq3xhrSHM2bWzyEXBMemmSj7j+e5nHJJr
	 z/7h3/+Hp7JWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F6C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175387319357.14026.10212968903520565516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed37b021689c58a7e0473dfea5ddbbd6f8c93855d7129e13c63bb81026048d99
Date: Wed, 30 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753873193
