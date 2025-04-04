Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4649519E7F9
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743775194; cv=none; b=qBJ6Zy4zv6kXVubit2G329kp5iwC30RnDv37i8XstteSwdbu+5M73TxrMfEpwrK/pqvE9hJgqwCWul9iLfjmr8FAiUr5/yf//dYn+/Jj/91JJCpKehWhjCrPx1R7PhxK/kC1UvH4ppRoaxfo9PvQznOo2uwqWm6BNUv/81PkjRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743775194; c=relaxed/simple;
	bh=sCDnxQQkmBkAZveqfBV4XBURsI9ssv0QI9Ol7kFk1io=;
	h=To:Subject:From:Message-Id:Date; b=dtEePiGXwji0YZMJx7F9Bs3Kydb4ZKuNihkpWIDbZduSeWWCdIbiVkzLxVT2/WquUFIxdreeg/4qaekEYdA2euR2SOrlLejlIu9pEtcq5clrLSvfKtViq6JlqEYbToR+GbqfX4grGBGgbG1UMHW9nJ1b65VzZc44Y1GnPPMkKVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0Pmm2sy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0Pmm2sy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41A7C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743775193;
	bh=sCDnxQQkmBkAZveqfBV4XBURsI9ssv0QI9Ol7kFk1io=;
	h=To:Subject:From:Date:From;
	b=M0Pmm2syR/j3NiLFcE+fsLrNNtO/7nDouJCGcV36IHowE1oXrGr19PBaMfwH3JlC6
	 1diJm4+Uvy8+W8d/MWiaSJasMqsxnLMERyEksopqemAs/JR7+FR3q9Y/TuU6LQ362H
	 om31vulRsac7QILg6PbkcGHQ0xquSWNf6o7YySP2DUAv4McbJtc2M178dBWO7QNieu
	 3D9EECDfBMtGW81bS9hEJofP/U1ZJSPmMurVM2mwaWriyZE37JRV7WAnSvd+z7nmXF
	 6xC6qtj3he4ocSHEtCr21UEgkDc1NKQ57i7jsLHoRLHgV2qFhiJeE8ZY8MTs3ft/ht
	 ejvfiyZmAN2aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932DDC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174377519359.1825.14880152281828401838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dce0c7277d33c5352378571134f8dc4ccdcc2a74c55ef4bd4daa64065af2075
Date: Fri, 04 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743775193
