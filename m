Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AC92D7DEE
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757023794; cv=none; b=VYpJ+aUZe/u1Q0eAanybZhi7VbAJGuESyyke/9+QA4E6hHiO+Eop4p0Siy8JZUWFtseFvO0t4TjTmagTPUUnQeaFwwBgfxkZDrYtoZRn1nEh//+wv23ETTSasWto25Ku2lD/rAe+WT/1DIKzxf6JpjsAdIH971vfnTp9iluREAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757023794; c=relaxed/simple;
	bh=TNMfsBV3DqmsTzG462hA1H/NFW+5YXR55wprfYZzumk=;
	h=To:Subject:From:Message-Id:Date; b=uGgRl138vIZHUcNhBxiBid5GaXEK6/mYgAeH38oVAnXLLqjHI/y5WURivm0XvL/4zcX5V/5Zjz4peLTklYsfbeoOH+6AtDKjiixsHYRZVBfoRFei59Ep/K0GS8V5OCTO+G8jM/qeRSGse/DbRU0dTN6pc1e0qB15PMUkniGOjck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmQzIHV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmQzIHV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A683EC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757023793;
	bh=TNMfsBV3DqmsTzG462hA1H/NFW+5YXR55wprfYZzumk=;
	h=To:Subject:From:Date:From;
	b=NmQzIHV43mqh8ZD6whJL/gPqZ1Crm55ulwBFo4yYA5XSUHU0F/ec8qv9cLgyMm1F8
	 o9oLDsv2yrNtAO1q6C7aRNcjJjrA5n3/fK6OHRbxPUngSvFlTyykfFZtAhrIxGF+Or
	 0slZtfRFXoStgbeDIqQwJ+DhQuV5b8RXEu9fCB/TxnYbubyAV6IiSV9Mn8/AQM8tG4
	 lsevlwLEhcPLm+B30wYR6C0FaDhK6t0/SVPzQSBP4ZmuSlbOMtPQPuOe/t82I/AhqN
	 n1MqQFQKuCiGH9LBDgRQc5R+6c6dIlEm1XFoCSjwhTQd5xM8l0LZCKUhZDisdBwDFF
	 Ktt22iMCFk3xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919F5CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175702379357.30473.12813231927735740505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ffda89457167a848c9a80d27364d359dc1b39839a18564c1844ed81173275e0
Date: Thu, 04 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757023793
