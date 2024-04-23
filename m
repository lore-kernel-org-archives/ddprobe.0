Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EC0225D7
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 08:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713859223; cv=none; b=l1J936f6XbpCgpYkPkS1lQF+JzLkisxS2fTNx8HTJ5NW5KJRlPUpf6j+z3Z8HR/0f2XiN0oAs2YuFcAHiSzzxhc7z7YG5vi6oxbdUfoTEjWEpuoGw210Rz1lz1ItwHw5pyyoLUtAMMlM2R4Y2byzDpvd7OkXjWUCIjYFhc0b0HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713859223; c=relaxed/simple;
	bh=krHLno3Ow2YVjNo0fw+YudMTZd4150QiFq4lZlXnXxw=;
	h=To:Subject:From:Message-Id:Date; b=PpmnEFifYQkY0yH5i4+WTPOU+VJdpa6dCWT0ZdW9ZafPX/JRSxHNhSOpeo6GM+FsZL0nBTHpvTeM0vkXgIHEqgZym5rthRRcHJ8j4f/M8bXFBRb2tRUdvpNh1IfDMi4Nr5NlNtGAZIw4DHKEJP1A5RXhkJMJ4H1kp31Etn3VCdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZHturVI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZHturVI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C88C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 08:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713859222;
	bh=krHLno3Ow2YVjNo0fw+YudMTZd4150QiFq4lZlXnXxw=;
	h=To:Subject:From:Date:From;
	b=OZHturVIkOc+MaGWoFMJjPjQloqw2EKSfhOsrurlaPkIlGObkIFxsw3ivBAu5ecmf
	 6mywUsivmVfKvyMMHtN1y+Pewy5j0OLMtw7rAlOeqwjUdWHH65bHpP6dpDLrchEjGh
	 qKInL9mQ0Qwwig71DmVRiA8zr3RELE8PmryGH8FSRqM7FctLhImVhqtN55XwknmoxJ
	 DMM/LGpQwaHO6Wy2aYVEb/edog4KZotv/mBSON6sTyn7T1J0qyI3Kj7elkPBvibFI1
	 dEp+Pum8Wh58X0xxXzY6uFEwl2zw2FDsKfxSt9QjJOjBGtCSVzqEFwi8nRpt1UZere
	 GnCta74jYVEEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD228C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 08:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171385922276.27354.15327033714256043844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e035cf19a29350171212d1c761532f09a12d506b90d845a6e43177ec9beb43b
Date: Tue, 23 Apr 2024 08:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713859222
