Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4FEBA34
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768710834; cv=none; b=aP6rCk0A5nznphRJVAAR+O4xmQcqnpA+NRN1dqwHbXktjTkO6534bXcEMhQF5eeIphUq11psorxAaFtsWm1N6ilSDgFfvMqK9bsMvQsSO17mhj6yDOktDXIuSGzDWxX+zezqlNicihNVcaGjQfBsOMc7uP81zdfoL3UmUR80VSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768710834; c=relaxed/simple;
	bh=f9yr8bvQkV+jccK2JPberuc9eKPwm74sOfGhFhoUf6c=;
	h=To:Subject:From:Message-Id:Date; b=Koo7wls5Q3GJ6eZS9A1Go2RUfVwxeSbwNEvIrFfLbyrkAE080UpgxHVeK23qyQZZjf9ikvlEZig1BKnY6+vmSN8SU9ualepe/AkYpqi9Vl+rwpHfkRlSkLjgPh5mzvv8L7zn1MGxft8r9n6OH99SXYLMJQXTSfycc5iSAXWn70c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4lTozLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4lTozLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6514C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768710833;
	bh=f9yr8bvQkV+jccK2JPberuc9eKPwm74sOfGhFhoUf6c=;
	h=To:Subject:From:Date:From;
	b=l4lTozLQjW6I6plPCbbOfsSPG+zMY3GYdH8gCoYOmVCx7ZDtmoz43Lo25roDC5rCe
	 w29upkibJbpdXNyB7HlGX5t2hhrrM1EXW6lS10F+C5bWFQN3LhFLq+sIDbjG4qXQaW
	 Y+DfuSggydf2WY1drGYBVhuFNOp5HCj3aqxXH0rvpc8u2/H5LmAFDksUVZZr9ZiHjh
	 SOURFd3/HGBPINSptHjseoakYeA7WtQk1PAzFHdmOIuC1Nq5VaMdfJzngXPNrJITVS
	 MX50BlGhKxzylnknkfW6caZLeSLcFVazEVWtZy4boMV7DtEqmeQDtXsGG6nDgvWBxo
	 LgaQxgLHEKwrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9235DC9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176871083357.27874.4956164754335609862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532d7b1bf8fb61e64a520254cb3b6a5c790e5fb422e2f92ca92a5a8b3cfb1e68
Date: Sun, 18 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768710833
