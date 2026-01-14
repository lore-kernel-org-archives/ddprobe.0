Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F60346E6D
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768431234; cv=none; b=Tv44+cE0t1143jaeZgLqAv1MTIQ3cbFbgsz5GLVOEr6alPMbuI+jWtMGgNqQB9QQ1njuOW0pmcKoQKTctmaeiJgU2ypy8X2xg0l/rFMKyJ3S2cS6c+BIvhELsIm3UaHcEo+pumAnClnSiaLKCRzCqWjNGa1l80n7QC+agciz4h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768431234; c=relaxed/simple;
	bh=w5Unb1053ObVZZ0tgMNXcurJrz2wKMAQBfNBcOJ/O6E=;
	h=To:Subject:From:Message-Id:Date; b=dJNOXEdrj8BWG/G7N6mlFy+WS9QbL9Pm5G8g5zUp90qwAiPw36ZwhjoxE1kXY07KL359HrEmMSbU3S4r7rC7i3eqMEBQPGXkI/eSscrIGKCXC+pG7uAz04ve17L6pmOE4b/VMNStIZXiNV+T3SCbWCbaKZ3Vz5+qkTAv7/s/ZqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSPODMWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSPODMWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46D6C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768431233;
	bh=w5Unb1053ObVZZ0tgMNXcurJrz2wKMAQBfNBcOJ/O6E=;
	h=To:Subject:From:Date:From;
	b=QSPODMWqjU2RrOz3wP5RuIzaqK1qDx3Q+JW85CPdAZYhm9JogxMEKWonDyRHyz+yT
	 Q7mcMP34ZtJvKjVMHFveVVrqQ9ybk7kBkNY5eQOV1Tmp6V7UfolFXiUy4vO1u7aOHj
	 mzYxLga2A5GKVSs9aeLT51+g58BSzhxnN+DR1Q3sfx1k2352HUS8aVVeLT8XrAa876
	 f1lMGuZ/fvnVKgN7vJSw5hFqL2l1WJYc2Rgs75aod+M3I4IrNB40kMUDQuY02QFxzY
	 2E0JeuUE4lmHnK3w6ltK5uQ6IXxFIijjZSgyI8vD1DIAufnLHwUdPdCa5kBNABmFCe
	 loQloL/iRRRMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961B4D3CC82
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176843123358.22837.12035821159358196680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d0083165a7200b802f5508d202d0c5d3faa23fb2bbac9ee0bc3dcd7572ab12
Date: Wed, 14 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768431233
