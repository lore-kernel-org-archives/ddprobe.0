Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B26442F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738532154; cv=none; b=d6LgMAZOpy+mWgVtwWL91moEqnBbi9l6MSUMEpCTZIpjOMNv/iIqs1drQwICuZrsuLBOi8za1MNDbd81SkIUaHgRRJ1SinFGTKfoXJfhFWepDWOzWeqlMHfK4+Q+48c/xAyeiD7eaLbj5sMuLgpF87zKQGNRqxAvZRlXfvLhHPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738532154; c=relaxed/simple;
	bh=6kg9iJhW7//tUuh/PaM1UPmuPd2DO5mu6+wcJa9RODE=;
	h=To:Subject:From:Message-Id:Date; b=SxFJwzVXdxPTR2x6I1wzhs2Xau13ws5lJXv8nIcyVOPuQEpicoyapP0Jy6SErBaJoMPcNqDPzxnI0wLhI/LBTXL1sCQTA8UJup0uk5OOzMvwSsbXseocHpcfb96aUzVGWUD1dV6HFAk1IIj52H+v/5uF/rmQC/OAOWseGaWhvn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZBwfCeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZBwfCeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9381C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738532153;
	bh=6kg9iJhW7//tUuh/PaM1UPmuPd2DO5mu6+wcJa9RODE=;
	h=To:Subject:From:Date:From;
	b=BZBwfCeGs0vCUVSxyf4Jq7Ant1J/92zRvlZTzb4KMJ3xooO+FJUeKuePRc9fbcxVt
	 dlKse0C6GIADZUIbdr2MdKDPsvhDPdoE2kvKufaMJm7oWTobRZ7eV6TcA5yHcZpKjS
	 yuT/L1QtUJaF5g628J9nG1UTlCp9a5emNAcmR9CaU3PxgCXkjoeOeKaizsAhuBuwXv
	 Go6FNVt+bH/DwjC873ZyExC3mFagrfA2nZ4uC9+adigUrF3TE7kl+XKD6iv2VupVQj
	 LNwU7ePgOsSBQcMuH18JkqTp2SqCkQqxoo9wsps4H7TaX4rR1RkyocLYyJln0GVEBi
	 2+Uq8ICJ5eCBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A321BC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173853215364.2792.8407674888132785066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d565a039c836d15290d3dcd7e5601e8bfe4a2f683716ecc0aa924a45425621df
Date: Sun, 02 Feb 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738532153
