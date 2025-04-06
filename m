Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419842AEF5
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743913794; cv=none; b=cpDjWB3kWpCcJAAr6LsyAF/3BendUDalLdWWL+TQm8JQJPJx8EE4KhlGX4m0rtUmgPhtnVJff6xVZR8zRaTv6q8MOg/9pkratRSaUzQ1wbIWy13ilfvIzMobK0dSrJA0mt7TQqC4WqIN2MYanAskMqbXiR3aONcazCn397Ms4TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743913794; c=relaxed/simple;
	bh=AengN5lYouNb+/nfPCqNKlN0TvFPx05mGKYjYy9gWh4=;
	h=To:Subject:From:Message-Id:Date; b=SKO74UBJQSEFDuWUkq54FHkE6alHFGCZECoLRNnyyhoqQvRFUchXH73y7i3ahOJgillIY02ClsvNGSPJzeG+mNP2iPv632q+SgxrPr8OysxQlPBgxMFVIkVi0Mc1qu+YqXuapY89v91tUXaBbPxwn79A6CizWtxSw7Dkn7dYcGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sN+kttil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sN+kttil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B453CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743913793;
	bh=AengN5lYouNb+/nfPCqNKlN0TvFPx05mGKYjYy9gWh4=;
	h=To:Subject:From:Date:From;
	b=sN+kttil8c/zxuEEOJydaasZlCo3q9NEl8xlyKHjUSSMzPe+FD9Vc/jsHjp8T3Ck+
	 F0/pon9PoijDriLX/AEcmpmNO2UGERsmlJ8yKRq+wrn+a/kdqJ3zO0CKWIqyGnNwfF
	 Zst53b8Ovb5VXJzCFRZ3HDZcZ5/0theMU7cZoiS6ugciuPRlm4nu3BdeQRApIXWUAv
	 sgF9TpxbzBTqFJ5AALv+v0459CdGx8/biv0g7F3D3eFcHSn81l4A4/PUtKhz3f+Voh
	 Z3ojKVnCS2iwLO8jDS23pC7cIlv87ehCsiky2BVcMLywsNEQPCslu+oRC30sAzJJVg
	 lxGaBtlK/Qtng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D181C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174391379360.15965.4619129683359211700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c350914b4bedb27c8fbed2c91ebf1a0b4dd4fb4394fd37ed44e8b82a246a1eb5
Date: Sun, 06 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743913793
