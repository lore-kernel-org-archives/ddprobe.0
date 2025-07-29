Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF611F7554
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753783794; cv=none; b=ir8rV4VSL+gH/r+qV6FFoHwxSIKfPess1Bh1xFI4CzGY5VZRj/ofb7wyfi/RrCdCvBmg8tLVeuozfi42HiNOXk0NGv+PW/QivR4QpelrHfPPKvIHdctnB5TYMdnae9ZRv5vxfRAyLdiNo/UX9I9cs2UtQnQPc6TUqa40vABT1sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753783794; c=relaxed/simple;
	bh=jdTRpW4kO3qdaaF1h8SgaDHXjkAH8WlEBqnkiVspXLE=;
	h=To:Subject:From:Message-Id:Date; b=mmmsQbQCpmJT8+UVOqMtL0wl48E6AZcgCW9FUKgL3YYcVatujc4bXDks2f2LWvmiPSkSk5dLpu+DEyUqAORT7YDWqB/LxsjXKCs+7rmF5U6Jw0UgQRfAdusa8P7CjeLsgUSJYToIj4z6HNkzkCq4YA1BoHQwBo4A4vc/H8th558=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjIW65Um; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjIW65Um"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1516C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753783793;
	bh=jdTRpW4kO3qdaaF1h8SgaDHXjkAH8WlEBqnkiVspXLE=;
	h=To:Subject:From:Date:From;
	b=DjIW65UmclNxh83Hu21ZzQDTvbLuMZNBX3/6wuxWnZLffuzCd5qpfpy+6RLGCy7O8
	 atVAo+TQN4KrGqiyU84KRsX/v6AlHc0osRiQGUOYS85j5o/BF777HiZ7J8RSu9AB8b
	 dFNbKqKZnsfhkEOKt0C2B34Bde8BcHMFjdB7dsm97aNJbomPXtGxJc2xzjj6o23C3a
	 /JaWQfacYCeCw2ycDeQXEtDLLU/G9VhtM1RS8NjbNqkcWSTkkY8nbytKppNPnDyETR
	 Nl+OrLmoJmUPlS/ldtOY3V9ZXL0p+wL3bx9bkNQaPZsRq68/DNMxbF6Euu6ncpUNLt
	 svwzUcJ4sboFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F371C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175378379357.30874.5280823718848741937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccd29bcf3417b4327bf69f2a522305da9f9b774d81574874e66a92f92c735eb
Date: Tue, 29 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753783793
