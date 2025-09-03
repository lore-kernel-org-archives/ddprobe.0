Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238AD20EB
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756878594; cv=none; b=qggZnxWO/3Oi54l23D0Y20aVV0jfC4bcbTLdnyHKKnd4xb40aSB1XY6Q2SoG47lvejG2uFzYA+dAL6zi3jtaypaK6o14FfGCQBX81u5jLaUmzs3N2drOF/hmKD04n5gzaj8y4stGGsZ4CdrlLg4wWSBpcDc05eAILAvXI01x7/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756878594; c=relaxed/simple;
	bh=u3rgKBHvk6kaH3/aPfCgNG8etfuuMuW/ZoG8pqmg2lU=;
	h=To:Subject:From:Message-Id:Date; b=r0QlrtNNM6YVWCZOOLYwFYeHC5sn7mVyZGuPDDhOE5W8JhcUPmiDJCPOquew0wzZleHp3udkjjrUF9JvTRryUoa7dtJ0Yr1bHw17VPqqoIDyB4A1gmg8gz0ORRVTVc56XgXt0JM/P5J/kMtdNf59dwiiHdu0n6rGY5I2SJr2AtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRq7LCYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRq7LCYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4708C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756878593;
	bh=u3rgKBHvk6kaH3/aPfCgNG8etfuuMuW/ZoG8pqmg2lU=;
	h=To:Subject:From:Date:From;
	b=VRq7LCYcH5ir9IuCGR1B6x3jvS7xP1V0oAluKMPNo8svPTzp3AUnk0+FAcE7pJN+E
	 GHIoC/R/PwN/xshFwihHGqTnrYKo3lnhV6sB/uuUEvGuOiOO4wwKHnHuEkjpF8qtub
	 iHI5kYefAS8I43Nyrh2aiIj+i3b21vwbAvdNHFHrLKyH0VwGybnfAYuv0yAJpFzn7o
	 +2vviwE7w0riXDu6duak6YWejGY8R6bkdqQpA9+LeUmWazEQ6UlkQXzo4JBURIcqOt
	 JWvpZgdvOb3k3Mpj2TsCgFxtzX8B5AwWeqDhbSOmwoAiTtVCZcimH9vvvyn4dpYWWv
	 QYA1K12R8VVVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907DBCA100B
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175687859358.3177.3251793642156536853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e337b9e852bfe7c0d9b4e3d72bb7b6f043d577b0f540fa9a7d5712446031ad4c
Date: Wed, 03 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756878593
