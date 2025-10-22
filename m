Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2239A320CDB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761130194; cv=none; b=iJcZD0IGSMyQ/jEJxG5DFzmK8DDfmJSRX7kr8nokFG4ym5xgOUnrrv4MntuMqy41xilAEWggA/3eYq2zsBVBVnTA22zfcZ/QOSDrnMypRUyKdyFfFPMUMSArTtRxWbip3jKPdjtNNM6kfTydYKBd26a5EhpD/a4WwdnRLQh6NvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761130194; c=relaxed/simple;
	bh=Vv0g5KjIbwlFp0xknxTYrG6gRuiRQt1O3l85VhV5cg4=;
	h=To:Subject:From:Message-Id:Date; b=NHLsjP4buUKgOCPGJLe4qn99HYRi5vftKddNbKhMr+8rum8NU/pVbFuC4FJQNxecLQ0P17N2ISGbhBMFMYnRLM2CO8Jhmv6VyDpedLxDKbRJ7wArBIGG4GANDI/+87tNeB/cHwTLizoOfW2wC/RaNV5ZGtjiI7yjlGSrWo7Nuf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYC296/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYC296/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7307C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761130193;
	bh=Vv0g5KjIbwlFp0xknxTYrG6gRuiRQt1O3l85VhV5cg4=;
	h=To:Subject:From:Date:From;
	b=QYC296/5yv4J8+nj/mGDlnboE1YTPGpwgAYAlBTSpGkx6DPLwu/11HxvryF387fLa
	 xaZDiHv+9dftdF+ujA7Wsn8v3OL2VzbSkuMCgvyzP6aXPEczgNaBx7+RL3KkLSJuFC
	 KL4JqROd9T61IDKdK5bCc4bNRvb9qmC/jVv2keYUoPWx6rJwv5lMs9EaZvJQJnX3lY
	 GBUnxAuo4bSqqgUsF+B+976/RWuRHnj+7POE1Eejh5/bX0j+5E60Q3WI8QSfUOOym4
	 3unvAiiWAvXEN+zGU3xsRY75znK5FOrLp3By7d4dJwmm3zcDFnPr5/DMhejk2tgtwt
	 yTmjk5zvsXxmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937E8CCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176113019358.22271.3060318107993375994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b8e0a545b30daf0cba5fd4e9b06466a6be779649afe5533e785e3a0fd213413
Date: Wed, 22 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761130193
