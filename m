Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454AA944F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 08:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712995763; cv=none; b=tZKmSJDzTwCZcMtGLUgss6c84VXmfDcgAscu48XswMBxxmNS7N/qYUTZhgJoy6L+pzmnRN40pbI8bumUKZcclb3C1lB2L7Xj5tm10AvakpLgO9x7VEDYGvRpyyPDEr5hHTG9MXBZf6QbuGJXPBO1SpTSmyNTft1o2/PlpmC9TqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712995763; c=relaxed/simple;
	bh=+rBmYWEfDl0+PC4YT5ksEgG3Ox04zSNeWLuXDqIejyA=;
	h=To:Subject:From:Message-Id:Date; b=uedZzURJJD5vrNw7xeDd/xlCORaGRl34kwTbFudmsEHEsgw+ULmcqSdw1dvg5HJzomtO/eT5h8PLGkWQk07WiWe9aYAwqjpsI31LPYkIf2leBEDgfmE2kbEydmC14M4h45cEOicwO1pOfC66qdpRKmJ/9nAva7ns2u7jbpySsBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPY6zdBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPY6zdBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59F3C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 08:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712995762;
	bh=+rBmYWEfDl0+PC4YT5ksEgG3Ox04zSNeWLuXDqIejyA=;
	h=To:Subject:From:Date:From;
	b=JPY6zdBaa7LCohR7UCsOmIF+lOInfENgZUeb+lB5a0ektnWao07MgbxtvJ7OFdQUI
	 qRtxoAi4f4WdTAOmiTd5iJd9dM4H9eAtZBOjUyOTX/CmA72tpHNUljr8YyXiUI6FjN
	 mokMUfsdc+3Ui0f8GaatExL76td2LMC2yJ9MbMDSHMWUj2NHmgDS+p+aiGfzg9k114
	 KYlujoVgmiSOCo/XQWmnCnX+2KJiHzuDvoEXhpH2mT6MsXL16Rk1NILhlECiPTOHed
	 y4G5OuyrCYbX63ef7ptr1DxQDCzE1xfWY0mviINJwwt3jv7yFaDa0uaB9ZXJxwDyZo
	 zOoGulYDQKQ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEAFC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 08:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171299576276.25330.5188425659377433255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d3ff0c4ffda8197bf4e7dd25dda80a08d9033f15a4f4b6649262d58904d3c32
Date: Sat, 13 Apr 2024 08:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712995762
