Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112C92EBB84
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766165034; cv=none; b=mx1iXWzxLgREChAuYly8Y5DGmz7w45OCrgzDwdK/o1SJ2YZ6njR5/EsqZhLEbG5clnGkEnmkKMEZQ22A0eZck9hQxEuhYEvZvzqnEWk+iCqaecG9vXgZdGc6dT59bGWWkMUCVlzkaBjXH8wYovz/uizMq/PBm/yaLDZ8m4550do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766165034; c=relaxed/simple;
	bh=461EcHsh85R4giWiH2vzc++3Nud3c4az5wfd36mSG08=;
	h=To:Subject:From:Message-Id:Date; b=LOrOhofK81CUcUxyIKJ6PCtosHXLWTyjKmDxkDjIDmgM3LLD2k06KMQwJ2RK1JyPJtTQpq8HSjxwegKwliZoeOijeg7+IL7kcwL34kBNoi2++FkRDab4sjQTGgeQWjyQXVc/V7LJ+vSBFRPVIDoV2omonChyvBvlU8TVdRLEsSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzW6TgGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PzW6TgGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E13DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766165033;
	bh=461EcHsh85R4giWiH2vzc++3Nud3c4az5wfd36mSG08=;
	h=To:Subject:From:Date:From;
	b=PzW6TgGhQX0SnHGTLyqbPgso3iZsF1N3jIXJbpEVgNFHRhl5/3QiSBu9o2wwPgIvo
	 08S6BqXQVvUWqhK8Z7HJguhKqYSl/VpiyxQE/Er9U07XbDEPO8ZO61oDA+Evwh4BUK
	 nNbcutkJr93/ivYH701HtuFI2+j2H1Tg94vSRyrlP2Iateaja6m7xr/NOJhfT6d+MX
	 M3kPLQZgTY0Z6Ywy42XmUGBiVoBZLZqssm4VarFBB/o6ZUd8a9muHcQ0n7m4ZyV97p
	 qmlUN6QPd86i39gBtti9j4IjQ2r+526Or9kBRLVmRaBd2kJ1AZdHcMBMEuSW6vnLRb
	 1WZRXp+7YrxFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F756D78770
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176616503358.24338.6292117973047749710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f73e2d834d9c18a58f4d134824d127aa96c7b00d911e8cab44192c860b49ae8c
Date: Fri, 19 Dec 2025 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766165033
