Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4C024A069
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777395454; cv=none; b=o5wfYgK/yCHVmnCdGAFVTE+aKBakE/vCSjwSQ4hQMQoW8cHGsH/fZfHrSKHBzNCrds12wiR+D3wOlSmXP3RkBO/TVdWS4K6B00Z6mhYgccyzfsx91tcgbaPYWIJWn0f4c1EvUCx2UL1QfCqrGhH4ctSqe7IZphhsT77IKE8X8L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777395454; c=relaxed/simple;
	bh=aAzqNLz7QviufWEBKKVl6reoakXk09FaWr3zCaOHeDQ=;
	h=To:Subject:From:Message-Id:Date; b=rdM5ojyHBZ1knf3ep5gKfrs1bzhdopJ7npYJO+ZecHDmQeOlBFOOkLe/yWSeRb/ZxfzxD6VdEhlyR8wtNnfDKkOvKgcMf19Dj8fT0R/AtQ+SeiYIRO9d/7IF1gmlPRW/NY8T+RHWgiySaoeXUv/RDyK3vzJ9WhWg4Pb1WdbOcS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vwj+Bzef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vwj+Bzef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE07FC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777395453;
	bh=aAzqNLz7QviufWEBKKVl6reoakXk09FaWr3zCaOHeDQ=;
	h=To:Subject:From:Date:From;
	b=Vwj+Bzefseq3xY7uFvH419hWmyB67RxWqxg681EGW+vyZQfNmiv71HA27MYByqz7a
	 Byt7T7leVis5BbD57PCNbqo1cFcfAm5Qv2VxMvxxZLJ8mScrnbOQv+3YmDEpz6qYcO
	 5piwSbHXPElQH/nfvG8kQzR/Oz8kSTMe5dLX62sBAJEhV5emGhnmGFrk8ZKvMia1EQ
	 NMU/2LPp7WwF81FX4r7Pl+ll8GgQm3sND/3uFRrP/JLrV3LtQhrZdLXmV8EsVJKI/b
	 qPbfkzg/XUvTHXMYI+wLBtT5ETqUKgyn9SSNG19iv7L5QlSNfKJ/fsLCMTQOdh2hSL
	 55R/8kAHnWQSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC7CFF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177739545370.22441.4328336613197632921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87fd4d51e9a14fd024a95482180e2c165273165f00a6c8fdf5ff07bdd6f7c0a0
Date: Tue, 28 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777395453
