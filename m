Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F53426D4E7
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756367995; cv=none; b=iMOFsQVrKD7/ET6LNvYFP/TUfA2OVEDGZAk3pIDPfxaVIJuGO6q1bjqfhhFdyFdfQrMjDTYkYFSdNwFw1XtWuBWyNjekwbxmiuJuU6og/hJ9QpTjO+8Ahe2VHgdFfvabpw3t9PK76zxT6Fx2vCKV5XOyDT/EQp/RgF0pO8NSPRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756367995; c=relaxed/simple;
	bh=AiUaSbKllBCuEyfNKPgE7jWeU6RilLJ6VqLpoIpMuk8=;
	h=To:Subject:From:Message-Id:Date; b=QWOXGKfhWpFC0ll6l3PJqzxWLHKkv8UPQh5McM8VhmAF/KmdoK04fYWEKg4bjryeWB/GZYdFmYPSIER/KrSzj7BCkQ7JdXGSGNrbQSMkG2Di1sgcXUj1suSTZlP+V9Mc0zGdJ96mBe7hBEoQsilPTEyqenLDmeoGkzQ77iXbqqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRHD5cw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRHD5cw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A446FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756367993;
	bh=AiUaSbKllBCuEyfNKPgE7jWeU6RilLJ6VqLpoIpMuk8=;
	h=To:Subject:From:Date:From;
	b=uRHD5cw5yYQH5OxvjlSFCduaZO7J5vAVtKxiPJbcTmj7QgqrmCg4uwl1JztETCIU/
	 5tLjYiMB7QjVLHpgnLKg/CHdkJyBIaZ9GNAOb9RWfKP4Uy6+U8rNiXaiBdA+jLa1dr
	 15ZXO3h/w9AM77Txb/ArSK7paCEifWBnNSAcf4LzFdi4tUsvfg19tAL7oublw815FV
	 NijVb84su3AmEhGyDh+Vjw2fhzAnKPsA4KQrDSI/nIKcxNouqLKGnmhLtWtP7+AulQ
	 0AjpPU/xBepErih3OQelHdjP8J3mYAMd5y+onZ1hHdAhY+uOxukcoW49aI6fFKejG0
	 EvZnyIUu0UHDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EADCA0FF2
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175636799358.11225.6259277424557373777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aadcfa5b55e3cd67fb1900b9a5d863ea2f27cab8b635d06b45f4a7478c80edeb
Date: Thu, 28 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756367993
