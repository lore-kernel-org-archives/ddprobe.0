Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DEA22AE52
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741622934; cv=none; b=nHvrCC9KqBtI9nD3wevlovWd8Kt2zUts2QlcSYENrHcoBKK3DEjFdqEsXpeIuxG6JFSGQRDxGmOnGRotzfI/sSe+2ODzECntPp31xhWZIpflvxNZ9jZLExG/Upj/HCymtKIBu8GIspF6Vo/F2kC5wtTw/rq0g+ZgqXeaiDfok0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741622934; c=relaxed/simple;
	bh=Oy7+q7y/fF5QLwe/r0n0xII1SsNQiJdnFh4STl+xpkM=;
	h=To:Subject:From:Message-Id:Date; b=Ga9P+ZJn/t191xbsL76drYKoSFBPJ4rd2NDQyTdlO7R6StILoPZscxcFqtiCpi/OsGqvZ2K2j+26gB7NXvYAQTZR5eUxBcU2ki9ZlAYsoONtVRQes4+dpuP6flHGtoR+ivXAtDIVMpAMxbFgDmSuZvS2quWeggGIMhOHAzdYGLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8Ficwy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8Ficwy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6EDC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 16:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741622933;
	bh=Oy7+q7y/fF5QLwe/r0n0xII1SsNQiJdnFh4STl+xpkM=;
	h=To:Subject:From:Date:From;
	b=U8Ficwy+3tLsM5YamiQ00fW4aSnE8GbVbuWKGa401affQcotJzY6wNUJB0p9e42C/
	 tgABXKtFlwCh8rgYZAU/H/6A5LtHuuV+y4msvV0HflkBtT+oHskM9uvQRSkvATJdCM
	 bNLKHmt9KlYuLsR82yDBgAMbecn/i9a+2FRlB08GcQbBm4+YVJ50sU0f716bYFQSNC
	 w281FSL7JwBFEn1Dsk2eY0092kUr+yg4+2hbW2mKVHkdGeo5sfDpV4stmxrbOO4nS6
	 ZF9JYgDic6K80Zo6mDgOcVn5Przr+B5J8jzUBTDptGsFI24MgL0mLyEyZICmuGjybZ
	 ZAxUxukuzf+3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9A3C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 16:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174162293362.29622.7857239756098843962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84317144055ece43de001cb887e00da147f0b7652b14f66d83a51dfadf019dde
Date: Mon, 10 Mar 2025 16:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741622933
