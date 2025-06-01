Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459E71E515
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748787594; cv=none; b=i8pQ9pEHaVkKpdjZkCMqzA5hToWAzwy8jwzadejGTBSv44j2x5rlNn/CTa1MxL15waHSs35wRVGHJHk/cD3izgu3NPqcYK+tzDi7fynp6DzVdgJJZDNWkRoTv8t6Jp+za8ySd/sldLr5bKp5hqcMQdkyryvUeoLKXmgDKWzRVXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748787594; c=relaxed/simple;
	bh=1Q+Rn/UH/rFWoRLowlSsqM+BbTbvDUtG8ZcxAxXyIec=;
	h=To:Subject:From:Message-Id:Date; b=roufV49r0lizZltIgzjXwLoJhi7gUTvKEuPyMTGjv89wYlsN6Wj68CIIgTunHys6rGylQ5Av9HPGrfh9WfZ4RKV82EdCjIJhNQCkw/UuaTiq7jx+W0x2K7iWRwlmMH+MK8ijWY28hAOCv+F5noi4wO1L2GlXQLXpGBLMSQcUQk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vL7d5Zwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vL7d5Zwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A777CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748787593;
	bh=1Q+Rn/UH/rFWoRLowlSsqM+BbTbvDUtG8ZcxAxXyIec=;
	h=To:Subject:From:Date:From;
	b=vL7d5Zwi58D3cjEnl0+GjOzUh3VqWxWf1ZGPHWACAdJ8bSs33lwPg+CJ9qK7c+P03
	 w9XiGnNatYuv6mhAo+NOIGQRK4cprPBksyGM4jku/gVFF2m8zDUvzHk3wI2msyl8Yv
	 b9gaJGYDrrXMHclb3OcJGUPlWFVjRLc/lbsQxeuSotnhUzIQ6BBocgngNDSv8dKUoi
	 r6Ho9o+B0fX05BwpPCJpDOSiRJqFYLwS00bIU+piNeswG45ai6DfBRTeFm/cHx5koh
	 zntkyOyTQPcRrGdKEimxDoZCWUTxBEr8pdX/6KYI5QaoY72Dl7ExsHiz8d91Y1bzJy
	 qEoAaNUfVYOzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947EDC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174878759357.2512.11094062730736597532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322ea9c8fc01392f90bcef8f4f78e795f14457c3cd2b45dd72668a4c1e7897d4
Date: Sun, 01 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748787593
