Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF1D34BA4E
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759640994; cv=none; b=s/SlhznXciouEPZSacxDb6RRge56u6J+tXOa5q3bYLi2y7ZrD797zAmAM1PvFCt22Q6MUUi6zjgpo5RlAQsUUeAZRIITg4Esk03WMsXeeGtPYuTjcOvaMFQEaH4GkrLbT7hyZnD2wSsnd88GV+KMMm9LF3XxbRVRLuxgBASa6FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759640994; c=relaxed/simple;
	bh=J8RvaZ92YnC9qcp2ikGsydMHHmJJSJsvRsl3NfU16rM=;
	h=To:Subject:From:Message-Id:Date; b=HB32XO6KwnJeNzCAtl8qstMGO0OPzyDrG4YcR9L2Ri75CFTVVTlTbRiwAdNpob7s79v9UOSkGNTro2blYjJYDMG4U7Ix+F2WsHaHU1rDQYEenDvfx2UmcZAkGFpAGK8/5KTg9JnkMaq1VKaNHVSTg+2zXb/CMnsj/QqU4WttV9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVDnp1mQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVDnp1mQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBF2C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759640993;
	bh=J8RvaZ92YnC9qcp2ikGsydMHHmJJSJsvRsl3NfU16rM=;
	h=To:Subject:From:Date:From;
	b=KVDnp1mQBigLqQZoMBO4s3FTaU9giebHeKM7ttoEbU4fHPi2EPCD+Z/os3x9MLxSj
	 3LDuOfsILwmjEl/HiE8gRpcLR/UaKuFHbFBnqNZXKZqjIR5DHG0fnVC26I02cABwyr
	 gf81s6Sr8qj15AJG6ZgFhb/lTYu8dTMWXD2pKHl9kicRgpvfoTzzqa82xv5vOC/KvH
	 E4VR0XE1as08rMAc2y7c1dnzp68nGYZDMI8YpNi7+2WSkOTHWEw5PhuZxDaZUq7OVW
	 QEmzpVPKnN1dAt7kVGRVcTtHuY9UlvrATh0SKTv0I/XCjLc6Q2R7/hIx/ApQjrjh5h
	 hDpz2Pp4aTrog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C69CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175964099358.9282.14593733116448607839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e0f74ff574398e1941b6109aa6993b73e559b19b75a667209c37ef556e63251
Date: Sun, 05 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759640993
