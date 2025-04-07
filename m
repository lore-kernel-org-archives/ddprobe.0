Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489551A08A8
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744070394; cv=none; b=TD8LDLF2JG4hlmpK3SrdFTjvNlMc53SG+KiVujHX5zdJ0KAIZWjj9Aeu04RQDdRy/xxk9Usec7Cm2u5BQRUBCCvkR2sq+3kp9XIyQLFTVOPRqUjzkLm7EuPBSMueTUqCl/ybyJVeMm377L9WWhnPrCMBYutxtsKK+6Mwgz+PnyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744070394; c=relaxed/simple;
	bh=vuN2BuF5Plf01cSRE4dUa8QMYOIyJcPu3phizxXZ0m0=;
	h=To:Subject:From:Message-Id:Date; b=uOV2bZrZeIDb33qM730l3j0HQOVPREH4jnA574iSKOoehkGbNKBS/b/12wgrv/4RNlqNiO1sLw5+/nANnApzqXv4lL5dJEpqdUp6YKE4DBdQAQLu2/leK79STVvcay8talJH/P7rK/pdTiDmCX81RiJJlroxmW2uM8hkN8wtebg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWp9hYg/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWp9hYg/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BD3C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744070393;
	bh=vuN2BuF5Plf01cSRE4dUa8QMYOIyJcPu3phizxXZ0m0=;
	h=To:Subject:From:Date:From;
	b=hWp9hYg/51IHubOLF2B5bvmpOsrh9me1K21bSKrUxMdPGgkt4VCVZUXAZkvOqABPU
	 +f+GdFopeVlx9y7zZI1hZI8MTFayVUWkUXm/MyOfTInCgIibcmqmLZHPCiaFDNbAlN
	 v7+u3jDAtLqwtCjTB7O80HFmjXuCNQwMUfjYLvEccCTffZ8hD8+L/DPzc/1gVNjvmb
	 f66vTX/T053ZW0yQ/MWGNGZJqDFExle03HdyrwKutz890XmO4I+zS1iVLHAhlJVd33
	 oQSVTHxBVC97TkgKp1So3yUaXqBYQPTX96h3Dia+DYNz/2CemEecbH90aufsduATIf
	 j9ZI34evsHbew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D3DC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174407039361.19420.2892624120917774301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c842061b5af1c595421082b27107fb4e235d1868e5c8d946988b470fc1cae573
Date: Mon, 07 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744070393
