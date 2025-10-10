Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3185E1531C1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760082594; cv=none; b=XoA2mZOGk/Tc2UrUCHe3IKadp4FBbSNCtDgNUkiYzeDLjD3Ah/lKUmWJD3316o1E4iMxOcetD1r3DatBDArbPCCdk/tXssrt5FAWBKA5NDg7KvpD3rEU3VNM4zbjlJfzuZ/pk81Uvw0Z4o3cIBS9IiCMyvq7vyflTmhHHUW9yJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760082594; c=relaxed/simple;
	bh=ks8xJdwixpxPo44bpG6MBzEiTMb9lCWJ7owtERDr2Kw=;
	h=To:Subject:From:Message-Id:Date; b=e1PUgxz/tNEPMLNDjGCoXaUWEZGpB6o3GgyRZ13IxOrgjjawRnCub2gk7ayqWcRS14U04phymxGrZkCn6rrodVsMEjTU/rzbta0ZeiOpeIvxKxDKXbmQSqllgd2T+3+pJ69MB8DQCelxQVX7ISyONWedp4cEBpKaP9FZvk5bnSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZTDEaKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZTDEaKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A41C4CEFE
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760082593;
	bh=ks8xJdwixpxPo44bpG6MBzEiTMb9lCWJ7owtERDr2Kw=;
	h=To:Subject:From:Date:From;
	b=NZTDEaKaGeNq4ilkY7S3kqFBEaHuJXnnnIXEHKA4rA5dbqh4Julq2Mz5Yx3hwwEMj
	 dIuvkQM3t+q0Jw+rPaExC08Up+kDdBltsRcs9CzYjCgXdRsHWTgCwrOE/CXjbZ+O14
	 qkAInCexudQYJgaFzdKtqIAeho5db+WpDgmiIw1TsOTEiKYpe4WjFrHWz43tKYbNd2
	 Hi1o1JxxDMYPM3hMAWg7XBKlmCnpMRoUkKtw3EOPM4tGBi+rSA5y6nsTmo7i/3qBXq
	 /56ZmOiE25mhBl6FZqWYIc4y8//7yjpfC1KRG5869aQzg/4rMEA+/YqPvWlSaZwkaV
	 cMOpcbxeYBJiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9179BCCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176008259358.16770.1631990749707107996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73469650ae4cb9086abc79e493860d232daab83dd5b1b70a10344214471ac647
Date: Fri, 10 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760082593
