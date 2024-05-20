Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4948413848B
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 21:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716240143; cv=none; b=SlvvW6WDqDoM3jRExGcfG9iitn8GhttGlL5HZhL2PUIvkRBsuLQ7RYp6Z/g4b6Mv5zJmQKGPWltesp8I9Hu2uLy2MF33+yhl4vonm4U+yl+2OjSooahDkB2AGkYYIPMqWii/pKt2di2SqIzNdRf4RWMwrAoGbkMFScUvUGkWqPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716240143; c=relaxed/simple;
	bh=R5XYx1w9d/AfB5iCrge2rwPY/MmdqLZdVTV6Si/Sh5I=;
	h=To:Subject:From:Message-Id:Date; b=LriqHDFJ5tzjPQcDzvssi5sGS57zIec2OJezVhCAk8sPvD496da0p5+e7hV06eKIp+X/Nb7RCcVHpRpEmplU8UoNGY0GSlUVVw213JEyYKupR6U5WYfTc5L1gnKrgFenE06ntwsbmAi3EMsIMJkGxbIB78md07f6m5fpZC7nO4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoZG1t0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoZG1t0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D548DC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716240142;
	bh=R5XYx1w9d/AfB5iCrge2rwPY/MmdqLZdVTV6Si/Sh5I=;
	h=To:Subject:From:Date:From;
	b=KoZG1t0l7yLZiwBlb4bIQO8zL35LhZhE6jwbWxOnixd5vpTqfMjTpJD92cQ5aaxcE
	 9ofz/7BVI+DYMdPbUyU82/1PmjKqgmO/id/pquXXd1ccjpXuq46B+Alx43rk/baOdf
	 IYPQzrlDf/2w4DN/YnevXL936nQrBaTgm93bxcJWqFVMw4OEdRIQo+dazfRAVZ0m5j
	 JANeJxUYAuGzi/KlN/6PPH5vsq402xtTmn3Igkx7eVw5CUkCFsaSFV9lWOThKMN8MK
	 5rnyHeqT00ePdE5pRsJmb1DHpeZPOIEyTCE5XFV01MXwlo1vzxcAQewGS92aj2tZqN
	 67bytJuctnHpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12E4C25B77
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 21:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171624014277.29743.5837650289690155259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c21d7b0462cb6da66caf93ed73be0fe93c4c6a3f135d06eb63e5330693068a
Date: Mon, 20 May 2024 21:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716240142
