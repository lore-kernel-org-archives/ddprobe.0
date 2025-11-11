Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC143064AE
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762876194; cv=none; b=Vojt/SolDM1qu5E4HfvWQaniZwNxYxMkjoC6/3WlbCCOjvNcMcOJtsJ05NiawnrTB31jQaIjQIQidXxt72RF5H1vamxV/suvqTxgKgBWGDXwG+xhWUqjvg+zy0yFQv+U2ThgY5YrHXc9pKvyQl4UfbJs4thxfc0eh6WK1W6tUHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762876194; c=relaxed/simple;
	bh=s5t9lxmSxmYk+K6mI7L3hnumt+86DAXLizhL33A5k20=;
	h=To:Subject:From:Message-Id:Date; b=etvNYvE+/yidvwbvHYZpKGbxqNFL2Br25qdzl1Yt31/3VEy2UeL2aPC+3jC6F8wdP6Up6WKZRifBjXJYIDm+wwi849qER6ZUdCAK4l/pzYeUmEVXc+AVPWd2jfuWqdwIkQB8rLLRpJmOizFOJvGWzBDWU9iD1SYdFr6ggynSybA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcNMiVxR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcNMiVxR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9879CC113D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762876193;
	bh=s5t9lxmSxmYk+K6mI7L3hnumt+86DAXLizhL33A5k20=;
	h=To:Subject:From:Date:From;
	b=dcNMiVxRwNaKmNazpuDWYMm2uu4CgFO0SJH6OHfLt9uxh8c4U+za10NC4lkOB8a5t
	 M/VuEbsLXYnd8KGlEXsidpzp3WDsENwpQWnoFL+z03h7qPmXZ0GEe502s6nPlmscTg
	 3CKOplquuXIstUfePVXl4kTPh+OH9JYfisCOTkL1/Fxx5SjyTTBriv/o588N+4VY90
	 Skhka1FrzBRAFrZErJC/YKtL6WrrhcccPcnRLy5XG5iwygDsuqpcIkuxzqGAeXCN+q
	 6TX/QbihG2cXsc+wWx3oFTzgZCspC780YgKc0oWbH1rDoUUKFLS1xh7f+MVuTM7YZ2
	 K2c9SCvqZNa9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB01CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176287619357.12910.18153606566097956526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3bfa70e663cb28f7dee3766e05c7c17ed4b4b1260ef35a3dbbcb08751a16d5
Date: Tue, 11 Nov 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762876193
