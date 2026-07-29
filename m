Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653054C9572
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785343234; cv=none; b=XPEtCRItEAlsF3so5qAxhprfoUXxj7u7noZg4Z/x+KlV56V8B1tk/EWELeQAsaqooeRHrjPhbqA6cgZzVaRJcBWWTryQ27FPvce5C3umZJWTBNX/K2hynFDuSJJFtmiSN8eHOIBQcXBt7F71qASOhepXJVN2rJFCTzfnN4PMWe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785343234; c=relaxed/simple;
	bh=Pwta8npZ4a0FijpARAuepPoUJsaquQwbv6xX+QuWmxM=;
	h=To:Subject:From:Message-Id:Date; b=cOd3b5RWQDeDq1U4QBQVs4r76tk5dYKIGVPiL3Y56QeZpewQLM27Xi/RGOrj2ctm8IRBg9ovNOkeBHGNDuCKN2kjf2BWVy8wKap9fRuQ+pmbeJe4qdHKN3oNQ2ZG/Eu3yMYV6cL05qk2ThPbrutNgmZRw47arcbEK+d8Jut+7tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7u40DN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7u40DN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C05C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785343233;
	bh=Pwta8npZ4a0FijpARAuepPoUJsaquQwbv6xX+QuWmxM=;
	h=To:Subject:From:Date:From;
	b=A7u40DN6pYP4T2tTzvUeMKsiJcE0gZ5TwZgo/Jt+oJdEmY3UTupLXQm2Qnbh+ruE1
	 U4mDU1furWM043SQgm3LujiDbQWQzJaucswYVfvSqnyEOA+AOcfE8l6EWca1o7WMyu
	 IK9UvhkOn8znR9JSyyZf3heAVOR1QhjUe/rywmxYC55B0wwvNFbk5KEmFK5Dzz5PC4
	 Kav2P/jJu4BzbrwAEFvxQa62+M7FLtiVdxqLoWfuIiAvx4+CTjH3LBVGu8vC3/9M5I
	 UyK8NQSKYIXnneiS1eAVbEaVbSiNe3XEXiSmLzPSg9gNispaxSYIRpkwUdNsvpfrzj
	 VFA/j6TJlXEUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A808DC53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178534323367.7637.18262819378177062006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d6f16552f67dbc29fcd1741674fe11d49ff8f28bf10a4b504bd5e8c02ba2c98
Date: Wed, 29 Jul 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785343233
