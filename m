Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1CD320F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722751554; cv=none; b=m9sj/s6rTP3LuByiwMuJUFj3AR4yucAWkFicw5pgXyiqzkyKEAQu3WbbhILQ5UR0m4wTRH3Vv2ksSXhQ/OA+Axyc66rj05Mgp68+RP2nFq9hiwftjpg/gZk7fWnOc1XpyUlMgSHG62TINnlS08zLTcl4vdDPLb+Tm1E+FCAZTi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722751554; c=relaxed/simple;
	bh=Le3oXRr0F6Yunwna0wGb8L635qBauJUU7TOtVhPE9Xk=;
	h=To:Subject:From:Message-Id:Date; b=QrEK+KhAR33hr5amZD4AsfCBCGKmpvko3XIFsncDENb7ambgv9DKK6jaQj47cOeHkr3xLRfF/9YEg2AOgOQI7acFAvKmsRaQw+e2UWiC3/4Qbl3Jh8wVoWH6Kbp7Mq4fslKhSJubiGj+IS60DPAOMMIm7VZEowpP7J3E9OrEzCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W93n8hPU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W93n8hPU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFEFC32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722751553;
	bh=Le3oXRr0F6Yunwna0wGb8L635qBauJUU7TOtVhPE9Xk=;
	h=To:Subject:From:Date:From;
	b=W93n8hPUAlzfPvF/7higQiIL6tUXY3oLkeEt3tHLwZAYwIet5Ezxb4LljhmkcZ81u
	 vTiP30qvfRMds/I4amJQp9AagzPzjsyRrOK2thBNI0gc9Y6x82cH0XhaGDPW3ayvD9
	 LZjUmQPRpe2b93CLojRpw9As61UjyaC1wk8riABewDRRheRM03ux5ehadvr+2wzrHy
	 Vkk6gf/aIx7KNwYAEX9B6jzbWE/FDdTgQyR4jogXGZtbbShk8brij2nHaWZKdG6n2r
	 PahOqMzyt5oShVhk8D+TmoGlP4ZpoEFPCN5g1BkXByl7fLJTiyqPH1l03Fyiws3R5C
	 dy54M4ERRsf7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F4FC3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172275155359.5226.9034697364189188492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0af0be5e0edcd4d8aa51f7ca05cdc57f2d86f97ee2ead6c911900b73829e8bf
Date: Sun, 04 Aug 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722751553
