Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FBC283CAF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773197094; cv=none; b=jEsOXBsmI0DkGeKgbL08Yv6caUCUVoxbhXTFlmlhF6NFvByv3TGWvzuLeUKjm94yu7JfjriaBVLaYijEWBYDLm5KpZNW4Dtu7lOSfAHkvNfu+4tDHokjEkYAKe9fO3lQ6g8YFvv7vVEUBeppnWb9F4YNv4LvV4wwzvUD/kqHp6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773197094; c=relaxed/simple;
	bh=RPLisBXb8BhMJqFXM6D2Oqx6YnF6DCtVdrP9ec//67g=;
	h=To:Subject:From:Message-Id:Date; b=o6GtSJXDUFfjs9VaSYd4z29RGH1mzaRp6yczVC9R2vio9flbK6RNOQKDz18lwmDTqCcSCozwttFXwo5MedMD5Zx5HuksjH6h2fViDWmkmQhV4gBVv5YGY47DKrTSaE6PCVQIyuQnBbsbgkE1UjhTjfEy+/SajFRsuSqJTpeQ3cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pci9emf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pci9emf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15A8C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773197093;
	bh=RPLisBXb8BhMJqFXM6D2Oqx6YnF6DCtVdrP9ec//67g=;
	h=To:Subject:From:Date:From;
	b=Pci9emf6TmF3ezxx+Yslmtkd8L+d3me5taVNtSYYLCErtJtrjjhmHpmPd8yWkAWum
	 p2P1rQ+Vu4rIeZyVzk3pTrXaEy5gmwdnpI6kVuu/CLY/OEeWsIdO311dZQdvyJP3ng
	 pTU3svF2/fLRxTOZ8gJtn7xR6vRYU590E2YxsJAc5iCUeMlY1djTgAVfyUVWEIUGfG
	 tF0hjGCYykQzmXCD3BDcYXC5ayZ9h2Koo13dlT4j+yy6o0AzF3a/1FjlUmx4UZfJcJ
	 yy7RE7Kaj1xlOskto+TigF8v2bIlX/+wnMbnOXFbYN/WdSEaSP2OPQuLRZ98RnkuNA
	 hc+Nik1DyiMFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9095AFD88E1
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177319709358.13853.4588093035069497981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e4e9af130b432e3bcf57fdaf269300270a98d91dd96c1dd3a15f0191f2f7c3a
Date: Wed, 11 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773197093
