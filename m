Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A55A23B62C
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765360374; cv=none; b=BHAwlXoRjxELZGMs9tlXrAn9uHcm6WVQzFPm4vDoyOUdcAYQsa58erLzERbYgIk352VvaJ8DFsVH3b+3gY7SI1mP/MqvMaIN0eZ228TJSS7jIG4RmmzxOMNZV7c5Cq9TvgT4T0qZTNvFL8UMEdek4Rxe2q1RBcXYR9vhZjAAG+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765360374; c=relaxed/simple;
	bh=158EfyiSmR6t4+10A/cPAJrNnuuhM6p/r3J5GO8/dGY=;
	h=To:Subject:From:Message-Id:Date; b=umBxaGBoTD9QNvxavZK50EtYRrQwcglteNqMJ808qsMcr6hKrH2pptjLmbyKxAi2NiEste3K0VKfpAFMDOuzRgTP8e/WeYtSZGLVa1MJxf8pBDN3XvAwhIiMl78mCws6xVRn9vLPcWLyA+M5FIYyzRlcrVrGLBRmLMVdki94s18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpQfWPAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpQfWPAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40C8C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765360373;
	bh=158EfyiSmR6t4+10A/cPAJrNnuuhM6p/r3J5GO8/dGY=;
	h=To:Subject:From:Date:From;
	b=HpQfWPAzXTzmXp1CamW/h0mLW2HxVHrMmuCO7hjk6R0IGNn3t2+dhmORSnHekh7Ay
	 +ko5AZwr7eyR4QMvzv2YPVhy6GHfnewWQcCUfy/N6aX/I5wZ87tDnxO4PPuE1glx8c
	 z1r8E2snGiKmhH2T4sRRSWpL/9CHAmRjjcDOB33rBR3+qY/voFfULOZW1kekoJteog
	 pRg9FFXPB+h2fGM02o5CeAlP3GrmRzvi1fFD4c+NfL7n/8HuHu09YDNEYMfteZ6pPT
	 M2FXk6zmrpvPINAsmI9m8MqVhX326UavuvPZizeJ39WRiDE4Q9E/Bh9eckjcQT/srm
	 duLbeM/vC/1pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91707D2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176536037358.15498.11852039837086705360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b5c991deeb39d964e0968b63817fcba586257c86d621af37f3a97374fbe0fc
Date: Wed, 10 Dec 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765360373
