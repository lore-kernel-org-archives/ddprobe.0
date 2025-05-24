Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3573923B0
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748128794; cv=none; b=O9+P+3XeqM1r6eKJG4xF3IyYRS80jQBdNCW2js6xIhow8uPjsow8yudpIik+hYE35ScrRmRaL9Enc9y1PKafveHG1nR6ovJSWeFYqR90iG6jE5W14uphtUTQO6UaKOBb01aSRdlDytDvumWHflGVKEFXelRVwFUr8J8u0CV5QHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748128794; c=relaxed/simple;
	bh=Yjv5gcKS8fvIvXIWHXx3tvPEOiQcwyGoTYdRYnMoNjs=;
	h=To:Subject:From:Message-Id:Date; b=aqIuPes+AODR9F4PNtYIczMPY3bB3uSxrqurJtLi2v+FW0XSJnh+eKDlX9bm7fodVVfDPwaK0bl77gj3ZnPUfcr6e7aiezTU/Ux7XiFX55A4Km/jTMHibfJ6JFktWSfDa8z+7Mf+KWau06Vv3fdS3EnbpoEYiiH/XAiNhbIKqNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ip+g+66f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ip+g+66f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B18C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748128793;
	bh=Yjv5gcKS8fvIvXIWHXx3tvPEOiQcwyGoTYdRYnMoNjs=;
	h=To:Subject:From:Date:From;
	b=Ip+g+66fAfoNFqdwzpn5T2e4hknINryl1cLGsfm21z44Mv9yweDuBD+yet9vkyEUK
	 wDgIYM0esUEBaRBQjR7MT9vMQaqBXqXGGeZ01QXNLl9IRjj4CO5MEggCoPvU9AVqDo
	 +fBU/UWUqdnzvtoTcfnZAaiJ/NwJy8eOjwJX51MQ2NwUT3onIXmhT5LfzJT2SwIsUS
	 dCH3Dz6pnQHlcftDPlaJasYv7HONxoP14CiQ0XpkXbfgotBt46BZ2y0x2p2qa+GsF0
	 ONtpaKLk6WXhpVmbnXd8NpLxl7u1eyraUycHDomUiXc14rd3pKDWSA2CH5vjxlnE5z
	 UqvFredxWh1Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9685CC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174812879357.15663.16735214296889930773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49564a0b909e7a9a4b8196eb29a652f2e5acfb3a87d78ce01dc672664d700822
Date: Sat, 24 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748128793
