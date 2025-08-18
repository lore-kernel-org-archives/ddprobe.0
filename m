Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214832727E2
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755497394; cv=none; b=SKVHVQMpRQ+rKqQ7Km1spw5vCqrXjq6gqZUjpGRGlaj2kxOKa3CyXMwkmyp7f4y6Ba3u6iSPcJNpGb2GN9yCERPd0hyesXlCvXpR3llG8r+9vUQ+TVEuWhHupr11b8gfP4GwPPg55ox6d2Rgcgrynla7B9GTbDCFFV3qy/K2euo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755497394; c=relaxed/simple;
	bh=YWnvhVR/TbFLLc930um3iknAaWsSvsC68YvAuftyPAY=;
	h=To:Subject:From:Message-Id:Date; b=GRSDXhNeuVRks8pwALc3oz8y8IkQDNt1KEcaSNLjzuRj3r3xgg6MhevNKWjxtoWhfbaZNarnAtLyG8RjJwNHQtGsdr8lmm92qddcxjWD9RZd+64+BhsjlNLjiu6flrTKd/6/bZ51DfjPN2/1hKlIvJrsB6ItoLy8nO9lLyDBAqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1MbtuP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1MbtuP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0448C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755497393;
	bh=YWnvhVR/TbFLLc930um3iknAaWsSvsC68YvAuftyPAY=;
	h=To:Subject:From:Date:From;
	b=e1MbtuP42wYbhxgDoQ3FngvkQ53PLBIJ6eCdaqeh2vQek+NwqgpemhbBj+RiDoOqf
	 3APtGXDpCM2xVSHkatRoYejzg2dQF1aW6ub2rfbmyrwp1gZI8dPp/ujiSDUnx8WzW6
	 g8G9PsmOSX636vM9amc4AJ13/KCjbPMgns+c8HcFtYmj90nFHzhhgHV03ZLWE7qlSD
	 FncZGF4dNN0HPnplmhp1BELJMQIJCy/YHF1TBfamkc1MqbvPgF1POBU/wBpBN2CSxn
	 eTBz+N3vRq7IXX5TYcB7mwqoaeYKqIEVWTBIANHqjxCF1ziC9MFsPIQgN8KdJad9BL
	 jXDzZE7gSgnvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB2BCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175549739357.4262.18212015311595768427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048dbc25ed38158a856f5f6a61e2812447f750244fa3be6d51263191441baa21
Date: Mon, 18 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755497393
