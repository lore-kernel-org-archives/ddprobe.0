Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DAD1C3C08
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770912294; cv=none; b=CNw+EHce1A9lSIswzQN+ouJ+eq60uN7uCgt085YDZ4jGUYvSuzVSn33Y8dTZOpBnv+xPtppg7ltH6amgEy2mrxADZ//vvBXSj9COnwV8xF3KjiwZSqY33goJQdN85yGvnr+zc4FVwAuvawBAARWD5of8bA9CCpKre2raExZp/I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770912294; c=relaxed/simple;
	bh=JNUYGlAfQmLvLALC1J7qLGcx+uNzwCfJ5BJWYlcY2bA=;
	h=To:Subject:From:Message-Id:Date; b=ikg5vidh0rQ+W3pcFrX1dJDjCSudVPzVyaYZeS4x/+g7R8lPX+TMlg6FdnKR8TItLMHKcWpLfMFAP07pd6891tD5idnOq7RkCe1r5rqZ82m5WMTDTDl75bvBqY8y0mS287pEi14Xm9WW9U1glu94AUDSfu7s2yqDkIqwYbACKfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/RFKv+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/RFKv+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F7BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770912293;
	bh=JNUYGlAfQmLvLALC1J7qLGcx+uNzwCfJ5BJWYlcY2bA=;
	h=To:Subject:From:Date:From;
	b=Z/RFKv+0nzbLWgCv2wbycsumQaNj8FkYi0x6UPGg2Vw6NXUw5pTS8peZjU9GKWVZv
	 4541n/6FwZTPfZisNJePi851TyurrrvetKKzOMZOui0pkEez4fo2fZPk4Zu5MLCXUD
	 ffx3kmrJkPfADFH4P59u8IrTSsXr/wQ9kYtcScwB9xTvwPlYkmJGHMEVGrSbNMwLVJ
	 uSuM4kmiQnmNn8gAGGNM3+qJ2oiWlfE84nV2/dS7Vw3sqH3F/Pi1heCPe+q2py6iWA
	 dVg1G/QexXQ3oIs05PEeqPkZf4v84vrNC8fUlgiNQqj+dE2YUHPezOyYo19LJw4XS4
	 Qlc6jdDbrwBgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55A7EE369D
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177091229366.27361.17888317495203775004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448e40ec71910a82c7f02d304f89649e0bc6324c810f315ca07b63393f01a153
Date: Thu, 12 Feb 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770912293
