Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239C81E47D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737386154; cv=none; b=TH42n2nVpOXY+suq/fqBNeZSrZiMxqac+NbWCrw3t0kt5pczsBfnuqMzJJOPu8Wn4AG+nA2Lp5Uw2o379hsrFiKlp5AFslpeTGQHT0tqrGo3wiWkUiABPL1upRRKuXU5yaaebDgnLL6ySkb4PRAz5lZzrYfATvO/aoxju3SWY2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737386154; c=relaxed/simple;
	bh=LGtyOKGfrCT0OFnmHAbb/8Aiz+7q9CT/cWR82YWBCr8=;
	h=To:Subject:From:Message-Id:Date; b=CUJgmgNawftrZ0HYc5Mw5kgHKa9H0G2Eh2Soq4JRwAzObsYP9jFEEJ539csSwBaQndLKc6AboyImvZdWZe8431aGgu5Tizqh8KxVzOcCvDq1FU+m5mHtJ8taEN/xLAbcpgAEsSXeFXEG+UxfuujKvdK95brBTKxWVvXTlZpBRIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQ1M/6pW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQ1M/6pW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4DDC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737386153;
	bh=LGtyOKGfrCT0OFnmHAbb/8Aiz+7q9CT/cWR82YWBCr8=;
	h=To:Subject:From:Date:From;
	b=iQ1M/6pW+2hjwjawqUwxA1uLe97n+8gfHuJbwWJhwrZFfq8g35mrOHKhD8aT2O05n
	 r+69Xd9r+6eaSni6HDcgIlBe0yORa0Mj/4EkEL1e+0xgEzrU3NwMYjMgSw0zSHzeVe
	 2GGA2VK3a4HxiV4RRWQiLMbzNyMBIcUbGB7ODp7Yj4IhxILk+pDr+GDL0tdvxnRFkC
	 lTmbKCs+fWExOzKVYfW5H4MntCEEA0Qvpt7+x2vJB9+tHpH7lvEcTNWJqmIFvqGEsT
	 ZEuax8eGAXQ4v21qoNRx8wWVmqnb0oloPDf8xyZRAKtKgXZfdkLzBM3Y8pxh/6rxxG
	 nTVCImDO/v8jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90938C02182
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173738615358.23516.6177440367078971627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaeeeeede8b9631f3ad8b188cc87448615551086293a295e710f995e3c3b40bd
Date: Mon, 20 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737386153
