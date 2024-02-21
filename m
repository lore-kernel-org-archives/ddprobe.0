Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E077079DD6
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708543097; cv=none; b=Kbvl330TnETMTCY0O+aJJWP16tsxWWTR43RluuLh0qqvKDaOWTMkxSijsNw8CWEIks8V2H13zcBrdhmOJw8r54mNb1zYER6qKt8oVQdCVGVm0h6w0MUrq9D0UxNYqSOdjgJim9UXUgTaQsgiXawukbyp4IBvmct6WCf9NbelBJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708543097; c=relaxed/simple;
	bh=Omo5fF9wmkfos+FWDmM7Nr5dNdqf35mQ8qF17zEB6Zc=;
	h=To:Subject:From:Message-Id:Date; b=Lz08JSLRBLlDPkBgZs7bPQtOVbp6W8nJAhlfxCD0Y6T3RW6GtOcU4S/UTKGDzvlvOOTgNZA6nekctO3poXlG5nC1PXNJE4D2U9rUbaUA8CSllIBLmDtXOUrzd1SgqqXYb+lv57T4bUmTHSv8Y3iAHJlmhaQu3DHejWzNszQDNd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CeMr2hbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CeMr2hbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79020C433F1
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708543096;
	bh=Omo5fF9wmkfos+FWDmM7Nr5dNdqf35mQ8qF17zEB6Zc=;
	h=To:Subject:From:Date:From;
	b=CeMr2hbURZxf1uE3FIoWfWyGU6EjLP+t7ezYdp/Rs8GNUM0e+vCmtItQxeNraHbz7
	 PDQhm6Ymx6Qv8mYGmvpxCNBO9sT5iwu+cU466+K4eH3dTLevApMK0gM8bn+VnB2Wt1
	 TEB5U6/UwpsTkiroSKNhpH7nAJknsGWdaB2JeoRDTdWK23FV7kmav72CW49ERCooKx
	 uHHKy7Gl8CWZGaeDePT1fhkn/oq4EEeGqkN13eQE6vdohz+0D1dhpx9EO1Iy9XJaPq
	 FzN1yVBYrV3qV642AbWRC7tw1tN/soZ4iW4I5BTQv8o8PHOe3ILentuJ1n8MkVcXPe
	 pDgkdZPQ9hK4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CEBAC48BEB
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170854309637.5069.4629608633241362882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e38506bbd0e4cb8f16457149d512e79a1eb4fdb1b9f8fab3f0b7272df619ca98
Date: Wed, 21 Feb 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708543096
