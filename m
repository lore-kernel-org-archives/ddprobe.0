Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D1E2FFDF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768131834; cv=none; b=g5h7h8DG9AQpURLkFoL9CY3uSaJZ3ox3xahVtn1sitS7TgbIf14mlxMe90UaRWwUF7kUu9KzRUlWw7U2DbZi34Uf/XvQl/TZ7fv0lK9yTg2zdSE1Hkt9tSvedKvpCcP3S/K+2Ntc8Wj0M+DhFePB2QGnyaz8MGLOQYlVSwR+GQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768131834; c=relaxed/simple;
	bh=2b67rUJvtblsLJi12w+tHvJqkVMCA6Gbl2BS56UJ3rA=;
	h=To:Subject:From:Message-Id:Date; b=i+EVyWEIHSn8W4bGvrHfsk7V7Ja8ZkmoCuYGPwLKLKCphkoSpdR9y9V1FeFGELcsXFoKbEJ8lkzrwxtn85lX61On5m4zszHsV+ADjz5un2W8cc/HRIJfn79YlbAqcy2nWvOWaE2874NgpSI2Oj0RdkGgKvCiiFi31z7t1CZPjNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqK+O0Uh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqK+O0Uh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E10C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768131833;
	bh=2b67rUJvtblsLJi12w+tHvJqkVMCA6Gbl2BS56UJ3rA=;
	h=To:Subject:From:Date:From;
	b=ZqK+O0Uh3qMKQkba9XyAbpM+mJUAen3ke8/G9CHDn5yRrjFyErnqJvaC0n2Mw7Mdv
	 jc66ALxkudrFY8NLisfw+M9DEMk8tO1TcdW364XkM9J1LuY6sMaus3/K0iAyBmH2px
	 9w0G07LZKqyfYv34+dCU7S6QKaWcTZa+jmcsFfEGb4YRSMHw6adQYsv2PVEQGjGSmi
	 8FLRIHOeBEslEwiLwWv0hbCZqYvyBKr8DBmwBLC6BDlPnfzygX+9iLd/kALOtqUMoI
	 pJhQV2Zn+DsHuI8waWXZBMF5CERpOt2wjYpd+vYVwZeg0Ge4u/WwtNCkj6bPpl67LE
	 sLwAPpokJjkZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF08D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176813183358.25469.12530244081336473327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40f8b3764342edaa55f177d1447ba6cd30540b61631e3eb44ae151e2a1b071b
Date: Sun, 11 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768131833
