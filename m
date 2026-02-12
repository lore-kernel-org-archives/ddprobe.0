Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E94D42A96
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770914094; cv=none; b=UN0qVs0xc8gyuWCaZXLkjhdAvJ02Iy3yRXVgD8MQdrNzndSEh2tHybkc4MahU2Yzh7Uta7toSVsWXckJKSn3qMspjEx0/m5VFeIfaWvMX9ELLURjduHQgVVMEslPXZ44UILsb03AIAps2kXS175s1uZHKTY9A3R7cQMPK2moNDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770914094; c=relaxed/simple;
	bh=iphTsDPqI0lm6yQXWTfimXz2C+vB7CLr54+9GBTatt0=;
	h=To:Subject:From:Message-Id:Date; b=tGxZIQ69mdUbLHjSiZgcBudt3nmK9CaRoN/Le5wCZTdzdpryD5XA2jLW5Ic6S1JKzWGUy7OPsXzpV4nam6I3sjoZiFW+jNIAsETQ0I/fUgUR3HiZr54el3D1vSdH2PlaYQxguQaa7ruBuqcbniKQsDaXwD+jNDYGw/QxNydYJ+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmO8qKn8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmO8qKn8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE978C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770914093;
	bh=iphTsDPqI0lm6yQXWTfimXz2C+vB7CLr54+9GBTatt0=;
	h=To:Subject:From:Date:From;
	b=lmO8qKn85QuIg8Q0ckf0QtmExrpyNjybhR0LXLfLOG6rvAudAfFOTZ/Dq1c/htfk9
	 F9D2vq9JXjReBXGx7hOse6HxTtsiFT1O/UPFsTIiGxxA8tGDBdpH01oykQf4X7IxlY
	 1FS0GJZsNetFCQ2SHPplYKg8vACGQIAV30wxf1/zGzzoZVrkrp6BONgLuxGqq6318J
	 qfG4ahD+FhX4WqTrmtLwqpDEMuX0VZhOI3Dkban3GTfw6WXzKeawTwBxur/ltexoKu
	 +yJHosqgwjZUNp7K0NaVRkgwys+/uUQKiBcezSruWAlHF7xEmG3io53AIpU+dPkwZo
	 U0ZK6GmxabcIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE82EE369E
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177091409363.5945.14432619242526787855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e002a5589ee602d49d0b0280d34f9c742133d2fee05d11fb443905473be665
Date: Thu, 12 Feb 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770914093
