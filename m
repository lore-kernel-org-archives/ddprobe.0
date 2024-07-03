Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DFE1DA329
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 12:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720008923; cv=none; b=p8FrNfa0ZDVthw37EUmrTQuyNnj+nHJpSuwTs7oQgXVKJCYQ397m2lLRx2Qtii2c4INXDGTvmCzy2yCtejOOWz9WCpF2wtZc1zBz8kz4XaCbiiHE0Cr4mLExNP+J81KdETU11i/08l5Uj6REYxBIujsi2Jq7TdhmGrYkjxoIRBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720008923; c=relaxed/simple;
	bh=PiTkh3gN3Yx+o5gYEzI2PQn9Kdh11MN63CFnA8QVGlc=;
	h=To:Subject:From:Message-Id:Date; b=V9tNP3xCdSh5e7n6HE3Hmy6LGQ6HYONhAvCkb9lbjMmVHyZ+Mz2tJbwbE0eEndwWuRAys3VEvEobJPkMcpsiJf+/qllBaTdIRaOEokCfCggtWh3DxRgu4DVoWWpcmvwrxMVXxJ46UcycrgCocMSoY/K9bDZOwExXo+L1R0VAo3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nARUtIGX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nARUtIGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E39C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 12:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720008922;
	bh=PiTkh3gN3Yx+o5gYEzI2PQn9Kdh11MN63CFnA8QVGlc=;
	h=To:Subject:From:Date:From;
	b=nARUtIGX1In5JNt/6NQ34xXJVhntWYRVI+hHHyrJV6L6YbzEiYH17T+C8/vuJg3bJ
	 +1q2QFx6f3twCXz0lqT/XYNlsxwzHash0lIiXrOExJjHl/O2jY0b1Ik/HKuvYpanok
	 /jHilZEBvfD5oejsaN25It1jnARb0Wh9ISseU1R/ZlJjerFPzqKCTEib3vt4+oVID0
	 j7kUPJQtKtOmD7Mc7S7vIoqoGQhvxIghRlB24ABJ9dr5+fd202RStGg1qL7LJzW5CM
	 xplVHZBjropn5WsM0esnt+j7ByvqDlMvhhZXKy7l7BdoTFh0u4/6zMG1hQA6SMiO14
	 vJxrKunc8kKfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF4A7C30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 12:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172000892277.16365.18352745648748828863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9349cf8f4a76088b6f0ff4737c409257299e3b658a02fcf55c21b0500e830810
Date: Wed, 03 Jul 2024 12:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720008922
