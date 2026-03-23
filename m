Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BB3384220
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774255494; cv=none; b=qJjF0rL/JAErd9k829SI0ia4yEsIOHL0ziz2ubE1P4pCmfNRk58hma/HbpN5HLtmuurJbsFyK9DcwxgOIqloWTJZ4nSuelTmUuS076VBi/SoQ+8ueczNeDo1JWANnAfqLv3iUNSaT9Wl3IZ07Jfj9Q9wJTMdANP7Bucii4n5LhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774255494; c=relaxed/simple;
	bh=NtrBQKUjoEjKssFr+Rgin9vazCcxhuQka6lAlB/dQJE=;
	h=To:Subject:From:Message-Id:Date; b=X2WBEn07hIdQRO+1fmFNPK3TyyiMUogD6HiswtquUyyEmMaZcBC6r3AmkMx3jM/Vj2U0ZXzVbb5kBn8xQWm/TTlyhQBoAkYysxAJgG6hoEfJSqQsqoDJyjzb5gjsoUjG4/Ohnraro8Xm+7XQCii4HN0xLMi39CtVS6r1Cpwrqpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nz7Z6cXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nz7Z6cXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FA0C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774255493;
	bh=NtrBQKUjoEjKssFr+Rgin9vazCcxhuQka6lAlB/dQJE=;
	h=To:Subject:From:Date:From;
	b=nz7Z6cXF70u727gFSrt2Jo/QdH4aSxX8N5Iya7aZ2j6roq9AHJX6swYGq7DBHXVWP
	 Oqx/2Hf54kMhfL0fZw2a7pYS5q2+R4iqLG+KXF1ZELOK7pr1Y4CZbXndWOu7BgZdNU
	 irT71ZczEva4bs2GVQ9fVpmYkAArngnoKRFq+D7v5PihpmIkcIb0KJG/WcLJIOOV0N
	 SA4XGvLRWTiNK/hIfLQnVHEa+7uIMbL5gaupiEc9y78Z/skfQzRZVtaSzm11PnEXg0
	 dpKr93f/LQY3y+EcRH79Pb4RvupjwbM7hSlefsPhSqahMaGXvjC88ys8KBUcssWHoG
	 87PE9iINNAkXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90991EC01A2
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177425549358.30660.3112937008718281903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e13337602ac24b6837cf2693bf6a0ff9e2984de619de95efc95693ca0d9c7b
Date: Mon, 23 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774255493
