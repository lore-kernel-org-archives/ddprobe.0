Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA9534C9AD
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 20:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783111114; cv=none; b=WsF3lPjRKUnYZk0zIB7razBPOfgFtAHjn2MYcX0UsWW9GsPRR+/W5482ja8PBI8+zHlPGaEYdBtnjBhjMMhIc4WBzeqV4GPVzv5xIzWEHoXjJF56UR8OrVtT/Tony4aFu2CZORYpGYH5FlWb+QCuM0f4kpbiJrWWdtvS/lxAPUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783111114; c=relaxed/simple;
	bh=+8DdQkCb+WDhVu3wYq1oiJWIYuWn3YkspYA1OxxrE4s=;
	h=To:Subject:From:Message-Id:Date; b=TmMB2+U6LT25Tt1+eFqDtGVU2VHI9FC3rBFvaylybvQXcGWi4UfqyFju3GdGEvOfbDhO5RVaERrPEV2fnDFk11B3eL1S2gGEw/ud51wdTuYsVhAsQuiF6hi/zEgkeHmgPV9dazAdNfTfIvk5Dzv1FC6iUwF6XmnySzPBxITQZAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSxydD8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSxydD8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD1FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783111113;
	bh=+8DdQkCb+WDhVu3wYq1oiJWIYuWn3YkspYA1OxxrE4s=;
	h=To:Subject:From:Date:From;
	b=LSxydD8ywbcPu9qEat/chPNKykJtshP8sTtjnhcIfUXgm99rKPtC2NuoT43fccBk2
	 zALqqBl1pBFtoagLCr3zMhqhXtsRxO3F3n5PgmYpYbqPjcnyDG8gQx+SZh365QV2UR
	 A1Kg6XHbhPEV5goAex/Msu85gPooMMymZwRJxx0Qqo5OrPSup6hmdBoaH9Tg+murPc
	 39ynUz0C3Y3cgqFoQvMzrQ3b7wLayh5Zf4kE8EotEKZ0aFPh9Ir2Ah5jtRh2XJDOhO
	 69oitJzoZPj6+eYpoKwLthI6iKqmoDSswXW4F2ol2ldore2ecAtvZVgXdLmUaPXeoJ
	 s2QLhbceLbt4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4FDC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178311111368.21874.13663259486497129694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 331090cbd9e394ce609d0fff2e116fa5585fa0378091e450281304eb4827f777
Date: Fri, 03 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783111113
