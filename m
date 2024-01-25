Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0406013BE87
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706223497; cv=none; b=Tbjaz13Yq9Jghl4GsjhNT3SynB4oYcVa98wZQ8OVbC5SsCRQ3+7anvNZlVkyUCZtldUdhL23o4+zDHxLnPSRZdeJ+egBBrHO2bO/3vpc1Ce3DSsCQYwLC3V3AfFbelJH9xCYFlUODgqe7vFOXGgt1xxC1z0O8Dq8fzmpncVLx4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706223497; c=relaxed/simple;
	bh=3nAySa0RkczCdr1RcUkCF2hXckq8u50ZTyMySeFkJgw=;
	h=To:Subject:From:Message-Id:Date; b=Nb9ZcL4UMrfkHMIRbLRwoPCW9l2pJxvt9wCn439eBYXwn6WbhMmXVrAAPgYtr4wvtQW8t0Mm+g5jdGHXe/Uu+kfQ7CcugPSuuor4cVnEtWpf/mti1Ov44NmduWWYMX6629EDe9b7rUK432ZwWMV8KArlNKdA61dWYTZGhuwfwmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPKCuygi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPKCuygi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82F9CC433F1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706223496;
	bh=3nAySa0RkczCdr1RcUkCF2hXckq8u50ZTyMySeFkJgw=;
	h=To:Subject:From:Date:From;
	b=kPKCuygi1/tYA9zSGzQ9HgOlrxdaBE3H8Ocz2bf8WZhJmfHucSS5bkkgLPmmomvbA
	 uVE6XI/HIbOiF2NfNvP/jO6+9Fu7amo5XCPeRk4D8ynFEmrphUk9Lc4VivWq6eh695
	 r6tVpkWZUQFew/YjKzfo0QvN84/BM04CbXuXZMlshXE3r4oxlfxdA4iRZZZfSjhiaJ
	 qAgWrI3vf6gaqJ9s9FylY88czXuUS+3iVw3ecrR4Lv4RLwbiFoz6EAeLEkIZFixkRF
	 4y9uEonVOHiFxt3L8dgscH8ohs1eFPVyvFFQGHEnO7hRDcWsnJrNzRwn9n+pQuc0Ip
	 qBFRBsQWK3AtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C402C47258
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170622349643.3596.17019810123035266185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da2351680978492508eaaf92112b8aa04a9b3b59ec3ae71a13fbe40c9e7f4a7
Date: Thu, 25 Jan 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706223496
