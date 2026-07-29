Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F49D43C7A9
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 07:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785311436; cv=none; b=HFSEQlZVQHEo67obkjb3Fcq5/Usi2q8rNBdjps7JxjtNjOJADxFsvylQt7knjN7mwfAmJoyRwjDdFBaKc4WTtT6t2IVV7u2OFpEUSskyNZIe1xE6a4W7X36iuNKyD7Uyo9xm7cJpO2FtVeANj0noDN5v416YogZO6BFRjwjVDKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785311436; c=relaxed/simple;
	bh=Z0CaKxDIh7PfgLBp5RvS+KT6oEvBLwWlgBLRs0qcw4k=;
	h=To:Subject:From:Message-Id:Date; b=CnFq77NGCwNZyB72ObaA40iUeO5QWKGmgAxxyT6TFG6/BmmEW6sE8yxBjp54mzmrs94/vRDYogc2H56paUhWbL9J5vlSvQdZ5k8dIy23+YUGPqu7/hcAgfCoq7+cFOEHKo5UpjoVXNy0stsS9PjcAkhTD8YH6SaDkJjJLadj2OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tY6zcddE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tY6zcddE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6C3C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785311433;
	bh=Z0CaKxDIh7PfgLBp5RvS+KT6oEvBLwWlgBLRs0qcw4k=;
	h=To:Subject:From:Date:From;
	b=tY6zcddEW/DCk9WiFIWhgWIfnj2URwD8sqiJkLLsdfvnFHmyFG3I3dNft+I8Fac+H
	 t1GLH/GhV4OxUDFw7ZycA/GwO3hTHCsIfpEBTU8L4VInOyp3a6Q+CppQZoV+CNQVG2
	 1Y6cZeh4vcMEjDhW0HdoJM3nFFzBVVoZbSy8x7MI+7sL9Prx5pHtCpPSd6rY9CiDBR
	 STSel9KGb529fd97kW8sVFwigPognmdeDUmMXU28zBXs5z8aFNTSIpCSMnGSvHMWD6
	 M680cymvR/5mMOGvhWpwDaNVZN2r5RnDV4gUYI8+hzVmDKjtkYg1hW3KVYiqJNiLk8
	 rD3pEoB5+3Ksw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA71EC53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178531143369.25506.18274951209130704173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0662cd85b9d8cbf250cd3daad0a5bae191cf59dc133b1485ff4a83f6185160
Date: Wed, 29 Jul 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785311433
