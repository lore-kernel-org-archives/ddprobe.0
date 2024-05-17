Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EBD13E03E
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 19:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715972543; cv=none; b=g6qfGUT/ZBvnI5kOvirmnSqCcwrg7YECsjLqb6wcPh2aiK0YgpRI39khK0xzJJbD3I/cwJYNx/OZLcHK+/iwjnT7XpOGEGTQncewg4/MNK+1LExPOVNV7oItNXmxa8yNNaqH8+aF7FxdujnQFK3AKeKJRz7cmm+Z+TjbpAUbvQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715972543; c=relaxed/simple;
	bh=+CPlArV9lnCE0Z9i3ix+5NzmeOxFf7fsdetCZ2/7Xx0=;
	h=To:Subject:From:Message-Id:Date; b=KkUll66iwEwwiWJQtPuOfEfu4a/Tn/MqgfzY3vDUcGHuW4KoAW1XIWI54JbqK+7/ZWxeFGQ1dTZR+nrxBTkU3XLRbaRnpYfGW/lHWL3gH/9C3Vvg9N6KuwK4TSz4Zb9u8vrn5KcqvjfqMVGjez9BiEVIfneKmNYm5rLmM1k2DVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBSKcc2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBSKcc2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5EF0C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 19:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715972542;
	bh=+CPlArV9lnCE0Z9i3ix+5NzmeOxFf7fsdetCZ2/7Xx0=;
	h=To:Subject:From:Date:From;
	b=DBSKcc2oFgRoPASTg/b0CtECtekhY02vcI7rU3cqMvMc4GhODQ446LWRTvUb0mjWj
	 gemUhK3RdPxYKs87Uzc4Bopph05IgNwfE7c/pcRFQcRlOM6mf3U2dYCwMOgXIQ3j03
	 ATadyrEEEYZGtyUdk3AIUyG0znuzsD/uJknnjSXGduK9dDyfPB1QDkO9m8W0BSd7D7
	 R5qroBzCJhRX8ni8MaK7JT159f0DHk2aAtDsRvNAiAa2143gv3ptK6OZH+mnYcWh5X
	 EdYkL2nYgeRU0vwWMqf9HaKS1p5G0t4ku63D3jnaB/HS99tmKIvfFDFpUZUAxIcv3w
	 xcgkYFW4a8Tog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4DF9C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 19:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171597254286.11182.16298938590126613101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5adf7551f7e9dc099d334fd9cc189f4620e1981555aaec9a0d8376fef4355cf0
Date: Fri, 17 May 2024 19:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715972542
