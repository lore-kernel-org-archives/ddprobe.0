Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C26530CB2B
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759402194; cv=none; b=fnEOiTtsDYBbwMm/UiJ0KQ6OMQAUEpX5owo9gKjSXIKzzpKBz/cXBqdFk9N70F4IrlrnXb0MZcZjt86r5A/4ogZvHtaf7gzcyLtnaPULUdglStAk9bikVJqUUm0/kcXKVdK77SsnJ0HDIPRfxrN9sSEL0u13adal8Xbh+6+HN+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759402194; c=relaxed/simple;
	bh=k5EgFOIEDfHGl0FNTOBr3Gr0GJmvuPovlNIzHRXCMTU=;
	h=To:Subject:From:Message-Id:Date; b=oFgR4nEVpNIKpScY7mqsygk/RitemZ1w2ZpKFvQ5757zfwJzKTuVdmB3KZ3+5+8lOGNPWoOp0YKxyrGC7x9YIdy5bTtR8yVs1SoCoLmhymiuWc4ah3D5ic753vNUhwngmCxOVPNG45R/kGswF/WX8nFlPCqpfnKxqskxXA4ewHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDytGL6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDytGL6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C3EC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759402193;
	bh=k5EgFOIEDfHGl0FNTOBr3Gr0GJmvuPovlNIzHRXCMTU=;
	h=To:Subject:From:Date:From;
	b=QDytGL6cU/qhzIJaWgYbugMjo7xgD3VrWez0/LeOl7PWkJ+4CPgok7cNEUN/9gWUI
	 9ja3psqI7mpF3+x5Q4z/Stz8W2Jp5M3VcylcpmhodBf5ipY0V2G29c5R/ovRvmGPgG
	 SDYSWejP6espaB7viaWwckk/qJOvFEvsYX2gX+Xi2LYIXow/FTT7oRAUz/sd/zRq3p
	 jUrDLyC/jx++2TAiOfG77KHlFSJBtLHF/5BXdA+/Jzl9GxMwZQZW7hLSkl3qbMmv4Y
	 dHF608ILKSs6F4GPC6TegJ5Zwlc5GUMT6u2iV47wnBElfDrM3f9OMMuoWQjEbmqjVi
	 1SwMgb8VhWgqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9223BCCA471
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175940219358.11168.4357314532138867317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec07f57756dd67dc830dd49e6c45f2c0a3adea1be2c3a324fa5c7d14cb3e5f42
Date: Thu, 02 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759402193
