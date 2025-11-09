Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE9E190685
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 00:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762649394; cv=none; b=iA+mAbF3JL8lxWl26+pvMjXmeAxCD0HsP8aumTPgjZ+iw59QsY57MJ5JNjZnK88piOhKqt+HyBf+MWNC4a2pubPchBObk5v9V8KwyrrObFyjqHwNxbQs607a+AwCgX92uvzJDWs6CAsagagaHVp/fB6UOVStHWLvU0jFvVHnqm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762649394; c=relaxed/simple;
	bh=eGWZH52UC57nkckSZv37TNzQ5Xy8NDJI8RuTJn0F4Ag=;
	h=To:Subject:From:Message-Id:Date; b=dvFHnrPvw38OUmG9b+dVG8tmFIo9Ho9UTXgkRKjHqN6+yUpeI3sWPlSrfMu/EjKDXnvpCi75fWjFTkdRcLhIS6iI69zdgK4MHebh5JFtVFGQq4XB9oTlg1NOhCnB1TvpeQ+l50khSMAvBloQW4bl80jZA+aGIy7AHOND8e0E0K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3QdmVlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3QdmVlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF90BC2BC86
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762649393;
	bh=eGWZH52UC57nkckSZv37TNzQ5Xy8NDJI8RuTJn0F4Ag=;
	h=To:Subject:From:Date:From;
	b=P3QdmVlX9vH5CninseFLigkgJH85muQ/ipc9bDgadhLxIMgOZxiW2bmFut50lis6d
	 DuOuJmDtX41fgdf8DF76rM7yLtLSa8Gn4sU7z5eiIrA1TuaSrisInYG/7MbV2rBQAH
	 jy40sF1bGSGKAo1zwTPMWtxU7j5Gnwucfp5l99zbGT7yJ9aqsD9DomSPf6T4MpL9Yf
	 oTVPokA6kwev3s6x9EURFp+DXiuGsyXO7MpY4UBBv/qRNrWVc3abUj0gyZzBPul0+a
	 FVlcg67zk42yz55DONLMPXXbXSqoZrdPr4KFH+Z2M+4fe0uK7w/f6W1YS1v8JnGcMc
	 lfUJPUzxjJoww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CCACCFA18
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176264939359.1121.13026175358251233095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffb167f90248bb1b26fc8833501299c8285f83f974e10202d972e2e9dd0b7ef6
Date: Sun, 09 Nov 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762649393
