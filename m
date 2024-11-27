Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC4B1EE001
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732705554; cv=none; b=NKR1EFHKQwLcZBAB173fYkaS5sPmuya29myHGXivK2npZVAAqt/IWkj9mXJPijP1BLGORtZ6FBqBbmTzEuO12Ug5mleHEKEN2rFHXiAM+z/7AP1wlBbIjfhv1VyILMeC9vJ3zI78raBlEERJAMVJ20slC60qcdeY0XujJcVW3sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732705554; c=relaxed/simple;
	bh=cSAo17tV0A0PbrnQ6H10TB3HXU0lPWNniU9WWY1hqDk=;
	h=To:Subject:From:Message-Id:Date; b=BgUHUrCzuBKXonwL2fBaBetDl9dlmUQRLbMqAMY2jxDmUdEsuHcxWnmrYofGRftYZT8KVTDYp4juJsx+O5I1sIT4XuC7xCJKjnJJKJvfHEcogVlmQaypmaS/EaL3qQsY/ddv2Mezo5XmgTQEDeeKFiTQb3jzNQypZHtly2t5lgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipgUN5QG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipgUN5QG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6BCC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732705553;
	bh=cSAo17tV0A0PbrnQ6H10TB3HXU0lPWNniU9WWY1hqDk=;
	h=To:Subject:From:Date:From;
	b=ipgUN5QG6ZlTy5iTODcmca4tY1FW6YAErlglPqrFM2jKRZ/PEYrShTHl3Nk2kv7j5
	 QFqXBEaiTwhlL7DKgb8s6MwsOq+fW541UAweWboVjgZ1b/5XgwRr623psPeEn6NEng
	 Ywyr9MrrM8ZY1NdnXCDMWfZw9JS7m9G4tQ5jfXvG+mNI6rvVWjkGDKYK+aW+BWLY4E
	 hV3Kc6NN/eCA5QNb0etlZ1zf/xpJJ+4L5cdwixPcS7kFIPW/870SJ6SdF69mw+M29+
	 BO/qP8Y7bAJTB1wb8/g12+ifELvMWz6LoJsKAridPa5zfBK/03FjPaVbOvnddIyd9L
	 VcxL6ijH+gAtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CBCD609D3
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173270555359.16463.13923858131975923918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d446181eb688ea6b3ab240d7a58c01ca618973414b3561d16c0fc9ac47b2d84c
Date: Wed, 27 Nov 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732705553
