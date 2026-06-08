Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B50B38CFE8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 19:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780946674; cv=none; b=P8imq1/I3ZCdzcO4LogSwIb8Kaz7h+MMlfgLVusNM2b/l9reftiawebAIOUUdD21+5GN7z0NouCB7KssisO0A+bXFWeyMjMxjMBOd2ygCKsgNJgeg4iHDr5QG6yLHhL1rjJs4bySIKXu/I8gEb2bDUusDA/tFv+HbO64ewktZMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780946674; c=relaxed/simple;
	bh=j46qkUDnvqu42BgV93B5xvkA8uE3YvK0yK/g30gGa5Q=;
	h=To:Subject:From:Message-Id:Date; b=SuUSl8SRE9oMhZbtVOKnrf0ZX+9CLe5V9qcyyZu/7BI+IhLpgHpxiXDgsI2vaZL9Ln/CdvIBTyeXcKW1C0gfILm1qZk3B6VqklQMraMcVd+i7cvuuRJxuOhPJGAYqdMAlvoYIn7D8pDVXTzBnppsQzelErNQiT5keYYazcdZstA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlEPC1sD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlEPC1sD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E91C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 19:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780946673;
	bh=j46qkUDnvqu42BgV93B5xvkA8uE3YvK0yK/g30gGa5Q=;
	h=To:Subject:From:Date:From;
	b=FlEPC1sDY2e1uLRZ2Cm3tYfyLqF2PkL79OFnkEAk5/h3nh33tHHCpeD81kawq59EN
	 TmGO+EN1Ze/XB46wYqadTIj4mwYVixQm1VrkmiZIzZ84xq/lK1Sy/moCnKsjZW1dlY
	 htu2KYCFiNiRrf7FU0lCeyn54FmYg06z1WuGqw71sY4MLk6L+4CjKLSoSrAOVHudAV
	 6rw1Srh9kR4o7gKTjJFH5C6qRLLb4nnbgPg71DluTsZjlduDtT/olZZcXxtT3MS6bw
	 6ADMXGxz2UE7pQy+dAhm/lvPbeja+S+ZvUc91QW7VtexE5suuuQf1En9pH1npMEsa8
	 GYjt/ZH9QSrvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A35CD8CA4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 19:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178094667371.26934.7288624389283229060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6234856082813d8fd6b5989ecfc119f8f03d38bd3f2df6c898d19eb82d16b319
Date: Mon, 08 Jun 2026 19:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780946673
