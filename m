Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D57315530C
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 05:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763877114; cv=none; b=E3ptSuKDgUk7rF8pJQhaAXr6bbtb3cTIaO44g8g5mSauqEILXUHVJvmCwBekN4Ic3gL9fr5ab7n18oz+X+MZ7J1Kr16L9K+b2lqSvHxDUT7+iHixdNLgQai26WgMPuz80IWl1AfjtGTNNT2CUu6gQv289AFG9oxlIUliaDnp5NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763877114; c=relaxed/simple;
	bh=jUmj03PSmVWrOB6PwBeWmct60AN05EdDg9Lwczuv03Q=;
	h=To:Subject:From:Message-Id:Date; b=liWzvia3nq79rSgbpPFjaiYodqahdqO7JVhG170JH0pPYJboco9yAsisodKOqJQBHcYQfb7I3NO2haLeJ9ZPCyef1NBg6WjsqVcE4dfo7YbOZ6hlUzLWE0Yl6vEXL2T08gnJ1CI90OhkuZNZLqNTS93oSUWtPEfCePE7LYdssIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXYEORLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXYEORLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD451C116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 05:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763877113;
	bh=jUmj03PSmVWrOB6PwBeWmct60AN05EdDg9Lwczuv03Q=;
	h=To:Subject:From:Date:From;
	b=DXYEORLwR15TrFkOxOghV6m1P8lnfeLVOAiJOAlCqo2juMJZsBir33cfnnlWIdb27
	 +VjrkFSpHg/6XJoQNRXiapHS4l/LHA8W/tGzvSnz1zaToN0GGrndaBJr+p9qHAwAGL
	 R96bWNHdYzGJ3fMnUtJ8uouHHCfhsNyksnOl+1k809lXVE8hCE/xRatqYWZ+R9ZMFW
	 0+y5ipmGsTUcBgzkYE88IghNNAZDbIK4shzbG1vqKzE5OtalehQbsalZ9x2sEnalwW
	 WoqEX2Y2ngg4RIwQoS5VWwqJAlEAwJbtsgU1ojyAOSH5D+2HXOWKdXzgurM2+Ulaj3
	 qn/NeSLSNjAdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D65CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 05:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176387711358.2871.14429073075310921985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 054ee280af964386ac0b53b21b85a75e6d15059b6e961c174b894d27ae1c2ff2
Date: Sun, 23 Nov 2025 05:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763877113
