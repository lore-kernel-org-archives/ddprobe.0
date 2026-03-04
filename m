Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DCE37E2E1
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772597094; cv=none; b=Fqi9qmUWQpvofOauo3WVQ0FzevbnI5YXfL0Lc4zypk8dbxVSdr3+cdKx4qPgdaMRc1PJNIdSF7WpBy8jj1lYojvHonJ9H9tncih6l6pZMzkxAoFN+AtCI8hjEuNkjVHHa6/7J2EeY/qWFuiU9/rRCje9a98b9E10XHe7VCngdck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772597094; c=relaxed/simple;
	bh=CdQyxu8ywDNRAjFSim/w+Urc5XDS6l2RP2HK5pRxwN4=;
	h=To:Subject:From:Message-Id:Date; b=A1hOgIt45Yz1okA1Ds4W8bi7PLMvDEvO0q10FFElUm7M0xaMUCkg/sWA19T0G7PJAhxkVl7EzzmgIMnUgPStZhcQsSBG7ntOdXyDCTOM8lyyqCciIGu4e/pLGcEwfNYAJYel5tOmQuEEHH1g2rGU9yObRRA0x3VsHOzDVxcT2Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/9LIi1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/9LIi1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB716C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772597093;
	bh=CdQyxu8ywDNRAjFSim/w+Urc5XDS6l2RP2HK5pRxwN4=;
	h=To:Subject:From:Date:From;
	b=D/9LIi1oHi/V/A+akkO4t1e295+8K5s+sZEbeRSQ6Lh2A8DObuV2kM72/OIz/N/+1
	 4JAmAV2a1MXsaX+4UrItXIXj+TbxH7ETurWFlooqyqNBsohKwG8JEs/fiOZBR7avmJ
	 GXj2PIUXuB5YB0RQSp7W3I+QQP7Y7ZgQVpEzDh74t5i5CeGroT0zAiQ/2Qhtthd29H
	 oTx84P/FGKT0u2Fsh3bNtIGkp3hWEr5ppz9KfWpW+1CoByMncKCbf3MMBDPu3La6Cn
	 ZUZZAJdsisNI+5sEuwQrenqXHMg1FgoUvPfBQXejyothCZQzqq1j6DFipg3MEpv6sv
	 XI+ridyBQXUjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A20C0EDEC08
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177259709364.14383.11721963897354720745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 281305b67aa62be3039a2cee5152b1b486e04afa604afb1af09eddef3bf313d9
Date: Wed, 04 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772597093
