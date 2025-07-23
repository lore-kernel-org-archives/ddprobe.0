Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9FA207DE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 21:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753306795; cv=none; b=gBYM3y+ExBEapTKM58jJMXfQEvQutcJzADIIo3h6IJF2FFhTg8gHk1d+rICOascnZXNkgGgio/+Mh2tXuG47KttXJ5xzANWhZgmzcbTBFUNvYH4B9LId/zDbZcDebWaIV5pX3ZLlWs0ZUkEvilQyjUylFmlRXTr53wm1W5ZLJLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753306795; c=relaxed/simple;
	bh=uToFz+vMdoTJJPXPtruRb5h6rs5jcY3BUWSp4n/zV3s=;
	h=To:Subject:From:Message-Id:Date; b=tJ91TTKfgX5/CnOHrNpr+nrArIVxPn8FeX1FX/NhCi5rmSU+hlPJT2y8b5DjxXHy9vPHCzjPt7/XhPm3trBhGXjWvJgCmFNkBlzoeNCoMMoDJZ+XJUEshue7QDgjyLvb5JuoZAAz4syrubsr2O3UZCoJkCJq/4LB3e6kxAm7LIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FU73Ivkc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FU73Ivkc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A553FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753306794;
	bh=uToFz+vMdoTJJPXPtruRb5h6rs5jcY3BUWSp4n/zV3s=;
	h=To:Subject:From:Date:From;
	b=FU73IvkcXkr13qwXYWCyu8vzhzmUyJI5hCTJjfnCwRLDFOnagxiM90rge3eih6xek
	 9ugjf6gfMzIZSFRfCHeHXINmzKsbYEDaoajDAdEGDstESoQZzCY9BygZPACtqE+N2S
	 ks50UcyBSBcKytmECzuKaUDQJ5ckx6TEy2KQ1jHUzRLdjiY5GVnNIYAbZPBo0hzHWw
	 0l9bDnhyeGo2iourjUDaM5ys7JaYl15betYZdNTFSmn1P/dNjf2K+VzahgAZA/lAxF
	 oS/Osdt1J7OxIYoDfYPbJ1SBO3SZ7ITuG4ciBohr0vcw5jE66Ii6cJ0nc05xU3o+dC
	 EtC8RLM8o1/FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A87C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175330679358.32166.10527754708705364643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c054fba26b93c1b762c1e8639bd36e0bf7b0c24ef35545ff9dbdea1d55dd832e
Date: Wed, 23 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753306793
