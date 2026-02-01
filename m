Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B22E235071
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769968434; cv=none; b=ZVgeQ9UzFXZS8YulPy8X6BXyrxD1aQxDlkPq2zlRTT1irB611W8krWnzrj97cZtEfjsnYBEkm+5Hgp2d7nTecDfqQJwr5roh6DfmRsE81Yrqar05PHs+pJDWBcCa+iTvdSGjTRf2irvhVzfXmtPKmi+1fYUKYyQCFAdcsvuLiSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769968434; c=relaxed/simple;
	bh=lmFdDJt1lgpYIVT+hfVHqvgP0vKW1rOEYtoO4EzgN3A=;
	h=To:Subject:From:Message-Id:Date; b=XnTxdd1aRFAeRu0+HBaXISUwT0rOXTnLuZ6fqqHI7BZBGJSm0vuxwIazlrZbkoZZ1SK3X145EzmzbxEoFeTJ9jTDlNPK0Y1KOqTJChpvfTHmc1bEp6/NOaocyRFbnJIbMywuvnTAQipra6TzsUeQDYD0CoXVVHqZ2OIv3Ej1Xp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ukuxl971; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ukuxl971"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07ABC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769968433;
	bh=lmFdDJt1lgpYIVT+hfVHqvgP0vKW1rOEYtoO4EzgN3A=;
	h=To:Subject:From:Date:From;
	b=Ukuxl971lscuofFDwYQPII7uD7fKn2wl2ibx1CI7LXE07YRdcWT2E5Oz+DsO0IuN6
	 xONCsksdIKJaZcR6osDMPKUX+/Jo+rOKxRsGoo0Ki6VpYJfduV5uAWM9WTK72mUkC5
	 TkcAzkrG4sS71z/af9HrwpNtDFp5Bo95x5Q/uMFp74lUJo6clROdGfyUJZ0lV6nOjq
	 zU1jRPODLulE3xX1BdPDkhCdJDqBRstqFuykTMZUwk54m6PgDMpo+MR8GE7zLsUofJ
	 tMj7Kqm89huOIWB1+TI3xc8GE0g9iLdpSkiT0p3QjqtGFzrX28XJ9ar8ePXftc47jg
	 DgBRS6QLb2g2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F86E6529D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176996843362.32308.11641851087974994628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f26319ffad1f5ba58b2dbe4727f082a80918a4cf0f5cb34b12062c8ffdb2bbf
Date: Sun, 01 Feb 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769968433
