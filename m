Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F5113A86C
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778269054; cv=none; b=SfoowEqV35jclA49siS/zyMoqpzNNv4vcrISCT56KwQ9Rrt1Mu+M1P+v0HUdQ+XfxgvuCPHv6MBig6rKHI9tAddlIY01zvAjFBucm/EHusP/WPLezgg/WXjCxainNuPAbKKseWRNZdUWFlo3zUk6k+2Z8Gt/kc9SzYrbjHJhUPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778269054; c=relaxed/simple;
	bh=lUZbrWRcXTSdQvV5KiskrGViAT6qUL4RzDwhGUoUGWk=;
	h=To:Subject:From:Message-Id:Date; b=ORSTO/33JWNBTUvc0+pgnBQ46XKNbNUJCS/bJK5dbRm9AOxpDkWTCX2pPp5koSEYEhvIvj/vmuKV4/hP6ZmpZyA95rRXc24o90vmzLEkta8EEJ385BbyZVFklYpqGrttyymhrtiamQysfhPTLvBTrdWDP3MQH0FXo03I/DE4X3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+C8503o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+C8503o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD197C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778269053;
	bh=lUZbrWRcXTSdQvV5KiskrGViAT6qUL4RzDwhGUoUGWk=;
	h=To:Subject:From:Date:From;
	b=T+C8503o2jKydJ/st6Y4Tgq0YZPQ+Tsw6kOCOQmJpCfa/OF2a7COPOC9XSHgm5vuQ
	 biZtKft2StKVK+BISvkcukibxR9rki6yXRUAs0g/B2RLi/0y/Q7nS2uvaJjbIWeQz3
	 HOD4ZRd1lirswHSFTTd993S3w+ivKIzT/czkppy535uQ9VAi0XRdL6v5ACzJLakfra
	 vL0Mp4ORv4F+FHIbSX1HYhIDdNmqWT8N9qP+Ev4vR9WLNOCn1IZ+DBBOQ08mGoYzGu
	 lqVQ1Cp+ITOWyoBhMfrHhzSDoWCxz90vpVbqtD7R+xvG9yJSBIxaqBknKhai1en96S
	 08oCSWgBsisEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6C1CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177826905368.24799.17491750394531752582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa929b9dc7cfd9ebcb78654623e5bcf5f8666d2bbff23a7d0476204456fb76f
Date: Fri, 08 May 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778269053
