Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0455853374
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706796497; cv=none; b=VYYnnkw2VbyKkaKx48Df97hOx8jDp6y8T9p/6uxtZqM5vJpFXa5GArcv6d0rB5F6gsfdPUvWsyNPAXBMujNN866k5YzrAOWlu9B6M0tjMOBNgwOnr35jfoH7Kqv3CIllvwx/gnud9MR9PaHmDOYK4l3yubMQeCUEbuxvoIr+PdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706796497; c=relaxed/simple;
	bh=vNQfqew1gmyrTrWdiUXUmSQRq6KSJ4HxhrIDmUeqqZk=;
	h=To:Subject:From:Message-Id:Date; b=tCote2kuZNPj2WJmRm1mmdgJzMJo+1Bjm0bVI33lZHcMuzwy+iOyTntXHhmc1h913Vf3rstM9duGvWTMDGVRV4jy4fBZ5rvLwM/5E00hDxzaebUlt5Ps1LG8+l4SSz30TpX6UnNDDL9yq+IOfs/BP5PB83vwiBp+X2VaMTW/3eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2odoCAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2odoCAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86B55C433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706796496;
	bh=vNQfqew1gmyrTrWdiUXUmSQRq6KSJ4HxhrIDmUeqqZk=;
	h=To:Subject:From:Date:From;
	b=G2odoCAeWzrLUxzdPziAYEQu56Mj5yx9tqzBIzJlIDEhjiq0xqCNU8WA7gjv9sQBY
	 GMMyyycw9D8yUVEx5gRFBtrE2TTQng/DfVCa+h1Z1xyapavB5JOAxfIvak9AfIWMxh
	 4FEyyroKI8qrC/6iRY6Tey5Fx6LRYa3BxXtDjDQz+idIEolymIVKl1KJOpskbrnJYK
	 YMq3MzRAYes7ASCCE3dA6/vs6KB+z7OfondgO0HA7p9faBmSqgCB22NZPBFtu3hprv
	 YBjOoDGD5wKOBeOC/Ya1u1+mQ9dE+yE5c/UGe4NT4/hqA8wDoNT4esPQzL95c19dKw
	 0yOycA3UTb0mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B84BC4828F
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170679649642.10679.3187947459680534319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 012032a7ae41cb0dafd77d5ea06bbcf2c758f9281c76125c018ef1c004123c57
Date: Thu, 01 Feb 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706796496
