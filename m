Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E88E25F984
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775866654; cv=none; b=dbFqhyVQXeNtPRDD1FqyZdlRG9RPK8hfI07CH+iUUk6QONpp4tnzZJQCbujGmlLbTElfgL+tg+d7fytPhPtShBWRoZ+dtZdT4A78NutdJmi4GXNBIlE5wsRQV1ubHyEIIedFi3lmR3BG0TjxrtHJddZt9W49+AOygcRQRRbheTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775866654; c=relaxed/simple;
	bh=oDXI/IERLq+Q77a5ds3DhgdYqkBUFZ6soEIsAOgvYbc=;
	h=To:Subject:From:Message-Id:Date; b=XYyc6/sdEwDpNq2w6oZ7nqYTBCwsLrlvLdjkIWIe93RC09WR5deUJRFxdzE+rZ1nR1nQ3fYYi++UG1x3bjEdBRPsMcnyV4jtIB04fcyvOzKuCEjaJs88W9ghq4X0+0MgeB40UHBW02GjJEJBL2JEi1I4OfNK8bJpH/wA+FpF4KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvvCV5Op; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvvCV5Op"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB06FC19421
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775866653;
	bh=oDXI/IERLq+Q77a5ds3DhgdYqkBUFZ6soEIsAOgvYbc=;
	h=To:Subject:From:Date:From;
	b=hvvCV5OpmCPrFjC21hNZTg2Ec4M+xyo9s8oSeCxs/JdssQ1X0nMNk/syKgtLZC1aS
	 XwMmWJfuvep55id3hd1skGpNWGmroWkKWGomler5K0QVyHcffaceb3AIF3x0F66MWY
	 D1sSKIQbmJcbXZLNO/v3i67TvoWlR4Ay/B+Q4Vb+dvQb3mWB/4yF/tkz1dzUs2G+bk
	 WslODq4udMTSLcvRen8Z1jliqr+sEjNBLCFlTQCir2W3uRMqtLx8xzTtMntHKyhFc8
	 RoH9pQ+PUl3ryNXzh/62gNyMTGA9ABkA/GHKr6A0oa42KIWLwjdpqIztUSPmzHDuVm
	 TCjthqWDzmukQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF1EF45A13
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177586665369.10885.4143687265900872199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b38990b2bacfc033581383c5a008269d9e1e5d553ceb14918340d1fd8e1b1144
Date: Sat, 11 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775866653
