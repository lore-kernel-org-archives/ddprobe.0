Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6DECC2F2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737657353; cv=none; b=C9ocEspuCtA6iVSKJ+ISo7YY0iT/UftDX0qFZqF1BUghAL1XdOeGUljJBlh9ay1FUsffvLPVWbmBwqwj87poqj/JqOFWvw0sfkylIoVBceNcm0bpBcqCLI/DLnvzeYZaHQVzzCzbgYmKr9E+QmQzIxr3fOfr967eKShhe2raBb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737657353; c=relaxed/simple;
	bh=s5rh8zekV+q6EXQkbXsN9AZwyzgYSUMSrOz9MG7ryIA=;
	h=To:Subject:From:Message-Id:Date; b=LbNANRj0ZhDUyZHXmNThrBUoY0qG1Al0ifJzf453wmCPrH3HMmH/w5bBgCfzw0vDX1mJYIKGP8oclAc9/NH2tdjdyMvV7zV7R/oJNRy35BdwnJiBCPAdEAEcyd9VH1KmvbR3YeFh+pC3vAKoh2jnBG3us3t+Yy//dRWLCG0eFyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHz1KVl9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHz1KVl9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC48C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737657353;
	bh=s5rh8zekV+q6EXQkbXsN9AZwyzgYSUMSrOz9MG7ryIA=;
	h=To:Subject:From:Date:From;
	b=RHz1KVl9JoKhBpWgVXmruahe+kLjxzT/sPdVBCgWMILfn3trMV10AT8lUAPFDIvXx
	 9A9xCwAy20H/gCIZDmXwLggLW6chsMqzMaeocvOMZO1W025WI/pCCf39PkDY46SYXu
	 8Hxk9xiQhn5Q8Vf3MTacrVIpeBThADNRJfw3DzgWm0TeB6TSZcXKgI/1uUGTRAsvtI
	 QfaKXG1PPSb7sRjTn7YOYjBW8WjA9c73HAjF7w+KdFd/tKiuv6V/5JtNgH0as9vWmc
	 VQCnsRSjRoHbRQLnU3heJWjZEPwTG+A30AYG+uv+fGTMy5jbQycR9LQKG9Z3eT98MM
	 PsTPkblhpkArA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0C3C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173765735362.4276.7269497200319407557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9914abf52c8e66c3eb87bd15f2b82bbca1a96d4e1d8662a778b115637292a72a
Date: Thu, 23 Jan 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737657353
