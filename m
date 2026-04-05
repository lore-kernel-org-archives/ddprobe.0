Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B3B2E2663
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 23:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775430934; cv=none; b=eheuNw2Lqg1j5TJqvYrD1btHpVY5cWMpc9vmXcvCKlKuvmemaQjW1ilGJDJyv8P+u6Iyh30E/m9KpcuS77MED0vutD7i1Kk8kF5tFthOgxIQq8XgF4lsi0WAnFHRG0bRTgbnkaL7GmMFmngcXVIU3NHjex3R1bLdpz6eAL1ckQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775430934; c=relaxed/simple;
	bh=b/EwJKIRFH/W4p/Qy8/MhRGEU3nKB2OFIRIaudW5ZCI=;
	h=To:Subject:From:Message-Id:Date; b=uQbJUSkv/QYQHS81hdUAzCxCqY+ax3o7dyvo4mrzkn5E7vMdupCEQ59TeOSsBPv/cGfiY1IQ2H9ww6t0eZQJ+YbyIKAwWgK96FaN5LKF9mYszzHlud8KO91Qm0VnWHR+2L63a+ybhHj0HkOcHIExmfgCxmSVkqyVJLbF4Y6Vwlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfpmeNYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfpmeNYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C9EC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 23:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775430933;
	bh=b/EwJKIRFH/W4p/Qy8/MhRGEU3nKB2OFIRIaudW5ZCI=;
	h=To:Subject:From:Date:From;
	b=VfpmeNYhql40j7ahiG4JPuHzNgIAVdPWYa2qQHvGoYnWdvy/2tFExDSJ9/lRzkNnf
	 zVXGs75BL2H48g69mk+J2E8Co+ijjnhwZ9zNycnB/dbwzRDasqrBYfaa1UY7+tr9fz
	 oA4OrvwZQrxha8+hxWQPR6GW2fSpPc98i1rvjygE8lr6FmG4+R0vKl0MPVpceWc+FC
	 XZp7RavO23q9/C9dXsxf7cWEN/ukHKHDDK8wD5Cm3+go5WJ6cdDy/kM6zKUEBXULf/
	 hRb7sEHHVBIylLpa2firLp1RZ+COQ6Gqz+GXTydd6FTTfnnEUngC6QaXvUm+MyFyt/
	 7QKy+gDk9kAdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC42E9D827
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 23:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177543093370.31519.5778934805901122777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 454f09ad173e4dd7ddb1dfe59ccfc4d0f57c5eb75dd85df65d6dbb51f54f84f8
Date: Sun, 05 Apr 2026 23:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775430933
