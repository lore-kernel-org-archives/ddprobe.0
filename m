Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30637F9CB
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726645554; cv=none; b=NMSMeLxyboclRzwehN3mlrDShpknYviG9MRnCbGyzMcO+XxaoapfiHGx+1wsS/KA7dVs0PCwlStRsFA0aTMY9+0DuX2rFh0Qh59djZh00RDHrTfzIPiQ8GLCQCqRKvmUu5rDidEzxx06qwYOJ8v77AL1Gc58FUo7BgflXlUY8Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726645554; c=relaxed/simple;
	bh=wC2KdFjhTUtWdjjbiE6T7yYWOePHQzphcn8I7Y86GLs=;
	h=To:Subject:From:Message-Id:Date; b=Sbms7yrICztwCrRm5Kb/RvX+l9sKxMz3K9ljcZLoBmRegGAIBYLck1gEURB6JKqpIsAgEdPGLOo81CZV3s0I8PfapWmNh7HKsQyVTt7HWSqZirRqmtKdNUnHY9R9hXAkT6c84UEo1QTAHLxTCFxPdGf6L4uLcQIwmW+AMJrxCwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+jDGBnB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+jDGBnB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6C9C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726645553;
	bh=wC2KdFjhTUtWdjjbiE6T7yYWOePHQzphcn8I7Y86GLs=;
	h=To:Subject:From:Date:From;
	b=n+jDGBnBr1icyQMMrP+rGPOCV4T9KnQNK5iraxGqbi8D2VO+4bg2vQGFe0TYEnste
	 BQKYKNGRb3ZtGeXHNHwDnxAyvwv9y2A8XDJ+0QJ7epK/xBN2EAVJf+vtb72SuG/QOA
	 mklGyLB6SMPBQ2flMmNtVm3oYvxVxVb77x9+mtzVNtDWgaOSHDsGj6cat2nKUvg1g4
	 xgKRZ5+oBKErO9Wu8Ix+UhAo+md5vhoF5r7RCqJKW6ruZQjCNwa/iceCHTBmM1hyxY
	 YP/BYrfwfmiue4XNVupFIfeUoFzkjWLyAcEiwcEIWcvWGSc4CxWpL5mJ8/JrkQvBwz
	 wTnNIz9TU9Xdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AF6CCD187
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172664555359.19361.13168570716512431303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 993522a4ad3c613c70c5b00348f39f46506586acb301eb284f3c7aecea80fb84
Date: Wed, 18 Sep 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726645553
