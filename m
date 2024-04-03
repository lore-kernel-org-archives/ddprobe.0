Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC049156F23
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712185097; cv=none; b=Ek5fBcvjYkTksxq9CAmCE4CHD5O5XbWKv0a4s5xGScrUpnXqcWKiRgv4tUoX0iVCacHW2aElP/QD0v1GpRf9kJjF9FTmlYv6z5JOuJ4xOQzSTvBk7vPNlefIbpmwXfRR7/ih4Oe70WKar34/kCx0EUw0EOD95oVp7iO1rYLWBu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712185097; c=relaxed/simple;
	bh=phd4pOpMDtEuATd6AdMuUr0xK046nR7+jmoKUyfcV+U=;
	h=To:Subject:From:Message-Id:Date; b=UGG7sqb5jy8DTWNwJV8nS/7wQl7FVx5kC2lDimJurDBKqIhkC1nA5UEDEPrv1HlNqL2U63FBPEGsxdmblgmLAD7+OK09chayPygD54n0MVR+86DptOmj4bYFFBRbwXCS5epYgQjNam4qh8YLu9TY12cQdJ9bbCfWXoXiZDCDm3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwmq8Cbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwmq8Cbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78917C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712185096;
	bh=phd4pOpMDtEuATd6AdMuUr0xK046nR7+jmoKUyfcV+U=;
	h=To:Subject:From:Date:From;
	b=dwmq8CboTfXx2wWVIvp+7cpLgpMTuQKrYeMCkj7nGi5zxtc56lQNobCTItFo0TQ3O
	 QMowOTly8cmKETyyXKiXxOndMwEGv4Q+JDS93bV/JcU/S+P6XjwN/aLqSjr5J2iEVP
	 eZ+2wMhCw8gsTh9XR5xvUxdWJWEJF+E4/G2WtSYE5Z37Tg34y+6yAVrvYScC6+Rttg
	 Ag/FIVP9uZoHFlwucVqIkC9jBHmSKWVKC8xol+/kQZnN2k/7PiYjF49pyKbUhgrg3h
	 GA3OuhLZ0SRUM4gcseiF1QwXg/pb7LYRxJOuOs+8A3PpQ35/lFYL2J0mdIoQisWYxy
	 fLm/DbqkfsXGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68C4DCD128A
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171218509642.22070.2681014149456969524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0782deb17b5d306e4f233dd6b55e58772a8f706276c11f313dbc8ae0064c44a9
Date: Wed, 03 Apr 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712185096
