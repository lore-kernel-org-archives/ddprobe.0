Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A3E139D
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745279994; cv=none; b=jLywE9FuTVtBk4WE2TBQYjqVnrGyt2flRZ25xwGygDGyaMC8MXaDQSWJ4rFNHKfOose3rKKdaXNDr9fatiYyiAF5B38vaLP84GQqZ+Zyesf9qSGkpPImzzNb2wFk2eqhshV3ZAsTc1aiVAmWOediDl2jIQrMpr4dIr0S7RaO2kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745279994; c=relaxed/simple;
	bh=6jR9dUyz/F0qdeG/3Hmr0Ar9/oE4Orh3+5coLhTUpco=;
	h=To:Subject:From:Message-Id:Date; b=kRjh5OTYqDvA4LLgu5yUieZiUvgLMLm+kU1uBylRzRW+h3bRQxPoShQxfYk5CFyir4zcks5t5w7HP9AEnJApqW31XxgpTdOWzeqGTZ6/3ae0BljNgxvJEv3XFYvKZKm9Akf1I0cU/7/SdaZct7xjagdO+/MAF/U1djkZLO3Jv2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNYaQu71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNYaQu71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15F1C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745279993;
	bh=6jR9dUyz/F0qdeG/3Hmr0Ar9/oE4Orh3+5coLhTUpco=;
	h=To:Subject:From:Date:From;
	b=ZNYaQu71iW1a0AKrge/NEgXngp+rTBg3zlnQ8gJePtvVoVje2AhclZcebQ+cBa19t
	 xWB2YLO2UZ5o8n0u/oAFtSNluX/cNNEVqsPWvhX+NWusw0RzvhXwdlqYYGar9vpsE5
	 6aa1Ytrgh9tNLfSfGQwmXFv3hpVUyj+EeWo6jgtuFEqbkGEVvDhDdSyprSDVVexIby
	 KuELIV9z75exBO4MtTLNGjU8vDl5iIQ0iSSrf34IRo6+ydFgFtYBEAoIIwVmlbS2+9
	 j8/Vs2FO648jlfL8eO/ib6FoLRNnuKoJ45Qw/RimFDUJeaW5Tu18O/HgzcpuPberdz
	 /r0alcWs9UMKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7D9C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174527999362.23684.5253626547970836053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ea64d5d693fbbcaa3e138370cf8385f257c8bd9f7177b2369a20a93a07449f6
Date: Mon, 21 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745279993
