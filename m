Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9B9219E0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756803594; cv=none; b=JFTMaO/IbtAfS1WeLoM2JOUHbav1JnMFY+tesjAbKc9Qkop5phSHjWrsPn462jRC0ViQNggkj6HKdPx+DvS11bpwANzoShwNPEI+U95/3Z/sHpG+MHLWGjAykxjQFXjPF+Hoanm+AESreqZhsD2UvLWvN1pauj0xe+0mUgH7R+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756803594; c=relaxed/simple;
	bh=ux6OWPk8el03Vv8grlJgUIHD2BywcmoEVUNf9zbk0qM=;
	h=To:Subject:From:Message-Id:Date; b=NZDNYlrglgYV76pf8smZn/qWFOrS+bz51DlBUIWn4H8Oy1DXD1Ab6+7Ku1/J+ipt/1dyZejY3vAz6ejlbVst4PR4IJiNWiJVhL3gXTTT19iO6ZM5jCftooHHOHr1tJhGkq75qZBt2xpxj66lQgtwc/pBVFEQy8RzayCZ4y54W2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeaTvyYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeaTvyYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE65C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756803593;
	bh=ux6OWPk8el03Vv8grlJgUIHD2BywcmoEVUNf9zbk0qM=;
	h=To:Subject:From:Date:From;
	b=oeaTvyYbzHcZLrG04BuzFKNf2FpONyuPcmV3gPbFAQZiqsAML9fox/rOFYxL07NmL
	 rZqBsIZvaofTFVW/F1uwFyozVzZmJmHSuaQYS8TnqVE8DyqNlB34WyoFwB/m0TZc0H
	 7xXHt2HCCiMvlHLGgqGPfJqsViCrOk+KDPVWFHveI6NfsbxXdc04tjHWQnEN+rtXdB
	 1/sDejh5GPDTL8/opAoduFcB61oG7s1/R+HAqa9x15IDnQjZRSnlbSItWBl0vOgtbZ
	 mbFe5nWl1+xplsd6syOJuHCKVx90mLCMkYcGsIm4JuxQdd5ru8SLD9brhjN30HXxmp
	 eaDJdbe0gQsyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0CCCA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175680359357.1043.14875189644451328237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb7580cfba847ef4ab1e31813b904de06ac2d6476039bcf4545f31cc01a92f95
Date: Tue, 02 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756803593
