Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429B553A7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746665394; cv=none; b=Uw0mi56eCHMEuxkQurmlkw8Q1XuEib642gbcEPSEa3pl2EcYTuc+qBu0MoJcc6hdlX4Yz+MPy5NcKKlHEqxWas9WATuRbEDkB1uj6ImQ3zv2NBbH6YVjS0kjw8msKu3MNWioAc2bL2DSfQ5/yCrr/R3zaK3rqoJI+iUAvwkYJwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746665394; c=relaxed/simple;
	bh=UR2tAiX+DgM+HbaGACXIyztanoCyDo2d2PS/dKDwOvo=;
	h=To:Subject:From:Message-Id:Date; b=rgAddbNauF232OfcFH/xMd9DwMacLtLRg7vk9wzlsHERjbl4cl30M+KdxO2+NsjdR+AA1gEo3B5HNOx3gqywiCAccHPCRgGHqJJkG2FCjg307G7SKJoJaA6Mt096NRGUittVjo2PDcKbWhpXpLLJKO2A8jtTqtXUg1e5nsg29AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPdiAgfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPdiAgfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3087C4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746665393;
	bh=UR2tAiX+DgM+HbaGACXIyztanoCyDo2d2PS/dKDwOvo=;
	h=To:Subject:From:Date:From;
	b=sPdiAgfeZrtBmVPsuPydOxMv9KfbuVHuRNbhQSpJkkCcVnG/sJDWKftJXTRlfs+KY
	 EsnynI776iSaX6sd7h3eyMTXDWxDGOhisSiWEXidS6BXQFoWcsdQuIMHvaPgEgW2Td
	 uGL6DMFxwYvnidn7vnBZNZUsYyb3pI2kY9xBFW74wFiMdq6oD3CGekRMbBuoYRukVv
	 OAfE8iCiMlj/C1Gbwp1Doj7+rGy3UvOz9Jqff7jbp2O2hP6Iwk4JyvIc4qLfpDSp1i
	 8znPL9/07Qc5fDPPmuyE6ZnhPRiQ8kEYYpQhQRFW8GJporDedS1RiWreDJnkw322FC
	 kRGIhKy9JWvAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93899C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174666539357.20653.18276219838741888563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697f1594530ce7d36c81982a51f5baf584b6e1c10ee7330cd9589a93e5370c8e
Date: Thu, 08 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746665393
