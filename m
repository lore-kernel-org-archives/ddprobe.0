Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C921D6DB9
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750498194; cv=none; b=C2mY1NolOdzXZ5qTTPDWDHEL9GnXt7Ahw+ZsaAgjHpKnG8D/rdE8CgeMsy1FF5Ktd7cdQBevNGKFI5WWE6x5PvCorGwiT7XQZ+mGwVchxUGgps4FKbZiPTLnd731TNTwrWRD0SdvTAKfArRjXP3PUKGABaSbDT75nPWzT98b8tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750498194; c=relaxed/simple;
	bh=e0CiPUYnEKz5UTny+aqi+H6+K9VuxPT4wu920nBcmeg=;
	h=To:Subject:From:Message-Id:Date; b=reo7vC6GIdYeJI4sHvZhrHXeMosa/QnUmcbC1wuPSK+XJGVPGj0eXp+VkwdIaElXKdWTvNrrMKBr1vLuPATK25DYbK6dmsTFvaQderinzpbtnK5CDGFemzgNoGW+B+gTVf0KRxnAOQbrXhegZd05guKk/nkCaLGFLkdKpS0lEP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mg0xjeBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mg0xjeBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A518CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750498193;
	bh=e0CiPUYnEKz5UTny+aqi+H6+K9VuxPT4wu920nBcmeg=;
	h=To:Subject:From:Date:From;
	b=mg0xjeBLOmpGWS1o1sDPtX8WZCbyPyIBj3u/3NsG5GcB47xjaOC8lOU4LVq+5XsYz
	 f8LKcKC3awh2REQ0s/h7obJ+b1qMWPxBORvAodvHuC5Ouf8xjpmm6rHkUADSeL3N8Q
	 hX5+VKNRLzEPpcRUvzZ6Eq97gsjWUXw5+xWMAtj44cGzExEtH63voJFV8jHZDdHhZo
	 BtaTcnmDrK7Ni1gfsptZW16Ewe4euyWXrQJZFa3W++Owrs/217I4vfiIaVuBbkdUCg
	 3pgRLiFgqyd6Qz0+rB2ZqTQq7tuYRPYx0Oeg7pzssa5Tgs4ZrWFMtao4eFuUQy9zEM
	 tAUGunUQ/Z0FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92020C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175049819357.15630.5820358409713656228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45051bdf617cd0b40c6da800abe01777222966ca63ef2fd4d50507be40d81434
Date: Sat, 21 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750498193
