Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97D988003F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 11:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713526163; cv=none; b=BnXwYNtaVVGUq7N4qJKeE9+XjfekCIwHDRMrCMHAt13F5X4JRVjpGgzCYiZ6zpsQlKpMoAiB2u6/PovuqaxWQQHPa0ib+cR1j3QIGEVl/GnQSthULBu6A4Tz0Twfy4paJs5OVvznxKdk9EaTjInkU2tPMM0Epj497p3SSYL88Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713526163; c=relaxed/simple;
	bh=iTYdYePuOs9AxTBc89C33On+10GQa90ajgmliytLCfs=;
	h=To:Subject:From:Message-Id:Date; b=ndiIT2QG3Ue5n91qLH722hm2YYOMZCyZa04WdpxqSQ2ZtAmJyZc1axWOu9jrnhQQi2j5Eg2/2ZP0M5bmkCvNJa0j7Ojqwd1mHdcVmHAn049266i6P2tf6ZTOrdC7VIPdBYFWtyZu5OxFJ65oZddDMYCLqsRi5rd5CsY9fk+olzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q83fxAVx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q83fxAVx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1D2F1C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 11:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713526163;
	bh=iTYdYePuOs9AxTBc89C33On+10GQa90ajgmliytLCfs=;
	h=To:Subject:From:Date:From;
	b=q83fxAVxbsTG+tTCCU4qEzAyGdMYUyEMBcRsJaCVi4ULoJtqRetD8uYMFcj+GkF1N
	 omofHJ+sMVghVpc9dIWUYGVAgMANH0exTJxPjfNeOPJlQBeW0TgCu+CqmMZXnImj9Z
	 nLhjeTIczOh1F45zffjuWHQJsx9697CHOkAT3emdcy7LuhnjD0bQKQkTPwyDkrVPXU
	 nb5PHa70ObADk/CDBh2HMQrCYD/gjkzdqtnZ6DCdmdv8K7yOZCaXAiwdHMSpRhakhE
	 bKmV2PDEHfFRAY6oKhxlXnUnXHvRRjsLQ16Iw7rtHlBrt9HiSnlcwHSh+30f03/7AR
	 IEER2aw5j0Xrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2346C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 11:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171352616290.14539.5549915136265476242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5fafe5262528644ac1197fc1596f226854112a8962d7477cd7b4ec70b9e337f
Date: Fri, 19 Apr 2024 11:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713526162
