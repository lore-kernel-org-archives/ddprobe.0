Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4341C3BCD29
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790368834; cv=none; b=INI0ZLw5hBrFh63O2B5COI2j4PvaQ9fDi/oVNeIYPJt0h1orAAXzu1HzZkpUBF9y4RH3IegcUOSHkhlG5jLEtTnyQ0/Dw9d0vwyvNz/CRjbSFp/GS1gdZ3gTfDOSll+fFBR/5EzIwTG44JiLwbPUh86Qeeqm7l2NyyqWx3oASdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790368834; c=relaxed/simple;
	bh=zKtcUMmbsX+XQV6ZeAMq3taECJrUO4gSdjSh2+kzZR8=;
	h=To:Subject:From:Message-Id:Date; b=jn7P9Wygi5qNFAhQc2LfvvjO71PoFfSNfwAfIk89dhvIfqAOec0ZpMrUFMb0QG5hzB7bT+u2a6SiaKzpg3zvb2tHZwrI6jHXKqSo7oLpyNrpxSM7BAN9vAUna/rED3EGSqoXoVkXsE5Am5Zh3/9PM21VIO+9bzYc4GWfd9DVXE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nzm1blZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nzm1blZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9A1C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790368833;
	bh=zKtcUMmbsX+XQV6ZeAMq3taECJrUO4gSdjSh2+kzZR8=;
	h=To:Subject:From:Date:From;
	b=Nzm1blZ/WQx2/sDulyUPBJwuEqa5Qcs/jk+virogAqH2h/MwZo0CnTNwFIHCAVpI0
	 899uItuqalkY7FxcM9KMP9m9aj8aSvvj1VGegYdgJCTeptojYKeWVGV289bgQvmji8
	 d1evvG0qbKOZh/14tPLxg26hI+QfdjT2dhqR62xlzNl/4OSGoOic+xcn0MWOaJoHSc
	 lpAEqXYJhKEpiw3oIfKFPv0KzyGrL5VT/F5GmT0aJIjygf0B9jhLtSb/OviVT6suZQ
	 CyOGD7TcYUXwl1Lp30FPOfPZ7xRO2A8pTh7zd5WRp/Sg3m5UFl/OGf4Uu4+KIStc47
	 qSI8HRdNMiwgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB384C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179036883369.3286.13267824568890103919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7139417e67b112b98fe7041d5d9198b77c8c9caef6cc061aa2686d5cd43011d2
Date: Fri, 25 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790368833
