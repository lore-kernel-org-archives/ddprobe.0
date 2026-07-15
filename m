Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4306D3CEBA6
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 09:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784109514; cv=none; b=dFwz7MkvX+kz5Z7XzcgFmSXEoYAfblEcllfcWolX2mu4j6d9KexAV58cP1tSWPU2y5jBMW5SX+9V1aVg5g8iHPWG1ThJQtQ8KgBySCCYsQVhE0ZXhl50QbU/ks9p78S9jhNuRYuXfk7WQY+E96kPlb1/ykaDgCKd+XiU23Y8SbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784109514; c=relaxed/simple;
	bh=dyFyWGLfxYwsAAYpJmxCiZXXaSxyExk2uicOzeF2GM4=;
	h=To:Subject:From:Message-Id:Date; b=Qykn57KqksAnJC6oVACHwHSCXsYgxs3wpD6m7dKYJB99wkvKJ3FAZ8FUQrHS8IjmCsMAvnAofVs8/h2lTj/wirIOwkjqesplFv4u590aAsAxeeOodmYNGIDEi4zztMfCPEGhN4fqRTrT2Cu6tx/Ol62p7b8nuRKjYeyBviHoka0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orjQhW5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orjQhW5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7A1C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784109513;
	bh=dyFyWGLfxYwsAAYpJmxCiZXXaSxyExk2uicOzeF2GM4=;
	h=To:Subject:From:Date:From;
	b=orjQhW5aG8R7dh4SC0++3qzWKBsGtpHAxldvsf/RkeH7LoKWonRVHywwyuGket/tG
	 WP709YrDRlknCnykRGKW+HONcVpWnBEPqRzdzhC/CoWtZHk81a/6SP72ET1Oq41asH
	 5J1S1MLjWSCyuGVAkIhg9HJVsx42HBm6OX5EdH8eUK+8eUTT7lkoB2T1PPvNFqmTHN
	 zNqA6QdXxLgym/ldFCrX2mkbxkpNFOPtadQNWBBFd9JJfGpTzB/lkRHTUO+NcNf/Yy
	 onCDu+gND9FyL8muUt1nugDBSVqATlU3dB+lyJ+A7PanAlarZpSq8nhGCatAvhIeXz
	 2gt8/NeIivFxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA10EC44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178410951368.30938.7562714347945818310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfa4c0d31619bc188c776e00f9b27f4d13318df23929fb19c3be8e17740157b5
Date: Wed, 15 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784109513
