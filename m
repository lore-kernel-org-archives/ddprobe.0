Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC10C8EB
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731081954; cv=none; b=huLEGUPtA9avfk3yhRIFf1Go1w7ZaYWnxUG0/iH/PDB/Iv6aUD88//UCNEDY97hT3ZWaFfAHnUXfyLIh2w9xhedONEHXqAC+cxBMMjv7C15v+6Cg9KXZogiGcyvSghwsKXHV3601rlA1l9fK0tAFKMfT8ELiUdShBKmg15KYEvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731081954; c=relaxed/simple;
	bh=AeQAG7rEo1iIhEcvcckylb0dm36mOQj6EHNeSwH2cDg=;
	h=To:Subject:From:Message-Id:Date; b=uJyrUf2dB0m1inMLLC02HMFJWg4RPtvobpZ0DQNDglZAPVFSawrMasFSH6sJG/6nyEuvL5RmSvsghfJT3/FibKQFulNCFKtQ15oEmYAFMZhVnYPAhOM5e6aFCIrifHp8LLrMkkZoXLNn2A4oW5Wtk49TGAYCkvRyQKWhSLYlWGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRt8b/Ae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRt8b/Ae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64D8C4CECF
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731081953;
	bh=AeQAG7rEo1iIhEcvcckylb0dm36mOQj6EHNeSwH2cDg=;
	h=To:Subject:From:Date:From;
	b=uRt8b/AeMDE3UtPVJySrLYkJCrKnNhB6jSMIBU+pdUqw6RBaZRTMoh8gCDK82GroS
	 JUuhtYmpipNyD3mJofv0UlwqAHh699f5dMXyyzR9pj8yFLoc0v5Td+gKPnKthXn5fa
	 VAXVNDvljOC+L5/uffgplM/uAyapMoCtYpz07A4OUqITLyPBToz87TrvDhy3NF04p+
	 zenQ+24FUidI+a0GZSX/Xowu9q5VVHy25wC5L+UxIizQiIg2tyNFVZfui0fGO24YEO
	 VvGDjIl6tzxuD+o/bpJOwSuDV/gazgmYb2RmLxL2zOj8PX6LiaqUaktqGUQx5x98sC
	 +BXeWRR8VZbTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958D0D5C0F5
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173108195359.20530.9796404778981188524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e95a4d91bd0141d276090a77e91052ec82a2119bb09892425406b9212b0d26f
Date: Fri, 08 Nov 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731081953
