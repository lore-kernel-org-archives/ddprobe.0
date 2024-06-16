Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4173E2F26
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 09:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718529503; cv=none; b=C85Aj+dlEVyApLfjlWd+gnCPgMmAHFAnPyfnshjBEJg7yY/URjVUW53xsJ+pqMRB3muwRL9VVjvxY+a2L1Sg4XgrwdUkcclDiGomj0N2WzMzu6/mToEsiVvXJ/ZZCZTzem7R+JMeEa8Rlb0PTvzPWRZcfuzljpHkpfly4uRNi3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718529503; c=relaxed/simple;
	bh=c0ZfnxgVcWZqdk8W7aBNd390Tw8uTfR724q2x9ZFgPk=;
	h=To:Subject:From:Message-Id:Date; b=MfoVyRlbczBLu6fVGS/a3JTRMpDil60CqdEXjhBlPP3xHO94o2YYIDQ6cHC6101HLCtVCx+4cOxtYfiPEtrNyFKIMeLhLRf89C6zS9CqykC5EID+outEn0WDrjAN3YEtKBCEI7KdfCG+eU04ql7cPbZeSCm6eN6+shE5O15XoSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z91Z24FP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z91Z24FP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D460EC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 09:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718529502;
	bh=c0ZfnxgVcWZqdk8W7aBNd390Tw8uTfR724q2x9ZFgPk=;
	h=To:Subject:From:Date:From;
	b=Z91Z24FPj4BkRqmOTZg5GFsTgV5nOgVwW+GA9VFREsGeHTO7DtnWHxmR77O11DkBp
	 g/JEQyVRllegCXKMPOWrQYIcq0IzwTuUAhXZ/ffXuYh0IKrlO7OW6ywCql9DYU6Gns
	 xV45Fml7IyCt67QR3WZ7jO4zo1lQZNbba7Gwlzre0aG94yx3Wl6BMbYLbifa1+O2tu
	 KJqPcdXYxTpYwvnJFDmnSIio9tRBKhh7CFyE05nqLTM0Eo4Pk3di+kkUumz53Mfk6P
	 VElBimPprWNwA+6jzSJixJggIYJFmUuCUZMetDBfDEYJSjTc41/FpuRrlfAQLV8j4T
	 cfrjgxszNMUgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBB7C27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 09:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171852950276.26127.17265305378044847074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b08b0088632fe9a9c2683c156a5f7eb3cdac32021e96947de1ca1e52fe60b0b4
Date: Sun, 16 Jun 2024 09:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718529502
