Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488D027456
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 03:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781926594; cv=none; b=uUCKXXXvnUYQaayIw4HJ90xEe3R4JwPD1e8SZqb6uzasDrK67NjgO4eAXP9Yh59ZnxR9ZD3al/3TgTUIwa6Z7soC/Ndg8L8OgTam0RnX/12NrxFqdAYrcKttsL+tUhNC89QYklcRZWYYhIpBF3S9E9U+kfiyvatnug5BSQ4Ojns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781926594; c=relaxed/simple;
	bh=SsLFyvOAqXayX6mC3MAX8Pe60HyjGdq4T7h0eieq8Gs=;
	h=To:Subject:From:Message-Id:Date; b=RQ0pUAcdDLVsjwCUYoPR4/J/Ufa+BZgGVjfUn8U81oaqTeY6/+O1q4VioCq9lH1fw99OXgKXIKuApGkFngQUE+98vXq7DD3T/DMOgiJJl5bPN3MP3wkqStLLPvFmWzq2/W4CfhFczgjf+z3lPCFpFYXbmji+ZBs7LMaAxMqOB04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuHOfaNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuHOfaNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39E8C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 03:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781926593;
	bh=SsLFyvOAqXayX6mC3MAX8Pe60HyjGdq4T7h0eieq8Gs=;
	h=To:Subject:From:Date:From;
	b=HuHOfaNFZ/aymYtqaeOeH1Gs2M0k7ChrjzZ9tWB/aGpI1NPa9tohq7YUDnADSCzgr
	 YnO36xt3kJuQuRhF8p30m3n7+YlQd+PWxphLhayINmvEKlqo7t+vWdZ4zBTKWTt7Pq
	 k7PEbqqzUm+OzkCsr+t3WYtToFKWnGVf4nwV/i0faGUAWltdOY2uIkdd+JXDdWaXuW
	 U2RLXh+gQ7iPKVW4JPZ24kpOxoI11+r4AoS8q3WYdlFVw0kd68jlST6ozt2Qqs8SeW
	 com+sfuGHIWELJZNclwAthZkPb2WVzcDbq/PhIU9i6BVk2jB13hMWfirBiVBC85Kk7
	 m9Um4+BwUnVyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B5DCD98F6
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 03:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178192659369.30708.13614433654389864892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6dd2a4db08e367680f2f7559c4c7dca518727404bace1d31b4a3571aa8b24ea
Date: Sat, 20 Jun 2026 03:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781926593
