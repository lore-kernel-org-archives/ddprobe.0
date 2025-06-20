Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3BE1917C2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750391994; cv=none; b=nKYQfMG3Tofy5kZX2xqAKhgUGT7Y7mw1lmVC/oK4FwZVXmrt7q0Cs4JJfHKW5313LqT6ybBC5BDxvEGrCle96ZYSSMIJygbTg6rYMHrz8PU40/VAhYiUVIRvd8Yym9hzEb+dCzJ9220ihvv7MG/EjPYozLcIzGQ5fjy1GrBd/ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750391994; c=relaxed/simple;
	bh=TViDpuaSgVommBcB/Q++tpOMJ4eG2GHnyag15s6oN20=;
	h=To:Subject:From:Message-Id:Date; b=QVAnfgE7uu1Tk51xv08q5RRDnAjYBPsinxlcUUdqZscOZYfiGYa8Q39e4hdcpVmxMW4+lkN6OykA0xdsPxgrrvlcmm6Yworj3EZbO2x3gSuVMzocrbhpkAN1K0TZBUhPI3raJd0WAbtzUocSsFuEZ2Z/l6Ct+TjL13fX8g1Z/rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUNDRZ8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUNDRZ8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03E5C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750391993;
	bh=TViDpuaSgVommBcB/Q++tpOMJ4eG2GHnyag15s6oN20=;
	h=To:Subject:From:Date:From;
	b=MUNDRZ8/i2eb6WnqfU61ky31nIdrmOJVNVJTxcPRg3UbosxkflJrv/HNScEuTcRZ5
	 YnOsVDOBtVpSCIIQhAvIJRY9Tdp/wwpi8k2GGpfpUX4m4cDQhW3uBhwo0cPJKakrN0
	 SSIH0sw/RJEf3RaQo9cP9r3UTru1JrhcnhiCewvjIc1e8bNhTYZYadCSligr4FQZkj
	 kx105PAGWucX8c/4Fqrq+6NX+afHSSZgoxNWyeYijJpviwOGv4pGh+a/0ls8/LLZfJ
	 6kR/jotLUbYKygyEkwLOKjkgrczp1bJMYT+vGD8EZr/4mPdN1+6YarwUCtZKmibsh2
	 oMJoqB6KU0QeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E494C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175039199357.6843.471856165528904796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc5d2cdb635ff7b73b03af39408fd484ca2e7a9d797a1c60ef2a2b89768e380
Date: Fri, 20 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750391993
