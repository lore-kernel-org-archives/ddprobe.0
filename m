Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7330444C6C
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 18:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717181063; cv=none; b=qQg6Q0wxAIT3EajoNPM0cCliCtgdRNjKMDRAEcKz9PDmKrMAYY/uUrZED+6+513oMMup1ViBLbvym5K2AcpXRMhZiZqk0oow2NgJFpXfPUYfpU7Kf9phxJxWOB8cNIjtGgpmYLXUZhTvn5Suc7UAIuQBMJoODfqHjxDhUYssdkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717181063; c=relaxed/simple;
	bh=LVTVgkHI878OoYti7UYQw11mDsZOcf/kFfn+3Xnl8ZQ=;
	h=To:Subject:From:Message-Id:Date; b=qrhhh8Yze4SZI5hkd3CTEY2IcpNHZXqJ2IStoRZV6woB1oPYkyE7w05bm4DxhJwC1doWchVepWeAFzSQqUajIsSrZD+mcRahgeJTde6MAnjxVlXiYMQORMQQYwlVdTCiMmBfzd76VDj8duiInrOaRxLgwuTUiwTtH7aEc4GzpsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFes4RWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFes4RWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01AC5C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 18:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717181063;
	bh=LVTVgkHI878OoYti7UYQw11mDsZOcf/kFfn+3Xnl8ZQ=;
	h=To:Subject:From:Date:From;
	b=aFes4RWsKazfhKjra42tLNnBhP5M91FVuFSdKMpyW18c61a/aYiv1QSVaKuJL90Ob
	 TLb4Jies3w3OuTke5paOSYUVHCvUY4QNEDCKE2Yw2j5gUexLk9+siDeQf6d4+1VdVK
	 xpwUZ1MSrkSzJUFQPln7+Icv3ebTqFund/n6Ju2IPFHyJOT+2Mqe8oaGpMbK+AOtSl
	 8rHwu31Z7RLF+UNa8i8XOCuoHrf212b5mm8HaBF2VoIt8Gg/OQsgxZnBK1Otjw4QXp
	 zEIewM4ouE7a5YnTjxJ3cv8jmDiNChPHEHoeTLWeBZgRCvH8XvwZeheijnL/o+vM0u
	 dQrM8SS7dejwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D88ACC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 18:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171718106287.23354.11808774215495612280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cadc66bf0d436746ba04292fc2100f8ca2f8945ea2c924bfe65571e6be9cd5d
Date: Fri, 31 May 2024 18:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717181062
