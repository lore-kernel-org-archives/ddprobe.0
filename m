Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082101E4AB
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768175034; cv=none; b=sa6vOVaXLw1TO2/iBKeaa8SJdolH6jQcKJMMZwaUg8RLX3RFLCviUi+IeJOy63RyAqSZ71schxSTTJrKzEWoMTy+RqcEyB5NsAurtRb70+k0s7xMv5GUGY22UtOWcjGqp2M37szr6bfV5d3OLpwG8He/iN7btAjYDWKnWc/uuik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768175034; c=relaxed/simple;
	bh=Pzwjlkid5e6GkDVoaohPgO0uxq3hCZB+rjZOIcENKgw=;
	h=To:Subject:From:Message-Id:Date; b=U49TsB4Ggq0AXSFGUNKMF9OECD1VDlmtvjxucc12XNpLu9249Wi6kHG5KYJTgF9HhpyQ1befeT1MoY42PEmaicxZqwrFNSbqwTLG9hoDMYpySruJ8jOAWC8Wyqne34x1HgxBkIHDkHkSdnoui7ICDNeSJ46f+4SUir+rMpgCn7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/eWp1i0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/eWp1i0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A514FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768175033;
	bh=Pzwjlkid5e6GkDVoaohPgO0uxq3hCZB+rjZOIcENKgw=;
	h=To:Subject:From:Date:From;
	b=a/eWp1i0jEnENiKcTZHo0YI2dwV4Vhz0qtwjNyuvn0ZzirxNkub6BWQy0PirlqFCs
	 nxm7goUnk1RaUKNCBl/U0Wi2x4GA+Lfl3bJrabKifItp8UJZF3vLDVCwTZFRDIF20g
	 5JTB/W7l1STdkaMLBwLJJ67d5x1pTmNmk6NFO4sDuaL8+TrrX4cml3ELQg2AZIJp2l
	 JNjmgSzOdzC2/Gneb+//8qNt/NFy9Pa6DR8GwwOtgblsXKCLaMH4QF8Aa62tsgLLuN
	 Es06wjuTVQogTKBjgJZJf3lqRbajnI/lX7QWifs61Tu6eUz/nqUC3kvK5exJAlDIc0
	 UOvsEHprzc2mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9359BD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176817503358.9110.312448552016196051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0d07467efbbff4fa74d784327231e94b223d019f2826681b3c2a3db89f586d
Date: Sun, 11 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768175033
