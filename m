Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7000123BE
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 02:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716345203; cv=none; b=PFPfKmUlMCLj96FCxm1TfmVfqJm/A1+xMXqZhuDQhOOP0NVZxYDxFOgc6Ew9MvcXSDpLuUqxICmdwYEEDEoBce1OCE4UuiuZMzuzHA1z73JFp2dXdT1/Vj0Zxb/hQyJ8clrb68qpe3AjKParA2IhlpzLc0I//ip+cn4tlSwpbZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716345203; c=relaxed/simple;
	bh=RMIejX/CTl9MNuU2LGBh+uiOQQEXMvQ56nU770omuI4=;
	h=To:Subject:From:Message-Id:Date; b=U8ri/d/cM46d6ALNGyc2a7Aaci25zRXak7qr0jnWRWfR457/x1RUgGpqVdspTGXm6S+2Te5FwxjQdj1GpC5UskbzhCjJ38BNi7ke95ValdC54gWNgJaKf0/cvSiMWU6oIElOjESrHom9r4COqiWXDDF1vrfPrNz/cqPedsJzpuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4LzH5ac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4LzH5ac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFBA3C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 02:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716345203;
	bh=RMIejX/CTl9MNuU2LGBh+uiOQQEXMvQ56nU770omuI4=;
	h=To:Subject:From:Date:From;
	b=G4LzH5acJykGTRwDOGfrFtGF8FobFiHcNWLkdGi8qu0qNn8U9iV1Ra53QznNydoWN
	 /YwvKkHnICzbS+vntxLoE2ir5S8WuXMUjXRwPhsVIRjoiuvxmq8sSb9t6YWcwzWZPi
	 Bjh+8KL/UKI6GH1NsZ/BfVpq+VVHWGENp1MGFZciVfO6PkAnPSN0SfVE9mYyMm8/mp
	 AA84W3rBnnyTsDbqED6d8GO+irG9M5H4grTjk3ORUChxfACAIXKV5mXc1bvghllrsl
	 bGiR3B0qLjxMaNEAbl9es7W/Pu2ZW9vtBch3kv2RvxabMUgcEvbjBIbDw0Ayih/jEU
	 guFvqMe/5Tuyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDA67C25B74
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 02:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171634520282.22488.1204287098592808909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 037bda3ddac576bbedf9ab7cf90974f0548ec7ef2575cd5196720493979164de
Date: Wed, 22 May 2024 02:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716345202
