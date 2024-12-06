Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FB4154449
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733510754; cv=none; b=ScRHd8QvSQq3ZjhefMM6dn0ohxQo+t/ty2Q0zaBtdbiBg15FXaGQL9Vwz9Jjobcmcu/lkCNxMf7tRPXc75cxyg6NtIa1zLweAc4JvVEqbCIK7Flh/zXZFoVSYZ/bHnK1UTdqXkNxlKSFpsxYZmi4fHLvNvPjGnuOYlHIaKp8Q5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733510754; c=relaxed/simple;
	bh=TmkN2OrOe4pRIu2lFfs5aPNwSM3XLRnCGezCGG7xmiE=;
	h=To:Subject:From:Message-Id:Date; b=X9cyaMwizNFRkZFdts8WIH/cy4amddIIl+wf9zTOaCYoPPKfHlI7tGVyLSjTw7bpyGoVkP9V7j/FHFXoT8iHoLytX3BerIL7XMzfIG8V3kS2X3sv+r11ww0avRR8ULiB3y8ZoHAmHo3KMWZDxH+IWGPhNlQ/s/oo5B8z0nuDAyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1s8GXl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1s8GXl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F15C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733510753;
	bh=TmkN2OrOe4pRIu2lFfs5aPNwSM3XLRnCGezCGG7xmiE=;
	h=To:Subject:From:Date:From;
	b=N1s8GXl1NN1dZ6+ecbrDbW086W9OKjX1hIxyYhTJsFdixgbseLHzNIQayNUYla3Bk
	 AjePku+n3JY2e/k30xNKrt4pXogUTl5w/x2igb3doM3gFVFTIGFNLBO5yuCcGNxzi5
	 7nph9gDuJ9Rh+u8heQQ1uWd9reusYKOnP5bcB6zpVUsAorocVtrfjf8pqI8YljAF7F
	 Ft7BkGIqsS4BCO+9KFTPcrvbXfgKSf0yyCSnpe3wdSSDCLyEuNfQ6XY2KCSIvUJ6n4
	 ytSPQw9mpAIeq+/89uHVFxKQ86lumDiDkLYoNbjvAvt/uybWrKXhSEEnXZ2z7+YN+s
	 wPwxbDSZSofdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C558E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173351075363.8894.11366840600489994143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29a308e998b4b1f2b3cc4ef2e0fec654c894fa150582f889fd0ac486e8bff2ae
Date: Fri, 06 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733510753
