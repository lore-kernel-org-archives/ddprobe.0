Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0BE1E7C23
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744234195; cv=none; b=L45sVLebQlUlE+qVr/2q1Ye2IomiBdHO2365EK0dBFXgE4eRpqvgA93ysGI9RC/GEMMREGWNfYRydnwe0r8ApalOKgQ77+bCm1OxzsCaW3S7R3i8IJW2vKzBbe71BJluDgXJIrWsLXKtkXPLh0ApFFNSuz0ExFhwO5v/UHo9nZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744234195; c=relaxed/simple;
	bh=U4/rbomKwGYe5YBOMjcQE3pe8k7g8pdv48efOVCNAZc=;
	h=To:Subject:From:Message-Id:Date; b=aW6xln7QWqWPGJ2RI0JwcIfhrr3AVrKgVl2UpH/H+7vtW08Da/5k8fYKx95ua0n/wmplNQDsxsMSt5CBmFUHNsqqwcpqWjDcIReI2+aCtx+19hmcD2U1V0gDwJzPBNqhZzuS71NTFl+VbpEfkB+PjNq0ItCLC63QuN8boV4T7Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nu8KC07f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nu8KC07f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF111C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744234193;
	bh=U4/rbomKwGYe5YBOMjcQE3pe8k7g8pdv48efOVCNAZc=;
	h=To:Subject:From:Date:From;
	b=nu8KC07fOfxKGfeZCrDdxxuLhgn//O3pxlG2PMz4mE+SWqrmEV8+Yubv6fg+r9tSO
	 trIF7echAXtGLQvGgUTDHH8Wb6wqhFanvdCXQjhd3aedMGrV2ZDpFO9fWQwV681B+f
	 otrh4OV3UmsE1Rqe2JMKAO2u38/OueDIpakwPGQUZOTkhn8F+jAAlwpXU9PUJ5LntF
	 c1dHu14tvTlnPAbSvkAAe7NecaPHTZ0TwPAxZ091TgzlFbWF0XizEhTfDo5y9qA6SW
	 9azlf/Kr61MYnWlWeuMjnC4m6UWqxqfe7bR7/uaYAYRgsdz6UnURGqbzk4JnCTwRQU
	 3sH5EWKF529uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9887CC369A2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174423419361.13500.17194919441864521184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95669c3b52989a14e613f434bb38d015fd6d27eccf7db40c9dd6c7fe76e01c04
Date: Wed, 09 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744234193
