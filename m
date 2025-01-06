Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4831E04AF
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 21:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736199954; cv=none; b=cX4o+bV8ervde1e46Kf3AfcQNVyyRURHgmsVOmDC4pjhvGvvyHrtMzk8jG5c/6cNWgwdwXiuD+M17mwn8X5Wy+e6xfBI5Au/zGG7WXilWY5I5A+Q2PA6jlXeCD52llQxeEZ3j2eZ4TnDmCPBz39IuoSYd+Z7eM4rpizEHL0Zpjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736199954; c=relaxed/simple;
	bh=N2Geue5aLiNT+Nhmmxpbm6BE6gnjHhyCHkeosh5/6kk=;
	h=To:Subject:From:Message-Id:Date; b=XbI+NXgUWo/L2jybwgZg1v8WeT16CgU/wtW/XRuS92lHEkd34iYl4PMYHQ17IY1L/FY5AdAQArJ/eMpPmB30qPqjI7YANCv9owTjm4xEXfdg1yTGnlGrYPfGfwF5SlbLhVjxis89YDWkx8+7BlDlvVMhjjrtMNTRwEAvzrVp/yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEMbahpQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEMbahpQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B201FC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736199953;
	bh=N2Geue5aLiNT+Nhmmxpbm6BE6gnjHhyCHkeosh5/6kk=;
	h=To:Subject:From:Date:From;
	b=FEMbahpQ/2q1jbyDomeSeIMiNuv+uGwjwRTw7CVKWHnTu45WflbQGDkvPAzoNzRpV
	 5T14RB8AdWKfvDCQ4gJsCP752OTrUAyuHoUYO11tv0uzm+ovMpeuRF3C4gtAx74B7i
	 NWEcfGysWM8kJTpSeGWDRdTe4gIklhXnoryqOLEH1XKYqaApydqid6K2G84ELfYZ/U
	 UBgBxC9mG38Nn9Wsp3CxO9bgI5aECkyoYFB3fx6vxvWuiRnZacMKX/AWmWp7fOXbfV
	 Th5H/ehoXmAtbhT/pxG4cHYMchhK7VrpUJIC1tLCUSjfcbeZPGvsV5RjLdWSyAUfUq
	 r8Vu1znHrh9RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C706E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173619995363.24944.4302998353741668395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d2ed2639d32a553e41d3ee32b7ae3da948b41557c2704af2fb193d45ec30fb
Date: Mon, 06 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736199953
