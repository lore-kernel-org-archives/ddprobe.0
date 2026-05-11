Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36181318EDC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 05:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778478034; cv=none; b=doV2iCWj1vEqRN98gP00RYa/RMaKKLJsMaVO08+1M1EhkLoHd2OtPBLwDePMoeL7oVndJ52Gb62cy0R9Rka3krPRhvDQvy8uqFqUxUGI2n7aqu1+gySvJU51m01xVXREZ/gtVK19dqnIaSCYHzO09hBn9wTVDfvuyQgbkNl1dVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778478034; c=relaxed/simple;
	bh=nD59NlmLJEDFmOf8xyAqOm76TYOOJ2kDbuOcwfUhFgw=;
	h=To:Subject:From:Message-Id:Date; b=U3sWiaEa5pzfxldb/ktHkM0zlUfuQqtDmqShoNo59FTuxQHXogGYphtvFIBXZh82fzc67L2HU1nGEOelsY0YGhOMjxIJRDedSxoPx7v1UNMtRNKLoizWvjNZnsCSwzgT70yB/XlrTGTBBlySS+o14CYwJal/tneacSO9S6dFxcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irvng2qb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irvng2qb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0593C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778478033;
	bh=nD59NlmLJEDFmOf8xyAqOm76TYOOJ2kDbuOcwfUhFgw=;
	h=To:Subject:From:Date:From;
	b=irvng2qbSwPNsWqXXSpGq5Y2YkxoYaU2OkfWPciaUTRSTmgJTk0RX9kZ3FvdPdbbC
	 J4pbarOzl8/BW1oSK1mlbxZ3+FOj/JByT9tBvyKdjniIV45Zv7+Wj0AnGj9uLrt8QQ
	 NI7wlE2rKg8muCKYNg301wvBBPNDxS8smTfBZctACIrwk/bt8ya5UKoDQzIPjeHclO
	 hxl22os5CPJCw42yrlJqmsFPzn/uAfRwkH05ynrOG5N5vq/mDf9vZlkoMF5E4Z4+um
	 ulsPFk10KCHwUL6p93F723jlJo8qwchitg+ysVG1LJzpb4g4322cwT+bvMlq3dETL+
	 J/8t/MDMekhpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD850CD37B7
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177847803368.23119.11295920255118015750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d1ce77e62cea235b08508963459bed700801e7281218e2ca42be58f659c34a5
Date: Mon, 11 May 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778478033
