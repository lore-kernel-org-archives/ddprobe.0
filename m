Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDCD36351D
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706864297; cv=none; b=da+bpnpSxOes0dCmmPliCa0D1zt4Vlq6rACkHWWhiaCcCiFfvAoBfJCyVqiymn6VonZaBLOG1N26kNJiGfbn+XqANG4Ec5p3+7MIo2mSqPnMBrMLYLJRKHbjkaZHmVXzyvPgnkaoXPF5mORREJga006ldru4hy0CygDMbtRRxRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706864297; c=relaxed/simple;
	bh=2bfrI6m4vjoQcWiD3ltWg58EVtQdVz5SwP03/s1FGK0=;
	h=To:Subject:From:Message-Id:Date; b=o7y0goWthQHlDcugHHZieuGE1RQTEFVNoBSqjmJEwywoFfpJ5bRSWsUp1hT3vBdrcWK3PBzu37CURvj8DPNzuXvhcl9e5b3Mu1kQxSuMNMkdyVrVt2lL//5vtZ2EkoU9qfdPTHnUWdtiNvTQdo7BYZWs/EzlQ7wHR003EYDss/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fc5pi2qM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fc5pi2qM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 768B8C433C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706864296;
	bh=2bfrI6m4vjoQcWiD3ltWg58EVtQdVz5SwP03/s1FGK0=;
	h=To:Subject:From:Date:From;
	b=Fc5pi2qM3iidbNNW1m5TQ+PSo79Ix9lHXFpMyGJf9gz7xmvv+Yzzb1sOmuGnRcaoR
	 o7CckMpoNw7mtVjQV3GJxEk0AKMyJMWEvYOE0PkLN92TdzX2d4cHILp/lmTTIdDKH6
	 nJz01zeeaQmyg6LbkVD00Dl3yE6gAtmUjnkKLS3bGm/2fEVv6RnsEMB6XO4k3i7gbo
	 W6/zbvKAmszM+naf6J1NkoCQJVV8wEGz1+pgiqGrt2lCDh+GF+CxEEmRY/vhJj3fYl
	 8B15PRYfdOwzpCrqHynDuC1VQvWj04NpdUNlmx3VBTT/9/sp8Z73HaSzLCnCMJ/alA
	 OjX682MS4klrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C9A1C47258
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170686429637.28671.6880982222187977763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39532c0afc07f2795c2efa298b90642631174c88fd75d0d7c0001e10566de36
Date: Fri, 02 Feb 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706864296
