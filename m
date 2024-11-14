Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224411FAC4B
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731588954; cv=none; b=R5xMzDLvn9L8ZbKZqNzF5/Il0Mh21aBQT5g2zxhjdmShHrQ3MjHB9hf8Za4M6aYsyyLIojyrf6hVvuXqs685030qV2y9LxA79951VvhMnWeR2UZwDYM0Hl7WeS7dufOBXwDJvH00ldZIhAjN8LkLAnpHgHCen8kV/gnQ5N0I4ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731588954; c=relaxed/simple;
	bh=dpM5kAIcCRuiJ5ADdAPeS58LS1874jWLo5/sMaIGAnE=;
	h=To:Subject:From:Message-Id:Date; b=sfqmNU4ocQf3CZDntHlNTO0JptHpe2Tfeg75zE0iLTrWiM6SEPAsr+Q491WQnkKOyBOkUHN/eAJoy4+6UAm2vJeBSYp939gke/VfBFymi5g4ul479tV2QWaoAikDtGUG/0EPyFgsd14RLvD4jNwDWW31f4YBllzkX7f2yKHWs/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neTRi4pz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neTRi4pz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3809C4CED5
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731588953;
	bh=dpM5kAIcCRuiJ5ADdAPeS58LS1874jWLo5/sMaIGAnE=;
	h=To:Subject:From:Date:From;
	b=neTRi4pzJSCCj1yvdLu5E81MvG4PYbIerxlpUyz2ucdM2XozBj1DtjdIJwRVtuG98
	 8Uimz+D5rLdMBT/TigKHPvDxjE/DE0XTnPdhQQE/ChWB9qEEfnBW4izWX+zIImqXEX
	 DEER8aCrDrfYu48zmNpAXkfN3CLekKakECwjTxV+fLcM/HTEYzx3RJjpYLCz/8tdov
	 6H3ZA9hS/oOQXmNIR7y7mspFpxMvJZG5/fzNumZG3yMBLF37qUTvmgYDZfERTLHcjJ
	 uZf8pZwz8iJhph4zCyOVrMDAdRxJ8+hoxSKQjfTwKvZyuSR2VruWFhGFcEusWxvVDy
	 nc2cDI1gfS2VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94580D68B02
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173158895359.23779.15391227658579700884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c26a7d9eb045e69d117b8049b45732448187411d3b0948957e99ae90fda5ddf
Date: Thu, 14 Nov 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731588953
