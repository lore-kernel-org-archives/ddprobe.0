Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CBB22F19
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714536143; cv=none; b=iUAbP91M8IWpUauzjVHOtRCiccYoog8Iu3KiWAgumLMToFNioLAuZhwix3JdZs56oZyn5GVNblMoU8Fm+q+4zpL7XuRh5kUQ4xFOpezR4tJpbg1TeKTVap0mF8MM1N/lC7xJ/gCXLP5MBX6pB1ni+WxfC/Sq5cGXgwbBZrTdp58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714536143; c=relaxed/simple;
	bh=aLKtNBElVIYalFnmyDaUqvHWRuCb+E9vQ+YCWAyRUxs=;
	h=To:Subject:From:Message-Id:Date; b=CdbuGVK93h+ePBBaTi2s8B9R9CFqsOJ8R4gc5NDl7/wCRK0lsopP34T5Hk+loI7kGJlvkBH+/verVBtuXrone0DoFDi7/oUXlcENyjK/3PM2vXDqA0AHRIbG8WNfDxNo7TzM2sDfmS9ubnDk7JI0Fz75hnBpC3TAOL9carXQWkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAnxdYuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAnxdYuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E001AC113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714536142;
	bh=aLKtNBElVIYalFnmyDaUqvHWRuCb+E9vQ+YCWAyRUxs=;
	h=To:Subject:From:Date:From;
	b=BAnxdYuHyb8/kv+jsdkUbyOnY2ZHph2cTdYC4aCKDYd2cXzJTsSJF0iSI+PZrfZfb
	 ipVDPd2OD6IJ6iLwH3yqXOAxuwkd0Ki93wDiyvD97gZltsooQ7xNSjq7tscwLsjlDU
	 kOJ1dy5rhIJsf5tffaAJSlQ1ay1kRCgX3Ao1kltSXSbcYAGY22gUGaLzAcwgfgjLi6
	 G+Yif4cT8i6dMNSpHrD/caPBxqNjypt+uDKSg6CumJcsjHAyov5OptHTYUuv7phBFR
	 8GGomD0c/LDWyZiKXvu+E2qeWUaFlHzCHeGxk1Ud3CjOafflBgrPB3BsJdNbQxI1QP
	 RDg4brcQckCRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C59EFC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171453614278.9563.7135139143967790536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93d51ded231065e0633898ca8e5352a0916edf6a388862d26cf7020e5b274eb7
Date: Wed, 01 May 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714536142
