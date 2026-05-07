Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133303AB292
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 09:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778144855; cv=none; b=ukS74JXj23rlIjo8gyBUX0CP8ECD8ZpMfI4cB50+GU1GOiMrWVmOcAGJBNyngJfkP5Uk722IHD3WL5YQSl2C7/9QWGPTkkilz5CzWoYb8MZ+X+atML2SlDHVF+3EcRudDtHQEv6hHFtYTAbHtUQyPOUgYviBg1IReNVp5QZgp74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778144855; c=relaxed/simple;
	bh=Gs5omnbdrydxGcR8W4KwIn4zUv5GfsDJuL4/wQTV6ew=;
	h=To:Subject:From:Message-Id:Date; b=NEMKbnjI+0fzkQyn5blWwPxSiqdpFb4oI7Pu3CPuaFTuiQKzXwqToDr+UEMJgaXILl4mbGhI6+BI4Z+rT0vgy+hvjFsCqG8WF3kLgJlfuQG7LuuJpJh2rQC3vU0aoj8MiPxqOVYkQq4nQirZSkq8B0GSEzF25KRAuu0Q3Y6+ZLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePQ1OQkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePQ1OQkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7AA5C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778144853;
	bh=Gs5omnbdrydxGcR8W4KwIn4zUv5GfsDJuL4/wQTV6ew=;
	h=To:Subject:From:Date:From;
	b=ePQ1OQkxPZHmUCKKLJGETafPq/izp9IFQ/Xvcz5CPi1a5d9/1vgRNxklT4CajDkSK
	 Q7Wi84hdh66nye8TZzCTZdVC14ryul2/xkEsB7CWj22OJspfKENjl5xZ1Cm3qW2rE6
	 tRoeYgKSBl4lX2BoswGEJYqjJGXdGL0MutJ4kJ6dOeXLLqaH9JEun+GwjXfIgTziAM
	 FTAhCiUl33b7ME4wM140OiVrH0IiLTHis6B5JHIO5HPezGaLaVDZLpTyITMB5VPlUB
	 VPNaM2chSqdlX73WYSub73V9AFNa7cuIX2SsKqwv7ELfFxwXgxtkBanurIWGz92DyH
	 J9fo1gZdq7Fqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA45ACD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177814485368.20956.11163628725257504918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f0feb34457dcf5740f64bc83a2692b4a0ab0af8e31e59a9f08d56d4a328264
Date: Thu, 07 May 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778144853
