Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340CD153BE8
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746419994; cv=none; b=DEe56fykSb3zCBsDCLRbKTGldGgAKynMfcr5Z39mT8JUGsESROmQlvG5412rPJJORjESSB/0zZy76rIggHHSUJ5j62F+cyRJNHkkZP1SwfJ9m5m/hGM+ADvb5pSk84QsvhRgGzVQuocvvtmS7Sv0+lB4wLHNmqH4HjWnog2dmM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746419994; c=relaxed/simple;
	bh=x8Ye6K9Vvrinar6vmqpjQEbroFkqXFGwwmFkQWLcnT0=;
	h=To:Subject:From:Message-Id:Date; b=jiiuOWLQXCx6ZEVA4EQAx25PN9yuSDcQRRfig4n40GaTGZ1tPCuTCgTAM8xTw5f/G358Z5d/R55eLcBeZwd8DV3asamBbfIy9nyddRQFe5utzMBKahCkiYzrVy4ZEpE4CMH8gD2gVaJ2NdXeBVc02UeWScRrfk7+qKdu93jc3R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZCBhFke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZCBhFke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A354FC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746419993;
	bh=x8Ye6K9Vvrinar6vmqpjQEbroFkqXFGwwmFkQWLcnT0=;
	h=To:Subject:From:Date:From;
	b=cZCBhFkessxlGsiAx9U111UQazEuwTeUgZlAy6pLvkcv1dQ9x8KimGtRTfeIsAdVS
	 EzyPJW4HUrUnAS/o701+vCsIAjfvwOOiPoy2qtQ9eCAe+SwbBlPlfR/SjTk6lJ3U7C
	 4hcB3eISAfW9EUYOEjDIj7yTyIDvTVh2WzBBjqztRsq37F59BrPE/xZFBEM2mJgasU
	 7bMawgh+PRSVA9EZJpzFYDj98XPmCqf1aQVlsaKalFkqaiabL5pPUYBXbVomtR7o8D
	 Xy4dP7390b73oPRWqVXWEfeayy5bKGPU2KKxyQo9JPzYAFqf0xK2O9nXgFJhgTXOcG
	 10LA9rdaK6CDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91837C369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174641999357.29173.9090597586012650546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 074bb157ddba8554405af27b8827825d4979e5012029d7157c58852dbd73405c
Date: Mon, 05 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746419993
