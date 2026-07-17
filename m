Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4770C21D3E8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 00:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784249914; cv=none; b=B54lVvreBrzUEZB9a7Fw6Nm/Cv/KoZ7/3zeU/dntWPIb11T/HIOkaWHmOFNTzdqhpDsTPWrplxIgyk7+wqVVBYFwG7AthbSdTQylrVirGtR3L3Ie4d28bWlBJDxtgrSOcs4DHlk2HbmaD5zvOzpT00bsb2hvdM0bCrarYvSv0Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784249914; c=relaxed/simple;
	bh=PPRSdAjBbo9dIVduEx2rWXuWa5UHiTRzeh/jxJVMnZU=;
	h=To:Subject:From:Message-Id:Date; b=rctCXrb4wCJdyFHOwEov3CJ496XR7Koqfz61bYzGkkkwGq1/0LpVZuaNB22mLdN0SSTxM8ckJyYa8/A0fjUFEZAfTg3qH6/O4B4sTMbcR4MKi4Ly1DSzOkiKMyN2NQSn01OA7ZlOqWtFivZTh2pGK3Q2WaPF4EDvR6omhoh2p30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DokzRY7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DokzRY7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B30C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784249913;
	bh=PPRSdAjBbo9dIVduEx2rWXuWa5UHiTRzeh/jxJVMnZU=;
	h=To:Subject:From:Date:From;
	b=DokzRY7uT2NaNqFca2fiCQG8fG3V00iFU7OngWMeS6Ko10CmJdS0h1Rww6edMVsHz
	 OuNOTDWeBQQ8NhyREl33MTEl3UqJGhqjc/VWh3GXMpnnbeMyBZ/+6R9vTccuMKTkDc
	 xZnruudVeDeJ/8wWST3jnV6ZfZAkPjVk+ZjrK9TgfvnVCNiQLN3S3iyHAv0ekwev+3
	 eZnBskcJv6eVIHcOrwRefqsBfJL8uDhxNkAy1pOezFmDBMzI6JWaj+IV+H9ZTjl8cl
	 U7wzxYX52qEunkyNDDX3t7HjYaDmcKPBi0cTT8OUB0eyBvJeqmL5hrwXsfFgw+sO23
	 86Z6nZJ2nIaDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5BCC44512
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178424991368.31830.4214931087093195437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4485ad030c9bf0aadf12d22e84a65409c7d4869230439df5e720d85b2276a8
Date: Fri, 17 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784249913
