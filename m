Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AAE1A55
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758241194; cv=none; b=P2xPWfuufgymrV2zSHKoruJpn/HbqBygY32PYqvVoYYYfR8Cw/xB0mPVaNNoqD4Sm2hhOtEZmd88O0GF5yY6C0pACXjxo5PgZF9yR2Q6ARRe89Q78q8aAH9/tSUzu2AG6OekG++9aMIGAD8wKdUbeLa5h8GwhMoBMx6UdHVhqCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758241194; c=relaxed/simple;
	bh=nyUaJ/QwgglzbWPVXisMD3f7hvc5wy+q5liTcxMV818=;
	h=To:Subject:From:Message-Id:Date; b=B4fHN6KGf8pbverZEgNyBnwtjCXUeWSz8Oh7OpuGI98LwyQWi9giLV5GpWG49nR9khZsZqXlfuXLPXMZCQCdNBEotIHZN644+sA1hf2T2UCNCnGX8j1wPamJgzqVqMVQHeUVbuTGr0YZsbo63kAJNON8lN47iFgPcVuyFvi73Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQktQYPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQktQYPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6155C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758241193;
	bh=nyUaJ/QwgglzbWPVXisMD3f7hvc5wy+q5liTcxMV818=;
	h=To:Subject:From:Date:From;
	b=UQktQYPJQ0CAMM5fsk6LMx/7rxAfUVvfUcMked80asDgFpaS3w5rp2bysaNmxILbO
	 7JnXlKNwCqewLiy7Rn5gk7p9y+U6xRkKezxFctyRKGq7IaaH5M2jk6TL14VUWBNiHe
	 rPnuv7LYgMKohBVCNjXYso3FaZZkwwSp7mRIp6867Ra8IUo7Jo+YE/tfP3FUa2fjIg
	 8r/aks1w/hC3bagTSB5Vdrtt372b1qMqykL5WB0FtOq6RUcUYyYBqYLRHhzWWkQ8WO
	 ltSc0B5nGWO6AgrmG1gKrnNd4Ly04lbUBYg6ZGivWX7LsmztcSeGlCjBFlAEo0PvrE
	 2lr5+VJtdE80A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92957CAC597
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175824119357.26732.2769958079606855567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1242f5c41c036f22e6a31e9cc88b4fd652ef383f2a3f56bf48bb5fa115629c8d
Date: Fri, 19 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758241193
