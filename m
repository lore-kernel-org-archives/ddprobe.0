Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4944F2572
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 23:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713655823; cv=none; b=gOKMViRElpDsLBMaA3tO6DRhnIfWFKJ6QneZLVumNlrXyNXRU323TxlgF3gwdoLirPixecPxD8ofaVSQ/zGoz6VZjMRt4AtJRwrbi3pFFvY9FW19hapgFnyynioLX6duztF9oQ+ExDiPCCNcVVQs9HshagjrA8CZcmNp51Qh3BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713655823; c=relaxed/simple;
	bh=DexNQY9Y4OidCP0Sxr3k+MFp2Ma+wmEZHgbkLTgug9M=;
	h=To:Subject:From:Message-Id:Date; b=p3SOwl4AyfSnN8v3j7kKMEte8q+kDJmq1GHHZVKPgE088edaeGT/7q/jwzM+OxMOzrfSaUO3RSWCTqgUsE8GSLRIaHvNyGCl7W0/76hFyzHkw1tdZFvEJoDkWzXsQg5vL7QKr96OuY2eiO6ymcJzew+32UC3qGbllAkSGxJUSvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4r0lBHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4r0lBHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F78C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 23:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713655822;
	bh=DexNQY9Y4OidCP0Sxr3k+MFp2Ma+wmEZHgbkLTgug9M=;
	h=To:Subject:From:Date:From;
	b=c4r0lBHJscC1h8iE7ssVNKpdZgJyK+Wbk6WUU6JTbSHLgSSExpSGv+7Drxx1BKsQc
	 NeTgcPKEud+bljZrXBXtfk8LNfr6EZi8yGMr2/DFEg+Lyt6hOWYCqk+vZqyTRddII6
	 9u1bfcXRE5/0125rDZxibu8zEgZmOWF4yR7Mj0HL1d5wdbLZlqukqZrArIdJeP6m6S
	 xSuDta3h8JM0tpBO9W6ya5KolJcc8/AkLzIYd7BvB7wQIeHP3Rp1Rz1NJimOMO4jaa
	 xoL26Vel+CRfloP6G1IvXQ6Fn7Kf+x5Zhrdl3VtMuzQJWnoLXsXUzerrd2fp2I5J6A
	 CghkIbNz4JmJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC8BC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 23:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171365582277.25361.1617076485440970889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b99808eebe58fb3ba3f39adb7356134b90968f53182cda3a14698795be084d8c
Date: Sat, 20 Apr 2024 23:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713655822
