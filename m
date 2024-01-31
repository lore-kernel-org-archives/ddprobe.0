Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C2D5DF0F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706687897; cv=none; b=Hm7rWBxFMdpc+JXHqOigIv4oNxj7opx9mp46ntefkHItlDKWa+Z/R7COFACvqhP++mlknZBp+jfmnrzgEvUH8KW4B0aoWIWrW6bwq7FetNHdPOWkr5wiw9olTWWebhXAxF4iYR3qkFj+e/6AWWehsxepGk2trGkliX5Y0DgIpBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706687897; c=relaxed/simple;
	bh=eEtGOTwV4WR43R0A6aAfpTXGHOF9ruKsR5qxFmkhXQw=;
	h=To:Subject:From:Message-Id:Date; b=pLDWa+KVG4VHpy0RaWZPyWyTsiD9jSx9Aij1ejeXxjvl2AdLquIuhEda+1SMR3HIhkqfPgERK9+Y9v3bc+fpKWG2SJcDjuUIHrizh+em2NmYfwha5SzkTydXQilFrixTWJEd4OgAaf2Axxg3KyuR5/xKCUDpsw43DtX397f1M9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9+r6SAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9+r6SAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CB99C433C7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706687896;
	bh=eEtGOTwV4WR43R0A6aAfpTXGHOF9ruKsR5qxFmkhXQw=;
	h=To:Subject:From:Date:From;
	b=P9+r6SAThI+P5bYoU4d11mLsegBF/M0kpUoNY5zia82CmWKxlOpo8O7zp6VW2bhDl
	 2RpUmqPXMZV6QrNoJfmD0WU7Kj0jlP9b52pID0G6hJJJYeOt+1x2pFvvc59VTqpgl2
	 YWbddiyL+j5zsWRjCgjPhXcbpEGSgamTYJ9bk9EWqDFNW62fAHF++wtEaIiGZnf+zH
	 LIv7r5Af4S9Mwg3LFXxT7N05qrsD+M+IRXeMp9tG7MOpnDD+FrWD6mrg6GJCDSPvLs
	 Cv1lKd9YTn9zB8LJkeH+U482jBOvbin/diPA0fzo25v2J/r8SCq1rP/jOQc0Vi1MW/
	 ZE5Fgg0FDCO+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F595C47258
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170668789637.5845.7424365323299310777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c623adc94cfb72b56a386af23c7d4ab618d471e789bbf2089135af96bef1bf60
Date: Wed, 31 Jan 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706687896
