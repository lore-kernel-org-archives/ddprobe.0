Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D43532C8B
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755317994; cv=none; b=RwRlHqrWs3bDWayHLtbkDSmBUiGe14ZSQoic5W63vyFyZsIF7ULpNGFaHE1F0VaM8FGwlPJWuO3av8TBx0hO7NlUXTktfg3SwRff1ekMC38oMNikBceQ/t7TCgahRd1bpcLLByQV2mppZ1vYcylkr92k5UNrfl7q6qPDxhLl/Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755317994; c=relaxed/simple;
	bh=OCEaDMBBjshwHdfxwYNPk7r75rT2SuG3z1kOin/waMk=;
	h=To:Subject:From:Message-Id:Date; b=kzAPI6Vrj2VZFSETjX8Vt1CDFwuwlf2sanEdLUl+297n3LoRDgIFrWDMabnNp2JpbvYEI/kLOY2fg/QAfzhefPkh4Lsei3QyjSuqLH3LaH03U0FuasFgh8ktFTRMPmHMWwgUfmTgArllJOjBX+7Xxo8l/MISim41KHYIaBr1W70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVPO/0y8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVPO/0y8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EB1C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755317993;
	bh=OCEaDMBBjshwHdfxwYNPk7r75rT2SuG3z1kOin/waMk=;
	h=To:Subject:From:Date:From;
	b=CVPO/0y8e09duZHNpqQCUQuoLDBixydZYrn9oo8uCL9Ke7GRmBPZVroVfwerK0d/d
	 uuW3oQkdu4aYbXOSvHYD3HlyDGnggGpAbZqo4ZuZ10gjcPs96bpfnpjIe7QNuMr2/I
	 6fnbL8khn2wteCExbhaCmo1weWQBABeKpDG0UlA/hcAgn2IRhk6nu5x8LtmsmKGli2
	 skTyLPFHmDVd97fO0cXms6M14VVZ1bR22evQ3aNLJcjy0vEf11TXDEuEZdu6zsOgm5
	 B2qKmUfMwZo5Je5ukCt67B1pwZdMHnTc9+LPWowfwjpvFGFKxpr2MR2NeCTE277QbH
	 oU7g7IouubYeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9798ECA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175531799358.20708.1698757754877077993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09360abfc41666a69e6b71ca1ab6873a5282dfaf4f96c3e68dc4c690f3051b2
Date: Sat, 16 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755317993
