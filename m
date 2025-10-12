Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BE034BA53
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760232594; cv=none; b=h+Ns8cJcDKnjMgh5IDnEQRG876Wq9s++NhE2+nsCR6oVHJsQ8W2rRW1vhWcsWtGK4HUl5dL38sHQkJTg9iZNlkdZQBDTLRakWLer5J71Stjt1973PUtcDSNp36Ojaqoqo5WNqYRi5BtprcUz6ZwHa/yZtm2TwGBheHCfbFRDLMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760232594; c=relaxed/simple;
	bh=lGcm6myhREptHP3WmSWR5Sl07ufhhj13zeA5q0kM/f8=;
	h=To:Subject:From:Message-Id:Date; b=DssMe4pEAyf2qwrheMG7RfqagB0nqPlZyTmOiFLjLP/rxlNMiDSvtTJ5gTBM/XHVSrhPacpepoQQMO8Z+WRcKTotA+UaFqmE4HsCrCmrnAlKsnE34/eLCrIgnnIea/Zht2HNbisU+gCx/eXoOlEozpjIupfhgGzJzhdjUVAgdGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WX3aFZJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WX3aFZJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB429C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760232593;
	bh=lGcm6myhREptHP3WmSWR5Sl07ufhhj13zeA5q0kM/f8=;
	h=To:Subject:From:Date:From;
	b=WX3aFZJCgj6Cxx718k2SBAnPRA0yTOouH+y6uE60Vg5fZ/rTs4LT/dKjqi/FJAqZa
	 iiMMesf+u3gSaZpM3A3k7T3wtIzPo0TyA3ConNcyAXjd3GUVoQ2fBDs4CxJ5RaghdO
	 GcEwE28wC3UD4r2zZDP1RsxHtzi3Tf1devMWiN+m7g20jTUHBZpLtbEU6YXEVhFXPE
	 LhsmagXeETIb7XMZ5AWM4g0yJWZN6mqM7eIDs+CyXaBS56agc+l94f/B3bb6FzmFWj
	 lSUorKsDrgdY/7RZydFBW7fy21574Nmh4BBmiiG3SnHsnk30yOvsH/pVM4Z1vV+/26
	 zhYTvltaxVS2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927A6CCA476
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176023259358.31363.9509912617178109567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b1ca9d6d6c4c99307305f6a818286f33d0cecbc9a8dbe99a3716ffd4b98387
Date: Sun, 12 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760232593
