Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B39D34389A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 20:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783889914; cv=none; b=osXlkhFG2l/APi+OqRM7pVu6QQs6v9ACiNg0FY6g1NMFGJ+26pqVnXwviRqmQq6aUTiiH6VI40PWIYtN6mdygGA5EhvwR9bQIwj51YD1Y8IUGXBrZWzqAewNlHQd54IYpjqtapbpMZaS89aWJK+qgBAT8W+ayWfgpLcWxXLcWJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783889914; c=relaxed/simple;
	bh=vfD9Te8XYURxb3XRGNvDBX2p/74LkxwEFOFl70qOZNs=;
	h=To:Subject:From:Message-Id:Date; b=tK3AQgo/4pS4RgV6mhYeYvqYu8tM1Nx8MOKNyCsSnU6Efw6cQSG+pvn+nS65kB1O1h0Xt6EkzHnaK4HWTYqZCAXRcoiLZOtfrUlxoHPTnTVk3FSz87f+Enj4zAiXS/HwIuNb/lkHqpp/FkYSh33mFpVA1YI46GkWMGxuz03f5AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ev/o7X9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ev/o7X9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5853C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783889913;
	bh=vfD9Te8XYURxb3XRGNvDBX2p/74LkxwEFOFl70qOZNs=;
	h=To:Subject:From:Date:From;
	b=Ev/o7X9zA0agpx/XUt4oKk/rVkSn6fsYAJWAsmW5Te5JPq4DK4GQh22ruXxpZ4+OH
	 1RbyAQLnskpImIf5re+irs9x8ppXxosGdyYJ0iv9jR4RZhCdHRxwM6Ld8AUiGQND7t
	 cstWA90G8zqUD/J4bduq8JMdeo1plxPH3+AoJpL3oeQjTVGLPfE9kYRoChUf4kqJz6
	 ulxXscQjA3OpvfS/RJHar5qnA4huzDzqiGPo8/jyUbyYdGIF6T5AUEktMJgEl13dOK
	 SPCB2tSS/hXULDjNu4yjyVVH82566/MXj7AY2CJWiC8tfRV3znnfX50VhPKCRqnAXA
	 /yyQUmfmlWMzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAF8C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178388991368.2273.13299929135101572153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1fd9e7cbf0b54552576a3b87d7ba4cfb25dfed53e002f789e9348724ad66298
Date: Sun, 12 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783889913
