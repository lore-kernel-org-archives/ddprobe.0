Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C27AC2FB
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737186354; cv=none; b=PsGvqwkKSuHKnPwRPnvpjlkZ/TLZV2Q82WNpQ2t+THr3/uzW89VGWnw4fSM54Aqc9QDXmTr5bFY2RV/GPMl8XVexcNZHqSuDIuz/IlYi5dVBEW0w9QEzglmMXIsb1uEU91bHTY93/di7Lb/hF+NmPZZ8G1S0dLm/xY/QRc8Dl7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737186354; c=relaxed/simple;
	bh=JhKsewNe0PU96cGD8XCQo5UZKQIGaalZUwDIT8xAvRg=;
	h=To:Subject:From:Message-Id:Date; b=eLRGLEiL4kn6gBGY/ZakHG8jpX3zzAsGI4ha1u2pVtqrqGVlix8MsMziIpWMITUWPI1lbc2C8CBcz3lo+qiX59CondA/U2vZfsyHvqiv7ROv7YzFX0g8v6bcD67k2dHQiHbFDbXCkAtpFW/047sOaNURyyatHkIR3m1qb1Hpn/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INOZQPmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INOZQPmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C4AC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737186353;
	bh=JhKsewNe0PU96cGD8XCQo5UZKQIGaalZUwDIT8xAvRg=;
	h=To:Subject:From:Date:From;
	b=INOZQPmcNtFMoSvM/7vfMyXHgQLX5nyjiM7s9bUmeu/swgFA22PY2LTU1hBpwPxKx
	 Yk9rx7eMeVLFeWHMiyJXklhczRkm5fxgur4wZIZQkeA9uT+zQluXzlLI9Kkz3GSwoo
	 IbW8s65h81lWJjeEu2MH8HWuGLmsanP3S2qFsShh5Ns5AONwnak/e+/SUGvWl4FLh/
	 FSyGr1MKOpk3mNAbwZTJicOAYAnaMn6lJh42cGG0l5dOnZQoYC2CfQxP3GMlNFBCMI
	 i8ffGtlsglTMHgL4TNktB93PDfYiSOSYeq40fFVyCx2XiJHG4o61WY503UdhPQUjzl
	 5UBf2r4i7EIAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963B7C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173718635358.11161.10452740746567529651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33d1eee933cdef16b2b4cc02b57a51d56b8f1418017126a8888048b5261eacb4
Date: Sat, 18 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737186353
