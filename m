Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C1C2BFC6C
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747954794; cv=none; b=RWQEFd4+aft7Osffd4z8WlK3SAf7iDU2mKvayx9mm04Odl7a3D5qY8ge+xYT7fgxt7ChVECo3MowuvbyW1ha508Doaz9eKUttkbbG0If5goxX3br/CeBQfLMqxP3U4JIGz2RdkDtq8p9WknwVQAN3NWSpACq2PalYyeyUY7gNTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747954794; c=relaxed/simple;
	bh=Hr09LkK/GndzTyQSRG0Ii59QwYCzioMyEzLZ5r43uF0=;
	h=To:Subject:From:Message-Id:Date; b=DDxMIzZG1wd9LpLs8BmtkgrffPMVhAOA/dvt9bQbXjJB5MTN4QbFmPhftDv1rR9lOV6YjOdvkvpUiI2dKqFI4OERMGYePLue6ZZDytYgasN6uPpimdF592gTx6CnYmLTy0SPPXgjmRPSwdiFxqvzQXZGzaX55f9IgOcCCG6JZHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKv4EAJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKv4EAJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F40FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747954793;
	bh=Hr09LkK/GndzTyQSRG0Ii59QwYCzioMyEzLZ5r43uF0=;
	h=To:Subject:From:Date:From;
	b=cKv4EAJrwkDMkbE4WNeWD6xx6tFuVIS5nqY9BLqs5MuuYelprC5c0+Qd3CniRX0Zi
	 PfBnWqvpHtycQw7bHoXO6oPbWwioyFfcu93MrmlAbJ7yPe1Wf+8JEW0Gb423jhyVfB
	 wyYQ+gsCqLZf+EL5VCk9+Wh+kf/iBO8oaxuc2pFvJAKaPDGDTEZhqdNl07Oon24otM
	 BRlPYeJZq+4XnaUN8suGL01IxoPLdvNo29SNwcas4PgkQ6VxeL6U0hKbDUtpQ6bkmX
	 RhY4S9cmkchFcK2zRyW8QgGfLzn/xFBLXdygw2pqhNLXs/iWsf+3CHfTa5aR9HuRF8
	 Dg1QVjZLJDWtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B5CC54EDA
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174795479357.18974.16635105139814044854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08bd7ed4ef5096370246f9fd45b42f829cca0454fb17a10cc6cca8a4cccc40f0
Date: Thu, 22 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747954793
