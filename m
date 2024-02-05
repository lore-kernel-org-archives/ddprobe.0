Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FB9482DC
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707172097; cv=none; b=ozyISroFFPSdWumX7SW0UYXezQ+wHNvQ9XNPRtuKlPCymkVOtnXiEKgMLqnV89JDcSl/fpNyEBt6GYTBKOLf1g2rBe/oDpbhlOb24HMcQ9SEwbJ/2CfoKHWUrZoegvxxG0Pt/Xk5ozlqorWoNJhj0+V/wGb5I3upa0V2RNXpQTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707172097; c=relaxed/simple;
	bh=29dgADdbachNngQu+ltXh3XuKiVXWBXJiRT8+SULsgM=;
	h=To:Subject:From:Message-Id:Date; b=JvgRwSBOdBMCr7+S5fPcgYY5kshwDz514/iBdA3QZgPQMVs75b3hELNKCWygivujcpGW3vUMZYpn8PsXLhrqo6+YZJytiD0Bu+K5M4v4c/oKHQOOro5zaS4PHu1vjKEWfEer4NI2EOe9f5j1eF9zceFBz9gWZR2rBZFxsw/4tlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/GMGDwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/GMGDwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 889C4C433C7
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707172096;
	bh=29dgADdbachNngQu+ltXh3XuKiVXWBXJiRT8+SULsgM=;
	h=To:Subject:From:Date:From;
	b=M/GMGDwuuArQQB2zPxaSjr6tAnW/kUZX1GOcsu49cuwZaKLiKXNoJIQUk0iowF0hT
	 cUO4oGFt1tx2vK0rL9pS3Er9dnq0fKNnM59aksZpi6KMFFs5qsZU9gwNBek4cmIZGf
	 5mVwbfmy+2PTAt2GO4ndfJGAxrYTczGZkhmJlvJUKyaHRlGevOcMjanwyla5SzqtEB
	 f7Bb1aNJiTw2x4kmb//L/vWk9/S53WxJOQgH4DK7bE7HGpYgDItf0mFB4QC+Gwf+/B
	 3Mcqm62onZxR88sXXQfTCs8qx09+/W+VOB2j3cOnO4bYyjGg9HKGtA8rVHJJH9UBBX
	 yBUAzu/RMLuRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67880C48260
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170717209639.3254.2296067057073610962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a655eecce6e6f1db1d47cb1967c996f903c712a3015978be4cc730e11b75a7
Date: Mon, 05 Feb 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707172096
