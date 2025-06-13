Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BD01FAC50
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749839395; cv=none; b=u+AJrRsA696tUh7LukCI9CZBfapXsd6mXxJqHE+bGmAX6x/nRWZg3XeePDpt43su/5PYn50vnlWxWEnJZJ20bYOCNKVeV35PAYV8rBEhzFMkwS7CEOxBiPaBNBw317/ZqNheW7vBplbJYjNcIGjCJ76rMcJvb8+ExLiynEdYFeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749839395; c=relaxed/simple;
	bh=xPBI97NgFhmPzzmqRyQzhbjGaFIbnb1YC4WBxoin/Gc=;
	h=To:Subject:From:Message-Id:Date; b=kFh4K+rWjorOaOhU5eaLiB9cHUMytMTBsHm/3YpwWRjUIdTrH2TiIDEozB8BLPCnldsXqAV5+2QBSPoVO43/QjuemDWu3o2CbBpevqGHVKSEAAEww3zWIkkE8VLaU3FiVVL+zTnqWdLOoLhmyNgPM71fOXAt4olWa++dgK5KJ78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UA8Kv//7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UA8Kv//7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EE1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749839393;
	bh=xPBI97NgFhmPzzmqRyQzhbjGaFIbnb1YC4WBxoin/Gc=;
	h=To:Subject:From:Date:From;
	b=UA8Kv//7S9prvm1rxa4D1dkNLsOAl7dSutuYKWymqlpfM/NVaQklfcNP6drqDcxHg
	 ZZyrU+OHj3l6b/Se4loTDv5jL2ji4DlfgHnZyRhKXntlCGnE+RMtWNOityeUjyK6hl
	 BcptAN/H8KFkcReM9peVavhGa/ThvXvbAaBdNgNOSdIEXUZ4VJMr9K0/gALDUKQb3U
	 zed7QEc+RV5DXaqBr/J+3E79JygKvq8yW2Cy5EJOqjqdlth4ZtzCc8vvnh3LbM1257
	 oRZZj6tlMzup5LlA316foFrMuEVicbhuVoiLbm+LXN9StS7PcIWiMaNxXANZG6Jy7v
	 bZT24nOM4yzqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F36CC71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174983939357.12361.2743504940189328810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 129807c0c6810abe199ff6236d7677b43b1b40a8e1f1d6cb88a4971fe68251a4
Date: Fri, 13 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749839393
