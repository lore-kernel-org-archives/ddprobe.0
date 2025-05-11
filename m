Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3756363CB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746960594; cv=none; b=fMw0WndEa7d4I76046/VhrSpcrx02Qw3Su841lKqwKcnrBy885IYnnvPuEYinZ/yZuG0/PzAeaOwb9A1aXl07jcSSbA6c3wdf0XstFsJQ79cvJ8Ssr9KNqo9AMzOhZ9UWhjkO6J8uHNgtaDI8r8OPFioEICgRCglgQYz1rYDu/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746960594; c=relaxed/simple;
	bh=zzuteL3R1xEIdfKh1LbPQf7CKPqKxP8gqijSspOWNS8=;
	h=To:Subject:From:Message-Id:Date; b=PXxkY3/bgAn97BF6pEfcWvde/6+b9Y9ER8bNjpbJ7jfDGTLftMYYGdGWAL01fVz4SqrqYGIJtnFStck5vroL4gPvItsXONMsmh0O+qyyOcVpAVBAAfBj6WTpAH7Jzp1dQlREgYuJFFzWaUNORDCNUN9987NqhooVg+9fe3e2iVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATluLLmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATluLLmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C3BC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746960593;
	bh=zzuteL3R1xEIdfKh1LbPQf7CKPqKxP8gqijSspOWNS8=;
	h=To:Subject:From:Date:From;
	b=ATluLLmX/f2L5gKeHYADbAFvgZTYov1NrAOwdUtIp9vj6r9+dZNcaI2EVkfRjga8v
	 i2GkZrJjWrGU+rT5n4QXEwZnMewHS5zwYiHqffL1u6UPhOFUbJVNcdhqFKchKrp4BB
	 NlDACPoJ+1Mrk5iFH21XXY+Slzkj4I8Q9COCr6+ehqrEN+8m85RovWZS+ogDt0rlrg
	 tR9EDyRvWfj8uO8RB6KiwmOKp95JU744Ttg7chwkhbhXeHIreqw6VAKLbVuhs0k8Tl
	 K4dK8eOAhrV8UGlvOHBrqFDwNa2EEw4ZsKUDCMhTV0VFAJCpLMnpcKp4QFpvf5DLCt
	 zj9jYqtUb7lAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90397C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174696059358.12931.6640979823524616650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4bdcee3f36a22d710c72beaeddd282dbe67185409b61c60976d69a2bc9fa94
Date: Sun, 11 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746960593
