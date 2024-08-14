Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F9139879
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723611954; cv=none; b=Ed9zLvwwyCdfATyh++zK2clETEXcVlFdoyFTnYZbSTYzGFMtoDAsTZX85WE1ASrjXJJJcPQ4LRVEClE+3AMaJUwrdfoHfPjfk/R2ExyoE8C9rQjGxJ6JagDz9eUl9m6z8Kq/K9aiVLVZTuuI9lgznPw7pOWsjl5WqUFUmAcuIZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723611954; c=relaxed/simple;
	bh=NRfyLESrO9IRtUh4fLzo+ud2gRTYCa8I/HsDYd03txM=;
	h=To:Subject:From:Message-Id:Date; b=IZT24h81/2NcECv/u/KvdXetX8eFKY9ORvlsri2S2r4Qge0LdLO5PW50zO4lHpikUyJx7fiW2j6NCtbF9sV4/aUro0vYwQEWsTHXjLYUcQSYPqos1QHdvQWeyStLGBVfCJR/WHwBvtOCyEnJr8+QPhOxE15hPeVjg8YvaLVG8cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RaR2daQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RaR2daQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17F9C32786
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723611953;
	bh=NRfyLESrO9IRtUh4fLzo+ud2gRTYCa8I/HsDYd03txM=;
	h=To:Subject:From:Date:From;
	b=RaR2daQy1OzlWs57GBi8F5E3I1gBxnrIPRcA5y4/BoEK++zYHcu37mri1YCtzAWl+
	 X0k5e2ALU+XaQpHb7ePyOGZIHnPAcJoUnlSbYwBjp7+F4149o9p3WBlnpG8OnJfQDK
	 6tN78V2E8nlvEJwXud9yTW24s22WGGFguIJ/Cwpg7dKicBbF5ZpjddKAywEYUPBCpW
	 dVpmIZWxmtrFXirwfvqNgBGGehgocUQBO86Cc+frXBS7e7spHmG08yIYNXWV6ekvIk
	 bvDH4QjpUwG66Ur1YRWFwOkPxQZ44a0Omn1dBJwigDJaOOXC8D35pDjogzyHlPkmUN
	 9Vz7RwbpNBdLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93199C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172361195359.10213.3464581495276030682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 901363350d029d2bbe5599531bf7db76afec72f40c3fb61ba85df3b2d6031484
Date: Wed, 14 Aug 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723611953
