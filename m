Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7D11FDD
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758696594; cv=none; b=Oam0dkn8QQnflfK/ZG+poJTF2FCVuzVMa5U7gFqqPcbSkg1S9Bn+CFj2mJ5pHntogsQt9gBNyNLFks+ufx/OFWwoP7gapVOk13REGTr7b8Vq1K/wOyWYQVZBnYjYCFI2aqAOIQO9aCKbtySezv3TiNutFZU+Gpd/zzBiX49ljE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758696594; c=relaxed/simple;
	bh=0117K5LhZXNqHRHwaHhkh38NsOiWXvftrmOPAwmt3fI=;
	h=To:Subject:From:Message-Id:Date; b=u89PFScoJ8sLXuZIp53A2jb+s9XkwyE8gfHOtYWEB4ODp05lF7HRjqTjh/WHQeWWrEYcADJuI8PFaA6ck+GLhJBabP2tsRRxHvmZ0okql5KPUxzrC6KZJRkugj2+7hk7DSUPAjhyQNquIT8t5Kq782JDs0OegpsITMBNtxaj6ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhvj8UZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhvj8UZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1895C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758696593;
	bh=0117K5LhZXNqHRHwaHhkh38NsOiWXvftrmOPAwmt3fI=;
	h=To:Subject:From:Date:From;
	b=mhvj8UZ1bo0LbkMkred1wa+vxiWM5B/3TAZZswaA8KqEw3Es350IAISJxem49qNHZ
	 j/dpxdPpBV/mjCQQdeoGGFsAt/f5sKbUf9j5/NkiR8SnW/xcYWHEVzx/1bpudXp6F+
	 0XLv0t3zKm0A8d4hU5R5ICUmCu+n34V2/mQ47/19VHqrNjauyM1d/r9XAqFQL97uif
	 AUaIe0/aqi+tYNACc/a6ebQ5FfvoIVeQnDkbkj1PbV1tmTynaGacg5uq4YyHf3GF0S
	 OA2FvlWjeMs93CxFdZyvHEUP1RXVXtqdAW2mbTZqOinna0yVP6dnnmQTKiju3dQFMP
	 WTIayGsTs1/Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB96CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175869659357.16068.6912858270167230655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e2ca60ccf4aca9648b54fd12694761026b67a6a5df2d7e47390167f6a903500
Date: Wed, 24 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758696593
