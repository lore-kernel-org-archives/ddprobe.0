Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BC3308F3D
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770317634; cv=none; b=emliY3ZkZKYAIN+IunRTKCrUDNSo7p6v7mzhXEdiDEZS7LixCpheMoOcfsDoHwQTXemvKv20pV79r5uaPJbJsYap1WIjZj5pSiUPNZub4NUP4K+fOM7k3hZsFVdJh55JjSdoWcMaTv3eDUrfWp/jP8R1v40XbhL/6MEg6eeoU4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770317634; c=relaxed/simple;
	bh=fC+WWCjN4V0Ta+XLa2GBe/oKLDlDZ3KpoLTwxFkKJ+Y=;
	h=To:Subject:From:Message-Id:Date; b=SdzrWaFzYrWUKz6dduv7jixv0+F6bkE+osiC+hyBVPoaAC96VvWjF6/gHLwBMTCpOhp4i4NJxm/TMOKvJUt88C/GRyrnNG/ulR8ELG1ZLcrGTM6WO4g3edp3lhR2tUAu4j3B8DuyRJ3HjByW7Zo/8oJwJPT2DJHpDQddbF0nbzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jnrp2Raf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jnrp2Raf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C99C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770317633;
	bh=fC+WWCjN4V0Ta+XLa2GBe/oKLDlDZ3KpoLTwxFkKJ+Y=;
	h=To:Subject:From:Date:From;
	b=Jnrp2RafDFNY43qS3d26KMzxUxUkr9vmZr0O/yrO6iUH4dOTKzkxRbjZ3Lnxf4dyY
	 0oVsPeGu5xI4zf68AHVYPAuMEmbWmqXXiuFTn0d7qE2Gte/Z9F5PBLy6p5MrTady+O
	 MU+YJBGw8gnYQGDvnlTwtpo32zUZVl0ay1wIdoabLfz5EPrcFotZNG/3k3mCDXpbhW
	 2NFofTbR1VEXwfez9oOJsC+FsLOBm1NyDsIITtf8o0d7A3uOa1c9Elfeh+blmiqFO7
	 iz4odZsFvtZQWAWWbUgUvT5ggOfEc5TMHvURU+9own8I3e/4xy+HDtxgL9UfptL3gl
	 Vw6dKW+Pe8sow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EDCECD995
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177031763358.29327.11356556031455062302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 843bfe6b5b4a12dbe5013493621a6647d818c248d1c41b30b69eee4f023af101
Date: Thu, 05 Feb 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770317633
