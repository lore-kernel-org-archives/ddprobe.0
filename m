Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A9B226CFF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752154194; cv=none; b=X83LsWWnTIs/M6lZhuML/CicmyHFtwVzKkDxOba46oz3XyxR8OF822tCdiDBVpReilgh1G04WH8XOAq6/9JonCTg2Pkuh8IW0jrhhcoeD5i20Xcs+qgAwnET5I2Tz22v1uoSloSGXqMV+G2Kp4cWfzF40w/p2F9QUx7fyJrEDm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752154194; c=relaxed/simple;
	bh=XuLdnQ0h9S4DY+ZY0PvjyvjHeQU++kPGYXL2vYL7TfM=;
	h=To:Subject:From:Message-Id:Date; b=j/q8dkJlOHXaFRrcbLP+1GbFR5h6cKogHhoiBICkf11enpdkyvtt/dOT/Rwaiqs0pg4UMIOnbrNm3Emfmk5F8dsWsOCVPlYvoY+PDH1TrsOBqzm8oFp2aRZcOTw4aPRDsPfwtN5ipNI531F4w3zxpqtZb2CK0CrO4TTpzCg4dhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzUv+FHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzUv+FHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3695C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752154193;
	bh=XuLdnQ0h9S4DY+ZY0PvjyvjHeQU++kPGYXL2vYL7TfM=;
	h=To:Subject:From:Date:From;
	b=fzUv+FHJJyNH5jTfHuorFap9/o6y7w7p0xdRskXL+7sGcuz9trUtU+SCftVx7FbH3
	 KLvaJJN4M4gtup8uhkB5GmIUIQpS5ddtchtMyNbI15UH1aiULLjpD844YUNbB6trCR
	 DZapSeXSaXP0jGyNn/V4qAN8nbC9HwUhax+/4fJZ1d+NbKJNd7Zr7YOk7ROs0wvtkr
	 OBbaRBo4g9oPk+F47I5VxIw5rKccIjPUEbSLIS6weoKNk5Br0HVgQOzMZunAWf8McZ
	 MDWc1+FxXT/808fh2i0IQRWPaCdmuqbijFcPGzNInNf+II4BXgRqhqoIxZdimd+yzp
	 QAfgFLJ0L3TPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904CBC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175215419358.7097.10898885671919954841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a6a3364166bc97799cbed37159cefccf573cc76bf67a16840f3490a0fc68dbb
Date: Thu, 10 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752154193
