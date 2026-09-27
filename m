Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE1F3B961F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790536834; cv=none; b=M70H8oLua9L9ID5xZY6KrYO9vUnBMgJRFuPHoOfSieetrwvbsRT2a0t5/nwr1uoWX3VoW99L/mH0TR/beMQwrBThKfoEjN6kyIWrt3KeKxAHNhDpWQSrlT+1CAUT//+Y77x3cnAyp3gVvA4rJZ916yLOaUhY+rJ3zK355DiAB1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790536834; c=relaxed/simple;
	bh=gzVtKFkDLtcM9yNGnI7JRdTj0DU/uepY96Tmp2cKiS4=;
	h=To:Subject:From:Message-Id:Date; b=aqFCZmu67yWhRy9v1ucIBZ0eBCJaS35BWLQOF4WpjWOZDBLhSoJaDsnBCMm7UhqBxIvgLW4trs6pjwjVqgYCFTf/grHZFHCj1WDpiBML1xVAbHzAl9yr2UbcBpaVMmiGt5TzrBsSEky2WaAgPxx+1cm2XyihtVMQjK8YOoX9WgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoNUnPKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoNUnPKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA60DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790536833;
	bh=gzVtKFkDLtcM9yNGnI7JRdTj0DU/uepY96Tmp2cKiS4=;
	h=To:Subject:From:Date:From;
	b=EoNUnPKZKDS/eQuTpN5A1IE+zjlql4tZGUwVl4aCtqFYtsvqCZJGZtfQBB+cuuL86
	 JtDCWZyhoJIYkgvahuEqw9AoNBoft62EVJhupoGVP9zB1cSYt37LWhV3gD6gKHOTJH
	 2oeEjMRR4D/DI19HI/Yef91ZX1eCV/cSovM/LDj8pU4DqWgAf3PEA9USF4t6H4SyCY
	 e+cxahU7aJ8cmUqZmS2d4krczgI9XlKvTma+bXKWw1YRRqAxj6ckI7zFu+UW2xkw7A
	 iuhedKqh7vlZMxdzwiotaOVCMDXlTS/ZHJ7YCyrVCMxNnuHd71wqrD2kQAqa2yeZ4i
	 ULInJmKKlwcfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C89C98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179053683373.10356.6692988546138410801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 629ae26ca8e3a5a3b55d11920263154d93170425c45064e29925ee222d74638e
Date: Sun, 27 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790536833
