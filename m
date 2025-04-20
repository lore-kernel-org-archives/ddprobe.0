Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414921537C8
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745157594; cv=none; b=aB0zI1Wa0abbUv7dsJ9wPqV8juJ2mL9j++he1o3X1ae1ziyfQHD7uUNAPKvN2/XI1H3JR9YEGc2578AJl5b4hjuLlWQDJ6TYbL22oNatbOPsQrHPJs8wu63RHnjcnzzfhNAdrPKw4QbfPiuEaBcfcmvgb0/p8aX9ltfow7PjMhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745157594; c=relaxed/simple;
	bh=9uJD1t4DXC3hD2/baN+LskQwun7DrU4C1b03lIOD1ag=;
	h=To:Subject:From:Message-Id:Date; b=kMjGMoMX4NFiSeojixEhiX8oEpeHd7lxWoxay+SmkRjJQcrvH+RedLQYppsH5Uvfi/GtLYEnNVXvir9CTMTs1qLeEJmQpR5CbPjNIOPoCX+Vr6ouI/oXo7yhrkNLktSXmvrbOlq8tRKWaHQiiL0NOWVAU1P/8/XzKhEk076M3Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DICrzx6H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DICrzx6H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDD8C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745157593;
	bh=9uJD1t4DXC3hD2/baN+LskQwun7DrU4C1b03lIOD1ag=;
	h=To:Subject:From:Date:From;
	b=DICrzx6HaiJfZGrZXGDNiudlQrRXOlbfFQqUxElRJNBAk7LzmRmzeM1y2Q1/wN7ss
	 vQGp2sLQFQC6dedniaI3BlXtNYVOecULUHycBrP8tEYJ2dr7BS0vDgEIHWrSXGv5Kf
	 R5O0p+NTP8akI8Hmn1AWk/jIvtimMtlr2qJYjYmmao7jxE/jXFqHb1Rb6CtqtKh9ko
	 8ZVLrhZRVbEWKucBlNM5d78DhzBq83IY3288jXhs9fiHpTlV9Ou60muOci9AbDv9qC
	 sijV+RQ6mFcnpLWCfYA0Q5XjHGRqhAuSXNyyhCn4+iTDg8Hl/k4g8pPqVuMoz8dDKf
	 N6MFpt5uADWXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABF5C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174515759360.23376.13080088697899837496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edab658e0eb28caeec52b26dfce085646d82492d2c2b040034c580681e6f4909
Date: Sun, 20 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745157593
