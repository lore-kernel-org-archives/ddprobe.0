Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBE42505A9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744747794; cv=none; b=XxDRA49Zry0Z3sAM2KInWwZXR9Cdv5KOoUfyYVgqYbBRRdU3ZPwV0fzczs1h9s3HSn++4gFDlxeAJkr0FfXhRoRvanlO1iTeRCrnp0ud+fnjvnai0MQcKCFvAkN3pshHmSr+aMX7nBAo5bfg/Q7GMGixsTNaZKp3gS5Sgp5t/5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744747794; c=relaxed/simple;
	bh=GYuEqmKM043K54auZDN/rcCeQOWFxFhqsBG+wg2EuEY=;
	h=To:Subject:From:Message-Id:Date; b=RaSlNVHgiujFb1LZ6I9FGrH8hhj3RofpeL0icm86Y7NkDo3vRzcX1SBQ5D7/pLEHt9jjPP6gTecFJzA+QQmWyLPxZNPAYEhXWIHDNO6pkrPbBlB47aEPcqwFkVcWIbenS+G9ZZVSN8AWqIjp1CA5f3eqcgPElsO16GHkO+EhN3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJpkgZ28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJpkgZ28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF967C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744747793;
	bh=GYuEqmKM043K54auZDN/rcCeQOWFxFhqsBG+wg2EuEY=;
	h=To:Subject:From:Date:From;
	b=rJpkgZ28Gr9Li2tD9dOJxFK46A7vmC1sTfThZAvCTFib8nOg2/RrY13G8WOpq8WqK
	 i/lZylXTV53m9O7IU62ZKWWg1PdOWI97orjob1iMooiowT5c2Y8dhm8MYQdSzzhBj0
	 8TXFgXauVqnpzmp1rvCEsPraD5W5vWwdpiNRhFLurlzzF/JX2gp2oO1e1nhN/7/Vex
	 2Q+yUBwDKykacJfsFELYMWRcYxIJTuwMijAw5cT4EdKu3I9kbiZARr47zOzye4wiQe
	 BN4xVUkE20kkooF6je2wZIBLReBeioFIomwSse7+/TVjidyxV5QJczVfJPSgvcEVA+
	 Q0cJfCSVqufGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A964C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174474779362.13955.14482195198093757727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e809d35e71f37ec63faa723382bf0804f71ce6e34fc1cc297f89b2b5035366
Date: Tue, 15 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744747793
