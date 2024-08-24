Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE268BEC
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724461554; cv=none; b=ndnu6sNnR5dh30PqwEGL05kEICt5Z71MXRqxnqJtDR8aBH90C/EYSt1Vv4d1wso9JRou1k2uc+fM+7GFf1TbpyqvkvMvaLOY+vSxrhiepecVRxuMykS77T8nmw5BU4egAJiZC3OIrz11WqLwYZGyaf5o2eAR3ih09f3Q62EFcGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724461554; c=relaxed/simple;
	bh=2iBZaEpYyrwOAyF2Hbng8apg/RyU3zfG80MPJDFlEng=;
	h=To:Subject:From:Message-Id:Date; b=QW1H5E0elSAczlJbWInVppRG5yYsPuK0sL9FaW5yUc1T2tVTWHwKbwUtKKZCgVZV+CZgUDmf+pygF6aeDvqonyByHjLIzaVB5fLfx54eS/UnHfiuFdoY937xqpO4W9H3CrQvplkumq5HxUt2RLjtvlyfTz5OWXhA8vmOejSnkD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBd1iSM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBd1iSM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C7FC32786
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724461553;
	bh=2iBZaEpYyrwOAyF2Hbng8apg/RyU3zfG80MPJDFlEng=;
	h=To:Subject:From:Date:From;
	b=FBd1iSM+aZVKrl736cVCYzuFejSX8S3ljSdKsc9blruuFEAjLInxRoHS3T5xKE5Yc
	 oshI3qmRCny5my3SFGPYH0jywtyL8yH2trIGGJ1eTRVqscbXUIySIbQEQFIvf7nID8
	 3JPzSzQZI9i6NOGQGNIt0psJUVYN5DyMhSBw1XVD6p52B/1gVVlw/sy1YBBW9AgsFX
	 pQp2BXsby0RTLgesMmxvuw/CVtFuEGM1c4GX7n9QhPZfF88YjWsPUZwBzeviQQ/F66
	 Y0Lu1W7Iu81uwt5iHgwkm6sKYKMKDwGgd6ibapAF+vU7U93fcsjbeuQx5l3H4fEBWx
	 YUkf8VmoMR3tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92757C5321D
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172446155359.17885.18190022864384191486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a34682eff2af13404f5dc38cc17e4b0456f733d8345b8eef720898961aaa541
Date: Sat, 24 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724461553
