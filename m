Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494FD1E47B4
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 21:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740950934; cv=none; b=Ju4Zmp0WzJxzsw/wvw6PlGKGSt9OrRoH9TNmkLWu4j/BMFR5XMIcQtaprg6meQ2L8r8wnrMWpat2NRs0KZ1U8PheOTXoRMbzoXLNBw4ICoIFNElmTgsWDH/z2kivnC0fsJwh1gSqN1u6wI6YO3lkzf/Q5MQIYwCPyMusplk1ITY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740950934; c=relaxed/simple;
	bh=PdY9qbPhkrvpIdrDRvzLYmLy4l2k7jCSCvdm7UqLVRg=;
	h=To:Subject:From:Message-Id:Date; b=E8cRIczcyWtZq32GFEM/1a5wpaTmUJBT63LHiRSFDPvrT6N7rPlLkM604SAB1Emk6/cY/DHEHzgWWdJ0WQ7Wp8UXJZn1x+6sO0SIJyn2sndp3dX8OpSOa9UrNJLLamsvLuLMUrkE2cEnJ3CcruWKx8U6vsX9t6TW29tqe3v9E7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMEfC99A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMEfC99A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDB9C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 21:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740950933;
	bh=PdY9qbPhkrvpIdrDRvzLYmLy4l2k7jCSCvdm7UqLVRg=;
	h=To:Subject:From:Date:From;
	b=uMEfC99A/6jHiGNVmNTWTl4goYpinNNpKjfnSSH3JZuMYkOvqE1ZBsvLVrr9pq9sj
	 RdGb4RQyVu790fNkA3uV/5snZm4e0YcwAvrOtncAWKNebx97QrTItN5F797mWTBGlK
	 WFCaeuc4EjLYyQiy4WotN2XuxaLeUiKXwgpHUfYeJTKqhBMDtLUcJ+DnXkixlC3ZuZ
	 SU7M7xM2SP4uXyPc+UHAaa0MJN3+xV2YtP2X+yeSuo3cF/Y6O8M3ROWwasP9HGB9zb
	 4pCKgmrifnjLXhfJSO+Gv3LsdsSRXwI1iatj/M1ggtEB34VFotVZF1tC/1N8dM3h0l
	 SuDtkLDFRCwLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBB8C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 21:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174095093361.16649.13648696653814123662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f3752a1dd36d7205c7eefb680523430719e5288b95a3e53bca89c39ff773e0
Date: Sun, 02 Mar 2025 21:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740950933
