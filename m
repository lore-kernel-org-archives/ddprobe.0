Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C7810E3
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711072097; cv=none; b=MSu+4y2Tp6fPEDx67rIU4+RTif4oDOgxXb6f72JCPG7SWgYzoLMhZ9qU44nqS/P4sTYpRxJck3uGYGGka5+Oa185sx9fKnPgLy16/D7iH5qX9DkxEfkhFj04sEi/NX5yMcStXqrFkhDWEx9H9gZ3D5H8Tc7PN+5ucQjpaOJxgNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711072097; c=relaxed/simple;
	bh=DPl3XpkQ1zd4TbswvLD4jOgCLQrV1/KR7L72FX76kQo=;
	h=To:Subject:From:Message-Id:Date; b=VugpQjvZ9zy+8qjAyzDI9iMek4vFdAegHVILZnog/Ey/Mys1L+nECWDgPvTBNHpderuGBYvKy8Mf5pqNdhIaIOLGjbmfqZ133zRezpHiJsG72DAyTzN5dIXvrHeiwP1vusqUL4cdyPrFzji99Bc4nCTFcR1oy8rkIix9CNVeJkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qREKkYhB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qREKkYhB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE4FC433F1
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711072096;
	bh=DPl3XpkQ1zd4TbswvLD4jOgCLQrV1/KR7L72FX76kQo=;
	h=To:Subject:From:Date:From;
	b=qREKkYhBO8LSLWEGwvxA+uUWTaT8iw+uOYXYcGt55QJJ7uEAo5Paqpr6BstsCR/KK
	 6t9BAtR6y21ctPGxMIF2lWBlHbiLJQULByLXJzsP4EL10N4na51K38p9rNiEIHBFjN
	 pzehiIiUqWlbFetO4xoqRbIw6xj6e5UeI7BmDnYvnNfon2y736jc1bDwcsKbiwYynK
	 p9bhPd7O+M+IK3ORJFu/e1GWIrxaVyXNyqXDVjSbkM9EL0hGMhnTVu6eryewcTDBv8
	 frdMKXXBzuvJyj9wonYitYjkU4hFHEFiWFOtT/Hh9i4eilsOEgiv9JkpUZjqlkjrnc
	 38315DKaPhQbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68BE6C47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171107209642.26892.3352045311721062278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30462a8675d0a04b7ceb3a80ea3fffd769b2a7568c62ff2c5a940381b401ae23
Date: Fri, 22 Mar 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711072096
