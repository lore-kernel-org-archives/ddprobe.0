Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE3D335A5
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727171154; cv=none; b=NiMh8Fly+u+tn0QU1eO0HS+MUq3umTiq6g16C3Srzm7cDVj+0U3k+xopB0ymR3jN0d9Tg1URl8BXX3bA2ORIalRWND9BpXBWM1j8cdmIJGEwLB/zZeCK4i8jYqUK5fZIEjyy3LUnX451dj9UGr2Tlevgpgs0WhpKBjpLkxVn+Kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727171154; c=relaxed/simple;
	bh=8bqG5PdnCb/rE4DwrOIcaldpgz9U4Y0fkmV+Qo2Biv0=;
	h=To:Subject:From:Message-Id:Date; b=HyJJVPzaJ7oop0UfGB7+4mBn39euu2IwgSQaPkwO6VbnDfVuAbmPu88Zbfruop4igT8u5c/9kZaWbOvKLNMCa/0xvTnD6HHH45JETHd+7m/xMd37tO1FZRgAFxXM8qRlAAfUReYunfRf6n8DUWNivCLoAJPl/8jGZqAcLUsz+pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPBc70B6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPBc70B6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F2EC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727171153;
	bh=8bqG5PdnCb/rE4DwrOIcaldpgz9U4Y0fkmV+Qo2Biv0=;
	h=To:Subject:From:Date:From;
	b=lPBc70B6iNLJIpi4DKmde50mT7FRiWGhaBvAZX3RWU8eEES6a3SHoZVsxZPI9Dic8
	 s3cCFOXqWLRnB9anNiTh4a9YdBaLsoReykFZ1SjcdIZm+TtzxuJw9VYpbZRkNaFBf8
	 rX/9k0PX2S0hhtVsawgXgJio75Sx0u01NNQdu5NeZahKrECz42DvP9efgVdV52ewGM
	 KJ6k4PLG0RaPrTq40ABnxJpIwXtLtFPaV/GZfPghvRtGA1XiGUu3iHUDcZEOQ4QsND
	 BFMRi+Y42siluTV39Z45iy7FXCGjd3v032xVyflRUOKY8p9jlcNFfKoLcB0+W40CrO
	 1uI7VhCqS8U1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92148CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172717115358.3851.12961888819714265850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1679cd119f0cbbc280cad2980064b0a68db9a1d34f00ba3eece37fc356ed6a4
Date: Tue, 24 Sep 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727171153
