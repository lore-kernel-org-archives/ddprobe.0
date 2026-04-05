Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C4620D4FF
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 10:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775384734; cv=none; b=BGNPDUqTKvTfSAedWaRVG+P3rcWDen+ly3Yg+AzLHDmpck+rDWsOm4fVMbvOaWxNR2106J6J/GimUpTtYJmpO7NK15z3wUxvY2IGtkqmn9SVg0xA4mwEKEXREKWF/FPkvropCiE6MTLVgw1yJKWxpkAJLGUbtXpA/7hnZsgWJog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775384734; c=relaxed/simple;
	bh=6AfwRKn9WTPXbInhRM9SZQIdxBbIz74eZ3mhUODK4EI=;
	h=To:Subject:From:Message-Id:Date; b=ti68+cQApFw4tFOpHjBphLC/KiIUyiwdvZxAeopenI9egbpBC+YlIV3MwuEEiGS5W/L0t5NqU/cptkWwMCm1BExPKdbEbzOfjD1jniwgaBtPxW4YNbKgjvhp9spNsVLt6N1Kp068T/VHErFL3VnhKtQxcgWQw6tufp54+6AjPC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eu7iqZDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eu7iqZDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33B6C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 10:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775384733;
	bh=6AfwRKn9WTPXbInhRM9SZQIdxBbIz74eZ3mhUODK4EI=;
	h=To:Subject:From:Date:From;
	b=eu7iqZDK6zaekc/FfdRM7XJa4BgLvZGAAYMUQC5wA23gQs9Yz9o+yr/LzlgCq0PEY
	 ZemVaTRd0WIXgmNLi50NyFmxmmBFXzqpQvyyaL0BdJPaj3DJHPWjiT/qJ9Q/EQWhga
	 tTZ3RIMYB49o6WG9Azb4dGuq5EBVNDxbJMDcH9ERG2ba1yK36fFyYFbsIAQnWS4Ud4
	 lWFyiKA/4UFMfuImwryLZvTYV+iB3Zndi8VWCK3IAZ7Ya48XhG+3ClQetERML9LLvV
	 xMBOjDpu0qVyyKeaJbc90CUAkHuX+ecvMBePwUBivzDU3wmPGDUAAqOXOntT/95jHh
	 VVwOJNsLSzE5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02C8E64018
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 10:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177538473368.4097.8391244848813666956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e240be0ab88311347571b26a4c21030014f79672d738231d08a22d7ac0365a16
Date: Sun, 05 Apr 2026 10:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775384733
