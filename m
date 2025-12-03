Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A781EFFB4
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764735174; cv=none; b=e8i8jfiTlNXw8BYbOYwkpN8pD3APGL4Zrz24MFTiTeVgxq2qFM8UANyj4iKyt+/LPkjgG89mBX2dX9Ci3xqFbo5RS9EbPQqQUz8wG6RdM7pT2wx48JRakbqHRPodUYfM9/asjAHQKyWoD39DM2DWzn0JAk+hsCYj/Mif0hT1saQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764735174; c=relaxed/simple;
	bh=h628083o8eRqzqaUKcONI0SO8cocxcdpMBZn1XgDwR0=;
	h=To:Subject:From:Message-Id:Date; b=PTt3cKFapHrfK8iq3wxdzlStMtWjwVjdM7MWFj0C/MJoOPWSL9mlioGpLFQvr114bICzkeKQox524i5SU8fdbLSxhdMnZL9fsYleqa2vM8juXmNVVXjQB8bm+06weqj1Ocz2cAfqnNrXJtSj7i9quQI2fiqotT/z1K5E63bqIwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXb7dKiz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXb7dKiz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B438DC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764735173;
	bh=h628083o8eRqzqaUKcONI0SO8cocxcdpMBZn1XgDwR0=;
	h=To:Subject:From:Date:From;
	b=TXb7dKizu8mTPxvcHHv9mW8WHRwMasZUnuUwE5PfOxe+MQkiYW0YWp2WdkVrjR+t2
	 GZcfw7l/fQqevwRPri8cA9p+5QXAvOsKYIfFRH5Dp93kEETLM6ozM9Murb5PoUX1bp
	 gZLUzkZS+WpbcQBjJdyZGWBsSIgomQE1C3KO+iXjDXMg/AgunKCZQPgybAPp9cnkjh
	 eNdFMP6kOwgBCDlEe4BNRcOKJxsYRMC4wkwa2O8AKJcGAWOMzRJMP3EP5MyrupbKqt
	 ir9fcAfAh9qcQhEQyWkYQSGNcRbjvT25iG8x9miXAroKzihnhA+yyEvx1Lt8KE+jur
	 EeNuS/1f/UJOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED15D1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176473517363.20576.6163139846769669348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be030f3287e85782cfc4928096fffcdfe26ee1af25dfbfb1af4af76aab6e808
Date: Wed, 03 Dec 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764735173
