Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26099314B73
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770675834; cv=none; b=G4jqzv+kDMOgBYCIP9qI2N+BoQuHOOJopXT3IqvltMCQwR5s73V947hy/ruX+HH//Eo5XExvT/gwxsmVOwDuTXZq3drsadpc1KCpcszyySGaS9WYPMdim3v/8oyr/qvz4TAy9C+MtFhlw/LJyCy/va23DL1lZNWtynfbP69Ql64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770675834; c=relaxed/simple;
	bh=TVH+ox99OtltBGy3Kq/cFA/U4WAPhLnPsE6PitFZgu0=;
	h=To:Subject:From:Message-Id:Date; b=LDEgpHOb+1CbGo37lAdq2feTh7HuyVZjLRLsVx//ZqFqifw+Eb5bcq5q/0I0WFIM6wT2k35nsisg52qisRPzta7ZtU8s5ASpoFOFIfR0bRl9ykfPEvhFQKkFkk+enmJC1acWN+TDa7pbnqfTgGnVa/S3A03Bt1uBmPD78wVHPdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4GZY46D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4GZY46D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BECC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770675833;
	bh=TVH+ox99OtltBGy3Kq/cFA/U4WAPhLnPsE6PitFZgu0=;
	h=To:Subject:From:Date:From;
	b=g4GZY46DneEHmukY0n5V+DgBci7ZeJXpS1PWCOZ1P8JerN3LyCyGrH/lihAf/iXhy
	 Ukqz+2yKYvEJvLzV7O4uxax84HK4bDYXyqq3+7Uph2/mVnTaJYWx2SqPtHY3XiDRhK
	 ImsQaOgiXxtHQrG/+fpdXjBrBC+HzJhmFJEPndQoT3bTeQt9r7p1IkhLXZxhsNw83A
	 9PQvE6ltQ2CWghNtaL2rkQZs0AMx//dQRKMpKynIVDpPJXhW+KO5c4ZDI/ENzg8bXI
	 y8RW465D+irlguPTUTe5cI/xsC0Ga4r5jFSAwWfuDZFdd6c9O1G1HI3hWH9JPjRMuj
	 3Jn4HyWE8eNhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1DEEE94615
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177067583364.10851.11963886652223885597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2173a0c161cf367062300d30bdd3711a07928176532d73c6ffb945e3789a92ab
Date: Mon, 09 Feb 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770675833
