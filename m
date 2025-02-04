Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B9520A5DA
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738700754; cv=none; b=EMTmPcfY+lErOPT8pZHjjsL5A/39t1knv/LYFJHrBKzYOEaiK1EFVhCA6ULY/NbvnZoEpGazt1o2RIRWRkZNq/bzrNzM+i/4FFEHXFyHPKWMNULHMv7mD7pe4REbvd3jfFtdWOWK3zcipRnLYJA2QewbQE/sl2St4pBa9yd+dxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738700754; c=relaxed/simple;
	bh=ZZJsXcHaBVU0hcCCV4gu5B+jw4ymPY7Vt9nSl0Fqbcc=;
	h=To:Subject:From:Message-Id:Date; b=KSJbFV07Q9p6o6zdeOwlgCbM7p0YFZTiQ0Hd4f+jgdzRcgfBjoUclcvGkxrAKktdAbsulqhC7JLnCPrbp5SbLCXGRZuyp9v4li4li9r3n3DkOdD8VvfwOQRVrHwbgVB/QCxJdzX+YwUX/J5u8llpRszaeR/0O1zq3C+Tb3Oc8OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyC1UZxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyC1UZxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB04C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738700753;
	bh=ZZJsXcHaBVU0hcCCV4gu5B+jw4ymPY7Vt9nSl0Fqbcc=;
	h=To:Subject:From:Date:From;
	b=pyC1UZxNUvU8ockrIlSOaPur2Dwm9gR+pFMD/GkygFcvzC1Z+8t8Tn8B+cGAKa1KQ
	 phdO+pFI9zybNU756woSXlgDw+WeF+0HsXX2pGZOPoiHsgB8QLzxKlot3PhSSj+PpM
	 qssIWR0xEYqw9xANo0IV1qGKWed+oslyL8ENV4VVHeTHwGS8qMESxgFI8tXaER6sXg
	 Jba+eDtlYuCyXeaoiyfe2Zs0VbFcmJTOTsOwnAsIQCJYSTdmatqSirDMu39AOaHRNd
	 7NiHUWXGHgHD/SQKkw5GjE5UkPqODiXUiqm7RCCGH3csR3iOr0Ta2eVhyitgv1tIoM
	 pJkkzmtjmCz1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BC5C02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173870075360.24180.9398953756841289441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff193a4c65e402309e62c146bf424b783bd05ac2e789d5da7a55d5fc9f4ffb1a
Date: Tue, 04 Feb 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738700753
