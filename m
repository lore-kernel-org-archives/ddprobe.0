Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD1618027
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735700154; cv=none; b=V8xurm07ocfC/eu6WqEBrePGyIOMtXkggz8MhNiJ9SOeZLYSU7qK5NDrqkIiY0XpAE3vVpg9pFhtvTH3C19odAhAk//1HEzeev2Mv+5Fk7+16Oah/tEGUsjegY3fddoVBpdQ22tPBePcdjxKncckIVLNOc/w2UFJUeO0iXbW900=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735700154; c=relaxed/simple;
	bh=dfOAN5HzMGq7pcvKwVbuVuB4jdLJa7vMLOtS4Y+PNEA=;
	h=To:Subject:From:Message-Id:Date; b=Hg19TDkx+LJ99vyw+9y0JYf3faxT8DUIbeOHRnMwfpz8VKXV+r3fndCulf/Pbm/GuEQZpacCGO9jDkIT1DdSOYDRyF9lwoK6O9QpbIOK5BImGZEqZUnNeGvisyHBFrR0avFvcixuM4549tMk1Ovk8Wwp9T0uiObUXHE1PU1UxyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPUpU/jz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPUpU/jz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC53C4CED2
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735700153;
	bh=dfOAN5HzMGq7pcvKwVbuVuB4jdLJa7vMLOtS4Y+PNEA=;
	h=To:Subject:From:Date:From;
	b=CPUpU/jzhZZ81fqDhCOVR99CZQYM9LUGDZc0t4Ox2LZTKxcFDYAofg0jx14bZB9eX
	 5ucMzb6783iMQJ+ES5+CulNhsJBm1cGMy0hh+IkPjYm5DWoRtLlJs5cWK+rC1CsJIv
	 OpCOwh88OENoAPWu3VzwSTQXoTuqd+H593LJgW6R7VhxYimbwhWvQyGgpC1+UEIL6M
	 7LCXIQpg0wKXnbx6juxbUNJBnjEYB76Jn73g9mz2ur7P7g48zNqvmTRTUz+Hz3vHuy
	 iB0IDvhyCzzLQ+jSM/e9PeIM1JbAg+cIbl7Cj01JKJwqPjjMDI1cAzQfu7RI613K4F
	 9FZrktRE/MTOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EEAE77188
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173570015359.27581.15836993823072611164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe8d2fc069dd2ec5f1a4a3a924689ba521e9a9db61e172def378961163c4f5ff
Date: Wed, 01 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735700153
