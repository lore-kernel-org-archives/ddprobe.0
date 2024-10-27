Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EDC1B815
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730001954; cv=none; b=ozi1vEMfYX7EfWznX9wU3HuMshCComxwmTo9GSjpCoF13NkMR0jyRm+wWw+iJF74u/JOnX1iWzB1TsgDOMY87niSVPVjgU2LEftyltDTRLjxopwRXd9O9O3wqVzbkokfosWls7kyG2WQoI9ovnXZb5eUsZjxJx13TAGH0x0NJlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730001954; c=relaxed/simple;
	bh=XBhfRuVujuu8/aHfS7ibfszojNfm766Vd/bOSmRmJqk=;
	h=To:Subject:From:Message-Id:Date; b=jGpM8Nam+jhRAXTgOafAPKtCQ3uwKv/I1oeVD8uNjjHT1TD3YWlqz39/FKAogAmYy/gKeugkE+wCNVwg6aQVE9/rbKfo1GivzoJ9x6HkrsWflrXEYuTMbIBwX6wLoqoWgjE37PQ/XZRFpsaTnfNtaQvVI8jhWTruDoMxl73dDtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsbahcre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsbahcre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC4BC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730001953;
	bh=XBhfRuVujuu8/aHfS7ibfszojNfm766Vd/bOSmRmJqk=;
	h=To:Subject:From:Date:From;
	b=nsbahcrec1MAe0+WRqge9PGrq3qM8mRF9og8UAo+JFuoVcEoHAKQFL7PTqDY2pQiz
	 VwimiSL+J6nOPCq42v/Nnq+g3a2q8xZlk26INiNvS6axW0SE4R305Q8gIKEL0PyvSo
	 U3sd73s7Q3vLoJthNt7nLSynZ0KkvAKqIvXuK1pQuWNzII8XQ0F/fFTzyRRtShJuak
	 tL9i8wafg6g+nlQnuY19IKyTLcgDIRmjakdlt6Vk9ZF0xLDagbsJTS92NJ6fWDgKPO
	 y8Qf7fmr6s5QqXGWDK3mzFwZH5D3zhYF6linNNjd1YON9G39xLGhJIbcKqKaCiWmP6
	 bI3jwU8M9h8qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B11DD10BFE
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173000195360.12613.17768718757593663465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84431c87a07d3d2eccebc92d17558c9a5ed01d6097d8db881384c04d24d98b13
Date: Sun, 27 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730001953
