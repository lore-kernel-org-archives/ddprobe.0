Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4378A30C14A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786548034; cv=none; b=WeXeNlbGQHdNQLqVLw7DFX8S1jLRf0SYe4mha8Re+c3olIbvoDbo7/24K2ZTfo8CA7+3DIFQ084Y+dKbeKhvmS+6W8k3EUuWrzULGgfX7nhmsy53c9E/K0RjNyau/aG6G8dMajdaLn/S19FTu1/pIwXe+SUDTPM4RfoYLcwTC9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786548034; c=relaxed/simple;
	bh=abt2WBhbXYyGQ4STDVxugfgPWC4Y3uSkAcyiQ9Jmq/U=;
	h=To:Subject:From:Message-Id:Date; b=AZ7+/m5mPEezxXi1YUv0AHHigOUYd2LItZxb2otcc1NrFB3kL2rGkeFBSJgvfCaRKtnP8fUH0jGaU0KwCXxt9V1/9xvMojzBriHpqU603z3N2I01xro9MZ0eiiSoV5QgC3K7brYlup+4qKulfaCf6VOPTEvrA86X+WC6zLi6Usw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ir3jvc43; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ir3jvc43"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26F5C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786548033;
	bh=abt2WBhbXYyGQ4STDVxugfgPWC4Y3uSkAcyiQ9Jmq/U=;
	h=To:Subject:From:Date:From;
	b=ir3jvc43Nwm2frL/7Oc1uYc+glazTBxzEO4MKeYM15u9fRYwE0/Ou/oVHi1LfYcky
	 /wRP6Q2ucv5hmoVg25Nf0c8CbdbttHaBH1F5tQYOJT8tmxZPE/gtEgncWe8jqYdhui
	 lgub6LIWWYHF32MQlHRGDOJPy1LwphM2NrHFU7NPnOWacWywGI8Bgn39emPtd6dPjY
	 ZBiYy9fX9EX/YsCjgkJCYDsUmobTkIik3q4HFm9JKRM8EF0BvRucJTTRz3uFLAOl3j
	 J+8vAvtpaHtDq0Tx5iOsZ1yA/Hk3DJYiJY23x8Ux3iaEnffPYHEIO1W0jiIbBkJ3mr
	 YJB4wyotbDASA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE38C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178654803369.24908.12879475869578974519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38e0d5330b796c7ae5b153272e3e8043abddb52ebd310c096f0bc9bbc1cbb250
Date: Wed, 12 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786548033
