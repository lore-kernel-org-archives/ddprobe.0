Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274EE1922F6
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759834794; cv=none; b=s7EoXNygcFLYtoiZ5MJ0T8ryzmKzxU8LfTHBoAQM2kUG5DnpqTIxECv0lJz8DNtr9Ts9OVWnnQrwrxdUFWidTL3tpQdv0JfUmmM8p1dpF2cVnuYiHfnjCeyrP7taNSn6Bm5Wu+HXI9cJsTpbEhz1v2yrqWOmkM5XBcACTGF7jss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759834794; c=relaxed/simple;
	bh=rmnQHAb5xKGphaO2CmRRW8FJ+yvxZdjt/yrutgEfrqA=;
	h=To:Subject:From:Message-Id:Date; b=PngRXgXyblR2LShX7qysOMkxaCQ63mzrIDWSDdw0Z/hGnSAj2Qc95T1RU4Sjv6v6U889zUVOUJwwzDoAvw4+6mY12OlsIlMmthSDQ9gXTCoQ/9+cDygVtdgJK2FxSHMzML8sCADstzOczKwdZYeQZ10LoT5Ai+ba8rLYDRUeNh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Viewzj0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Viewzj0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F87C4CEFE
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759834793;
	bh=rmnQHAb5xKGphaO2CmRRW8FJ+yvxZdjt/yrutgEfrqA=;
	h=To:Subject:From:Date:From;
	b=Viewzj0mo57FP13Oy1lHA69IL7ZcwnhEbzEjz8d6/suUGNgF9P/SLZyfHfQ80e2kp
	 P0iU3kB5nWTOw/2S81G4MUmVoqwlkLaUAMexys8du1QgcZPQDtffOqabyQen9MkAQb
	 2O7Rc9lVyaFzXkY59HBzjo2yN1iSFI/BraVarcm3A9fU+2T7mkUKlgkyHYZbctF80O
	 +/rwi1W7yrH49iklNLls0fLizeo+K2ErysR4SYUzIetDRXVF3GZ7w/HIwV3MBnAlre
	 2pLWu0s0dA8B970R+ad83ELdOYvjmukfgbmjJla5tKOV8Sk8SGzAoPlMCIdVkYknl7
	 XgZJ3F8I4TLHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924B4CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175983479359.705.12721114502213532201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34f5518edcbe3d64bd16365ec92df2b88fdf7eea8c7f907095b9605a202ad22
Date: Tue, 07 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759834793
