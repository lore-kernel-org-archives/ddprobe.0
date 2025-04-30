Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3697121D001
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746050995; cv=none; b=rOorUZfKpYZ/B5CZBKX2ciPNnuuaAsuKF3+oJf6FyMxsblkAUmvvqT5Emy+JpA0548JrXeEOAaBEKXu9NTGD/8V9pCKq/FKjX0MuM9B1pMBhCQ6gsn+QiBXHMnelD46/zcbBnrol+7wKOXj42gjWaW3VckY4fxagcL8un0VKKVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746050995; c=relaxed/simple;
	bh=NLUBuDMaq+yLAp7d8myfhHljqdSqatVIlA0Ck5kGF7I=;
	h=To:Subject:From:Message-Id:Date; b=RbyJcEn2SDIy3sXA/vrThycW4xp+gQlhcQkdKpfFOGVm3bGd7n4hVet7sYCAQIz3FHAeyQ1qOexUQ+vCcn10WMGsng6bhWgqza78eoWqqTHUm4RQ6m1kJIyBdybVfg1tZncK2HF48NLhdySG3F4S2nkfMcJ/UsUmVXSCwv84Uz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMqdKNl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMqdKNl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50F6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746050993;
	bh=NLUBuDMaq+yLAp7d8myfhHljqdSqatVIlA0Ck5kGF7I=;
	h=To:Subject:From:Date:From;
	b=rMqdKNl1IfpRmWBP/km34sRizEYEG5xP5tNIlH6ICynBce80kprMRzzmWRKM3iNpU
	 e5uIudIby2ZsGjmd/C0cyWDqF4MTnDn0ctNgtYixpKsjmYdwDEx+lNlF8+t/AcwpOZ
	 fL6RjFElKp/WANaniHWE/gTj0LcRyf02pb/gr8DMw2Eh6SJK70y8dclQW0e63anCk0
	 cAReT0defNW46p4fsAUb4Ntoh8mwKAC7idN7i7wwQPxiQHr+8AnyCExLSM8oaihdUx
	 4b/SHfMgSKS4AQVUjruWeMqZNBR4YI0okCLxApL53jUavYgHXGdmMqWKgWNqqSgpFY
	 UDCZNk/9SxW8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9397DC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174605099357.16068.13286119099350475058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc063969ef5a6c856e9b00bea19369c190eaa1ec606f9d8d4a6b9b7dbe2dda93
Date: Wed, 30 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746050993
