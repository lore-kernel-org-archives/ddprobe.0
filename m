Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1971013959D
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769649834; cv=none; b=Tk/joK0u0hqpKl77g6cT8n2+gRR88Yivm3Jj8l3JFWCoB24P5XIH123wPGJ1HDFvCUzav8DLElcq7EGMGZ8aRGBdXyMFbk6VYzQaZt5CEAUiE1hInQQne+cJWvbMzgu3M7xVXGrtLP96ax95FSWY5BBrkjCd8LtsnVkWAHWYUsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769649834; c=relaxed/simple;
	bh=X6us6V3AxtBsrAwFch4jK2WItgYcbc4CwpvccBJa5lM=;
	h=To:Subject:From:Message-Id:Date; b=UfkuPvvTa20qMdHoEvlPQ/L8/1OZ+Bl/Yd2ozQZZd/oPrJ0NDUu9S/2Pb0FTkJCBfomj3uhJ2XAVlLBRHbtIDDs5ZFjlAGXKFX83bzCgygppmqdBMYte08A2SE/Kf6btDBTxvorI1avx6Cv0ZT79NclwFPQaXggOfZYQz6WwTck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWUFg6wv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWUFg6wv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61BDC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769649833;
	bh=X6us6V3AxtBsrAwFch4jK2WItgYcbc4CwpvccBJa5lM=;
	h=To:Subject:From:Date:From;
	b=nWUFg6wv531YvHK+RPkR9RdboJAsfM5cPCreCPUyumrLzCdvqSxU3YMF17d0SRcGx
	 LKH/S81+Itm7ocBnXw8IS6lXzkFVRX9VuuSeFltP5+11/VSCOqnUzXv7vIx/wHpv4e
	 Dl/fuXAdeulNM8wbME86zB1HEDny29L3JWj+WH7aQj7srk4SXIBvJcMDo9Hb2ua8b7
	 1WEVafKYF1/ImFqquk6r9ygoGNfxuySiTlA7yqvtfk78QcacurdLNoWYyrFXlI9PWl
	 0zy7LlYZJFwOcQ3zzz84VaJxFccBiIxAgslcH+uXaJrQAvdh6jHYJizsX2d7E992si
	 vQwYwY59xHMjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C62D46BED
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176964983358.26781.13739678254259562556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 379958c58ecef96d108430ec130da1fae6ddd6eb4ed8b0111db0f8a781c2be1f
Date: Thu, 29 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769649833
