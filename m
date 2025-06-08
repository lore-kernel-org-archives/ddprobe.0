Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3198C267B98
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749425394; cv=none; b=QvqTG29wmZttOaeKFz7AzUA4qNagZREb/SJQbP3MPvwtInKqyLR8mOYqORDZrCB7dqzr2+AI/STw3WRkaOjzAAZkvAXyiyzr6gKHkGnUAoWvnL5wx+Q1tNxGDLInthWgKZkl4x0HbyW/2wA5KtkCAQwrFGpMekNlojzHg+ohUQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749425394; c=relaxed/simple;
	bh=OmpxMN/ko7KroZuZyJu+f2ljCEWWU5I3BM/6keOYSjw=;
	h=To:Subject:From:Message-Id:Date; b=MdelKpAkv13WtiAjxK+0nYkT0Tor5SO12/YRuLZRNkuah8y03gXPGAAJejEqATpvohtjj/sW/cogqNPcglNCOO7AnJPBs3xvZjKTYAy1tT9+dTcU8I6PMKRvVNmSpZFLvbm2T/pgdcrCszq33LbgtfwaJuEn/eDjHzh8S3uxrQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZD/vuo1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZD/vuo1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A160FC4CEF3
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749425393;
	bh=OmpxMN/ko7KroZuZyJu+f2ljCEWWU5I3BM/6keOYSjw=;
	h=To:Subject:From:Date:From;
	b=ZD/vuo1hj3hMZF+mteQSm0N7tH9g8845GETs2PHWK3SGa9hvh5D6gxfGuG9ECtXGb
	 kVAY+mlFVU0v4sLF4uVw4gGpLtR+uy7UPMHSyBVR1ahHxWLJaLagdOvvckpo8kE9Nw
	 wnLCPTjxC1H0+TJyNAown89Y955wVoHBT2H2wetiW5nzk02N47AiH8nYJUL8JuPsp7
	 Itc1uPMn61WFw4c666Xz1sCnYJqphtK0G0pAC61NCTZ0qXJrUUEWI42SR+0Gidn27w
	 NOEXq3jqMPmXQSgbPJ38uPYKQDJGPwretZT7/ca2MZQmfi5C8fmXnMMcn4PZjtxiRr
	 uLnFd1Zwqntqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9074AC61CE7
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174942539358.15874.4235253736930569483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22544b235112f85a1f50f9d01ea7a87f57262142d69fe0e9a62115d5270d1617
Date: Sun, 08 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749425393
