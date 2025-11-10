Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFF12FD1DB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762765194; cv=none; b=a7cY0YzSY8HxJqD0iZjnoS7F5qietIY7WXunyxOeW1FOw8YHQDIBsb/TiYAboAfvGDMBbh+mJK9xByXJ2m5vyL/Zl7s4CeGTRE7XAsH0g6dJlfXFdMVqaC2OW0PsQDfyuBGwOBiwnujZ5VPBZEgf8a4cnJ/gl5KBPJJ0wV1TKt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762765194; c=relaxed/simple;
	bh=9JQip2pUbzxZzgUl7htWtIi5xfxd/hNelHu1IyeZUfw=;
	h=To:Subject:From:Message-Id:Date; b=hBFYlYJrbcDY2oqn/MeuInoLlOqrjAFMqEl7v21ziiPH9RViJJH/RR2MCBXgWeF2KVK3zduZFR+KJo3mh0jpYuDbakYUXpBL2/mnz5vikiB+tHCY0X9MCFR40wsaOJoa1k8zPArm46QAYa54j5l8uc3Zfu7atOb5GanaU2g7LLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l79X+ee4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l79X+ee4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A917C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762765193;
	bh=9JQip2pUbzxZzgUl7htWtIi5xfxd/hNelHu1IyeZUfw=;
	h=To:Subject:From:Date:From;
	b=l79X+ee40wRdxglILcN7bWYQnyAZiUn+JWWvEqLH5pWSvW4LG13deqfuAs4N1EVHC
	 X6IYvL5T33s92nos786AVfzNfiht5uX+FWJFcmKdvNkr2vroHItgs9Oga8X8ucUSbf
	 7WZnJb/0KdmqhtA/zn3Ld3IwkKwhrt/gxDZyJkVFqFRPvC+lj1apnMLEG00KF/OyXz
	 K7tCnLLvs4rPUSRz7vBmd7WL4OQ9aTn6ns6+btc3PJccNX0b5DcoLk9LN7Iy7k0DqU
	 ckUW4izGPqQX/9DmyTlLg0ItP0uR2zcL5j8kBV/6kGXiixQ8svrD+j1/wRfQZrULJG
	 dcElucuxPHdOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F452CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176276519357.11332.12996198250794996486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f23281776a0c2fe255b0813120b184814c8f1d3398a863308ad05fd77970c7f
Date: Mon, 10 Nov 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762765193
