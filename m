Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CA42DC788
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757630994; cv=none; b=ILjWKwlQAYP2a1YaAipJ13u05l9sXuPYLNXwENCZmOe1g3W2/mzrbytFmtwyimdTG66V2myjpMX98VEZmPbmgNzXdH6hkAc19ibwzL5VnLg8XGcyoZf0kYFtZSPYd+j3c2q5i5fZWkx4LlLkFbzQcV57a23sFeWUEnYmJ6qErbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757630994; c=relaxed/simple;
	bh=OEUkbQbOa4RJ9WOO9lOiHJ4W158wVpLvcxd2H5N3I8I=;
	h=To:Subject:From:Message-Id:Date; b=si2USaX7RhCXpGWKGoce4DnvFdM+QRzdb2SaVTIbm3Yd9sVSWlxZTxpRNnBLpvk1uT6XN0CQ+9hd4x8lzs5K+Vj/tsC1Duduk2/bj657Bc24A6rFl/TQOsKKAtl293cMJCGG29xa7s/T2ic3rSyquTD4lmNtKuqjKHW6pb4CLdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDCFYGIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDCFYGIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93F3C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757630993;
	bh=OEUkbQbOa4RJ9WOO9lOiHJ4W158wVpLvcxd2H5N3I8I=;
	h=To:Subject:From:Date:From;
	b=kDCFYGIcMTq+XUXfrsz68Z2QIrDWA3kN42Yi7Ou7SRWyfkQRDgQ78lOfcI/8bUfsA
	 hnM2PAXOU9hi3/BeXYeD1PfdfMvV0h3ZQx0qofQk0FdN1K3w5UVeid9TyuBAuegyD9
	 Hm5IMaCtia5tjCqwJySDNb7VdR3PVpKuEa21VyJu6hZQ+fKrTO5ULCVmOkixnQWtL8
	 PlTVHcanGh5DqYwkZykaBpmj71kPEx32c8mt/Bwx9MQ/Iztham6SwFD5cwpyX8/DsH
	 TyMHTPLQaXL8L7218cVTsjsmAioTdpJ2NSzXDYWP4viYvMITjWpfPj/S3gNJbUr8qQ
	 3pwdywqv7vU5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965D1CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175763099358.15133.17914926911687942048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c04a77a7e8bc374af4e34d50f35f6d3ad5cfce80f5e4578a4e673c55315e012f
Date: Thu, 11 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757630993
