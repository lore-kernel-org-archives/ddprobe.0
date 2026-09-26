Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DC543F09B
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 14:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790431235; cv=none; b=daZANqGB9Ck/rKYh0TS/RwRexVF3D5YFiFzAk2qmbrusBXT+jQJwlybGtdCOTh+dTGk9Fyt0ULYWWJK+kS1ZTlzJGYx42BK+ggWx9p173fZKw6isfT+95/eJI++cNyr1XHfS1Fy4bdU5ZkI661Hi7GUlre1ccgbAvGBCzZfQuQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790431235; c=relaxed/simple;
	bh=zuIgAJ6lJY5lKW04HWGSCXXcxG5V/xY0Iw72NciSmq0=;
	h=To:Subject:From:Message-Id:Date; b=OX5De/3LWaFSoEEWEu50Ulj9zfZmV+aXGWe+sIlohhGG85u5bccn2HH0g6kQC6mzBsM20CXhManqn9xCbL6gCAPWgo0PLuyLyPAAos+FuVRTWdHI5+3Q08LCVWQATJi4aG2XjmGVubpLu/xIZKJidw/iGWO9LVFHrzp6nC0O2sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZqjvDQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZqjvDQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17E9C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790431233;
	bh=zuIgAJ6lJY5lKW04HWGSCXXcxG5V/xY0Iw72NciSmq0=;
	h=To:Subject:From:Date:From;
	b=dZqjvDQd1q1GzWrI7Bu7Hq5+kCAZBG3yMOkBALTT1mDtXX4b9t8CkaZ5SujYzHTuz
	 ehFYdH0Smo3wxj4hIlq0FRy4RmwlVMIXri3HhhbGIsE61I8nq/8WdMp1RbBxl5sAiw
	 6cKCSWv9koshxdQHd1UtyW47NPpAeRBF0+p8Vm66E4hJ7vQZ4z+uiCu++hct6f8fGo
	 9UxMq5+xYxjgRonuCZ/O3RlDSPL/UNZsCYNtk+sq2kzG4ULjwOq6F7P7CRs51VDdjU
	 GuqVzv9Q3Ld20exB+PbSktJKc6mLipSo4rZops8DGVMXgv6oDm+pYnec+lZXo77PnW
	 KEdu61Vph/Jhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF530C98338
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179043123368.16319.7663185284106334561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cd59d000ce4130adec00d667ee46068a0d46e15a0ff29beddeaf1192442822c
Date: Sat, 26 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790431233
