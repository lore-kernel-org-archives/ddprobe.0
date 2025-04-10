Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34633596F
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744280393; cv=none; b=lPoBSM74bsc66x/jngRY3a1XsNE9X/0SqFWfpixobJ2MBzG6jUnBRGqCJXbB8PYUnbh2SmklXFf2jZe/eLEIL35JOr0rOkAgqV10EfjQ8Jz8uySeOgw4P/6kBM/b8DKhyzk9W6Rj/mF2fHLWaPJyP2TRA/l0ufyWafaslbeWDLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744280393; c=relaxed/simple;
	bh=Wq5ogDWlpK18bYs5jOUTyen9Ai8sdNjiWpCykgyKp7A=;
	h=To:Subject:From:Message-Id:Date; b=AptYEfWHm7YLXapf1EzHjn5wL4/YpUOadqif0Tl7pw6YlPvhgJnSOmgVomV+A9vLjpuZoVI3/bMD/SW7JNpxRchZzNkMWjI7XZOQ7dFI/r7FMBbruc4mZCtxqGDwM8ZjYG+L0VXHsy++FRIyzYAbG5Nchno6/X5DQ9dL/4yGxTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A14KjT/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A14KjT/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7284C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744280393;
	bh=Wq5ogDWlpK18bYs5jOUTyen9Ai8sdNjiWpCykgyKp7A=;
	h=To:Subject:From:Date:From;
	b=A14KjT/WROkncq/filyTbN+5eMS3S272j6G0qtzlN9dFvG+eNIljo8jLfuiU8GCAV
	 o6gIn0gbTl35s3Y2OLIQ/khlbES88MJOi83SIS+WxeEe3adyw7/IDavjBIzV75AZHI
	 8wj0rq6v7kqPBHT6GTw73PwL+OmFgoyabXn6C4YNwULbKJ5U07BUMO3lBDg37RsnQg
	 1HQOHqrLAnn5CUvRSavC43LvBF6Pvn/Geh8wIabxv/uF3txfeEqD76l5APkZYpJ3vb
	 G+M3Oyh7ayfNmfN1004w5XC4lP1AuPi5DteFYV/uNft36C/nHPPNd2UbH9aoToKd8N
	 uxQUkPWMCLLgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CFBC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174428039360.7807.17252962400400661836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c921d50126b33455f257aa6680fb15d9638737931ee222c0200333d078f13f2
Date: Thu, 10 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744280393
