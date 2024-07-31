Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCBF1BC40
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722406554; cv=none; b=oBEhXHHT8omkvtc0KSdn9KNRE9oCDIAfbXNHO2iVIdOsp6ET14uEeZ5EyZapqtQP4KRmaKWHFrlk9wnxNojNNqrgIP8HJkrVGZJ+9Jat09SD4ZGVwRaOtCOU+aQZ+o42JlxrwB9q4UKJURFzedmqkfGyK7GfE3SZq4tSBQ0M6aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722406554; c=relaxed/simple;
	bh=4jqdgBVzEsuR3KzorlnXtJErw6H30wmIqJtWPhfnIzU=;
	h=To:Subject:From:Message-Id:Date; b=tyHyWOLp2aYTXNEWR+f1y9SOPQYvctEfxOZRH5NvZehRmWrmZF+s7T915fP5gwm0PAFlJYnCXyR33v77ov0Ut+oApIDI+4St7Uu5W7cdq6DyGHcAt096PptFTP3BDAq6Bw9UVxxlrOnj1DyAEMAyWSWN2nNgFNZwKv7CWrjZ3T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyKWWdcj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyKWWdcj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74B5C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722406553;
	bh=4jqdgBVzEsuR3KzorlnXtJErw6H30wmIqJtWPhfnIzU=;
	h=To:Subject:From:Date:From;
	b=UyKWWdcjJu2Y68inpmSuM55sfdwDI6R2L2QpLUA3rhs/ONqxZgWvtOPWv1wIzvGE0
	 LG178w0dpeWstn6RadSJK32wHJ3HKtlrT8he7IMMS8jkty5BFk+qAX2tM3i4qduJgw
	 wCH6UCHEHBgydp/lSRf9FIje/a3Vs3fZloOhFogPJWk2BTOclLeP/esS7anM2zIhML
	 jeDcjjOy32htUdqdfhh57xfjueprCIHgK9TdmR8y42I86PKnyIheuTwhQ3T7sgDKov
	 5q1uf2FIT9vC4t888+3lf8Gpo03vlWi0qwgFTNq3SsIiGMb45Td+8ZdZoWtQp61JVz
	 0gsrDQVEZYEpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B031C3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172240655362.32569.16806829932145323860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b964c5e732ca8bd6bbf7c3ba95f0e04ded334d837d0684f025f9d96e6356550
Date: Wed, 31 Jul 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722406553
