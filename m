Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7B55786E
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 05:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713332963; cv=none; b=dfsul5l6sDL8pjq2JKSoGmhBEm/uiGfCHtAFf1cvI4RN6Sy7I1unI5ad9qE24jarvTcRWExngwQl/X487b8my2N394EE/q0695Xfj7/v3oh2UcUzBgSK8iRXBEZ9wEJwv1a6IR4TaZnLuaxQhsQnlxeIjjniGthWG+Vl/nKFp6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713332963; c=relaxed/simple;
	bh=wdykRpQHhWxZ3z2oK7TuBxbyrWs+OLeftvdhatAduQ0=;
	h=To:Subject:From:Message-Id:Date; b=Tl0MPISjmpItPa0YJWnN21hVSBWeJ09GzIdSycC5IQVmLrTZkGlUMN/HEyNb4Uinu340j/nyLrfNAr3wGInNZ7+9tA9dZ6hbgb0pQtJ7hoxL+wal/lwMxKMIIG5GgOVDMHlboBf8bDUQ4GrmTsdNN0ag9yVHwwNNeDFR8XA+3fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/LUNJzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/LUNJzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC62C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 05:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713332962;
	bh=wdykRpQHhWxZ3z2oK7TuBxbyrWs+OLeftvdhatAduQ0=;
	h=To:Subject:From:Date:From;
	b=Q/LUNJzLjd5sR8rOlI/KDrd194CQ2H+R944qLeHlHQBB0UQla0zxN8+79cTinLfK+
	 sxd28J0WVwZzdkDfO4cftOoXWI9dGI2zUYC43GIDmib/QPw9R1zYQ4G5ks+YoegFI+
	 vOlqg6BZwGODfNXG8/3zEBkLaouL6WEVvdWa5nZdtj/Oi0UJpjzITrre0xS9cX/Iny
	 gKbSLFiIV4yyPLy+34NzEvchgOeUyJuRpz0RsQzyLz0q15l170MGOCtfIm5AMNTnDs
	 HXkdxmAXewlZs0WMxNzV4E79ZgEvl29H3qrSjBeSUSKfL4TgXEnV7PBAYRSC61dP+/
	 XkylN0PAQO35w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C1FC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 05:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171333296277.6563.16960095186310412580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19fa5b0f3166900415aad9c28cbb1d5112441b34abb14be550fba84adaf5115a
Date: Wed, 17 Apr 2024 05:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713332962
