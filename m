Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC1D3542ED
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 19:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770839094; cv=none; b=cwV+n4ZQFJGju0pdydYnP3wpY2/K5vT8t9aNKtA5NyIjWHJhwe87mG0gi93Sm71CboE5QGHStmlGHr2nQC6TF94GsmHee635nig9QW42oJ2NCClhqKj760Jak2L9Yuav+uoTTG2tqhn7Keoy5RXopO8Qg2zeBN7CGpMFGT98jjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770839094; c=relaxed/simple;
	bh=ZPFOL0qr07OwKYPKCF/ydM93PxKZ9h/AILT9AYINDkI=;
	h=To:Subject:From:Message-Id:Date; b=FMRFOArxzRtaZS3RqM7k82xzwoY32yhQ6+pHJNX2vbQJIs5YjJNPZ2YmxVR0QX09kjLFq/rwTeCMTmWj3s3oCcJGT+fKwVcoHoNkZloK3O+5gAepHcrYtSR2gUtkZ1uaBMy/9Wco2ZXuQFaKQtsHZ/Q3pA+HioM0rnNnj6aPw+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfDg7mWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfDg7mWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B212FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770839093;
	bh=ZPFOL0qr07OwKYPKCF/ydM93PxKZ9h/AILT9AYINDkI=;
	h=To:Subject:From:Date:From;
	b=HfDg7mWy9xYM0KOVn0+RdH9trGqoaqEu2uTpJZX9mRnWocJC+M61qS8TUkaiik85l
	 PWHDLh2aidrgnfbwLhOfrxV/w03kJe23Kd+lWg5PFH1nXlkPhocDVvwnVQDe6ZvFp/
	 6akhQLJVl97n1TSkNA0eal9SGUnkm4HBcoqdEUVHT1QtOJN+1HYszyXzulvgBKauHn
	 EzkpLluWS8gP6VErNo7/yKAxWeNtO5scdV80WWY/NRSBZu8gT1n5MpNWs1kKF00fEF
	 A1xNgzwVTdvBgyVHNMaKOpmETUriz+jv14Bqk3iU1Dm4UN/PibZkgm6SEySrICrdb5
	 g/R+Yt8y2RsoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC2AECD6D6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177083909359.5001.5257759646844701940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dde79c17d243ec6c0a6a8eb9673ab2f8576ffae6dbb827425030cd21b9f5ab9
Date: Wed, 11 Feb 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770839093
