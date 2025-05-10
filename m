Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD3F223DC2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746884994; cv=none; b=C+VyL5ASuEnU2AYDLakXVUm1AkwodvUjAlf/y509Tqwcwy3gE+LCEpc99M9yoLmdaLEUVRF3yzJZRD6A9ma9ntpu5dAJu8kYm8oO0V79KS4maH5um+BN6okUP1jJu7kopvHuifJvBwUrrY7Jz3/zasTR01grp3NbFbwx9bxEhts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746884994; c=relaxed/simple;
	bh=Wo4ZtzMSm63MeNgG+Q+PhBXP5qaUxZtdCR9hsmZEHgs=;
	h=To:Subject:From:Message-Id:Date; b=eOeGYbq/P/EcIAkX13V5zPoOjo7xDIjOJadRMk6AnVoKwHavTLAQ3ILfUGJSxmpo0qHA3Isc3mH1WA74JKfp89IjDfynqIoLsHSdtjt/ydWysMFQvYa+cL2fdu/zTwo0lx5+iJxk5QayUZQL0lJI1LGbaach9KeI7phhSVs+in8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xa8aU0uM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xa8aU0uM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3901C4CEEE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746884993;
	bh=Wo4ZtzMSm63MeNgG+Q+PhBXP5qaUxZtdCR9hsmZEHgs=;
	h=To:Subject:From:Date:From;
	b=Xa8aU0uM9HGr0UQCDXCtU4BVDzAAZxXk24gAfDz4oix+3oz/TXCE72dMgyGN2kpqY
	 L1iLTbTu0HBZ4VIItJB0lmbXDLB/kDBWsO7CssvGMIeVb03ELCeZdgwPlenYsQ43qi
	 O0rVWt8Jaw+3zxriMbV68VChv0QwkooOMT2YPLy3Pg3h2Vj6kA7lu/Ln0AlcN6jPBx
	 w9kj+gIOaPhzejaQvuwTzRc9TdYVClK/b2RZVv7zzC282mRvehBoez3xZCTCOXgqcj
	 0TGTH8jBo0s4K/JBQJRCD18RLnnbr6UVu9ItrZfaENDwfpNuehUnHN/8FSqoGLmuiM
	 UViD3AmSl0/MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9504EC3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174688499358.12441.8980923913304018138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 438c500934ff6994b3559ed3e65bea8d3da252253b5208efc27ed2f9e9eb32f6
Date: Sat, 10 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746884993
