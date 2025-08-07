Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6348F6E
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754540994; cv=none; b=Kw6dnyImAPUWRJbqv6LJQYEmou9Y6pEUrytxJiZpAMaW1eoA+zj/tT/dzqasio+I8fc0kOKtXiw/TCdLw1N0eEf4qJ/3sZW9KkGa+pD5w1GuBW6/RH1RL+gERpvFJMIlJG5FSOWAOlo95R0W1DFIrR5M2xGc3cPsHQWrZBQa81Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754540994; c=relaxed/simple;
	bh=VuT6yIpJixpDjFrWF3kAisFgcN5FlNfSa28VUeRIiNo=;
	h=To:Subject:From:Message-Id:Date; b=MDa7lHM90zsSQH/QGeWaGOfUh8Q7YRKwnQluY0Rb1Hbe3iQGUmVo5BHMOPpj+Sf39N8XOuLKYYxLsgM8DFIcK/HZhMEaBQxScIwzFYzKIAQAVyol3dm0Cxm8tDvxqM58h+fZGgKfv3jCfTE1HoR87+EseR5Qxofss5z92I5Ivpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DyR1ODv6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DyR1ODv6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7694C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754540993;
	bh=VuT6yIpJixpDjFrWF3kAisFgcN5FlNfSa28VUeRIiNo=;
	h=To:Subject:From:Date:From;
	b=DyR1ODv6q3fBl9WqxanQsiLuRTqMrX0OGrx6ZlP5PZmD9QIR5j/NYKjIw+hzw1+/2
	 uoLM8Hlkfe/zzTvaCn+OMf44Ezo5i993FORw+Zb6nHhhF9TufWPtnHUxtoO3wVunJy
	 XTwOsB4kysTNrIqGyffEhRmSXCIp/veTPIotuamkSxDFXrmTpNsIKR6oOCI9xXcb7H
	 wW+UPDFW0GCdJMnW5PprYUrqyktVZcLbZpquNCahTIHDUW29llXi85jlkpaeYXPR+H
	 ibkZ9hzOzK/YA+3/t427f4piu9EoIqaByzrUchEV9kxwo7qynngfC33O/k5iU7LFSY
	 3YZSLEYn+XrQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97739C87FD2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175454099360.10534.13152549053691233871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac431a35554f9e27f7d7e8f9cf05ea37d7765837c87ac420cc2003bd4cfbace
Date: Thu, 07 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754540993
