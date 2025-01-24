Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB743594D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737720955; cv=none; b=tff98FXwxGnMHCY61yGPwdVj6Llyi0ZhrIXyo+Vq2tmLThXFGYullXyKociN0mQwMOaR1Kp/p53Tg+YM9vqJmMWePQY0BJBTBxjCErEx22BSnFJas9/kYCGDpifCE/aM8/sPF3P2evphgTTjPU5lXdEEPs4vNtOtPwlqndlIEzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737720955; c=relaxed/simple;
	bh=Nw0GYMV9ts6Fq6vIFGkewDdwjJC7C2D8tP+4kyGoMXo=;
	h=To:Subject:From:Message-Id:Date; b=CEifR6knBk9+xa2yzDbfv1d7Ee9BeM69Mle3OCD3bQG6qXLGALDrvPuuRbgDqgNM7mPh/+rb1CjqcOE1zQR2pZSF3Xyet0yMdsB/scdlXxhBHWBALl9rO0qXxk+Mm7xdOoY8Rf8SvhraHzUNijGh+afSHs0qATiFBx7wLR1vlDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DA4LZlZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DA4LZlZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA94EC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737720953;
	bh=Nw0GYMV9ts6Fq6vIFGkewDdwjJC7C2D8tP+4kyGoMXo=;
	h=To:Subject:From:Date:From;
	b=DA4LZlZvD05IEgbrXyXT5GCMFKAGebPXEkV43OK1E0V0NQpF6JwxtKwsu2ykg0yFT
	 vfjXDlkHT3ioAfU65m08EaGwJFWnQnspijonSRj/BepMedsBwObBSYf1HDqfl6+eGo
	 uMM19iDG4lz1Moldqb+29+mv3Nw7nnyuZhF2cALFJ/LGDnpfxPljIuL+20L3vVv8G2
	 q2HhEfTX2e9fcL8ukDrDASmp+vfWpMdSc8eTHVk8yT4OYxrtLfc7hUpHYC5Zy2bTte
	 LIjyMsaiAEcM3WA86/zpHXrahRPAQf7wYVNj9qhuTNtLWsw0tFFVFuQD/S7pzDVSLY
	 MM5n+li1r1uMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924E1C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173772095359.21469.11228024789570021903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adbdc28d03e97a3a7816d781dd229f5a6b15bd468f54cb092642daf014d48d86
Date: Fri, 24 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737720953
