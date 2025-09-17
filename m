Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9D827E040
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758130795; cv=none; b=rWjnEphDK6KuXL7I1na1xn9WKc/qtbJxZayuzrC9dhIZGlHsGtFoQTHX/BzUyVQAUbRtoHhcLzMcVyBYThNvu2SDsTAObo3SKycZcMvV3OFj192goeR5eu0CtvfB5XqS5uJWTQZTWWYrzrCJCx6wbr+BxzLU7wk25vY86W+Rb2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758130795; c=relaxed/simple;
	bh=keDiN/wwWn1xt29GdY9Nfk9qI0G9qmjyuvly1YZ7fg4=;
	h=To:Subject:From:Message-Id:Date; b=OH8BQWEpASs7lXH6lyLCrHH/IJ/04QmvhRkLl82GB+9qlk7CF+P8WEj+sXA6hlrDL6CxjLxF73Sot9ogIs5woQK18a0fY/T7/L0PB8UbYT1sN5tbRee/75PbHRZgdxVwo1LFbwpzSfUi+ouhPl35aR8QB/yNGFLu/fwc5Vz7bkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/LTXFRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/LTXFRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FA0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758130793;
	bh=keDiN/wwWn1xt29GdY9Nfk9qI0G9qmjyuvly1YZ7fg4=;
	h=To:Subject:From:Date:From;
	b=G/LTXFRQIumfE45O3yQme+AOjWEx3h6Snptg331yl5T0rIJVGeQDZZU/A2h7kx5l7
	 /hz1P34MPB2f8HA+bNtKP1QZF9hnmumdz0bx4u+I4iq/2CzFRSlPAhzo7vq2KkbBE8
	 EynO1AQe6xAZlL4SqNR733VP0GacElezvhxpkMC7I74AADINKgSo/I36Si4T3umsjN
	 f04EM7tJ9nhySBlE1xxTCBiq+bY6Hl9EhfEoxGIVxyiiDE4h9rFh7HVg3kfO7CNI8o
	 Ad3QM4E5bDwddSqGpwBSvrFu71qYZr90ie7J1CMyaUke6NRf+hgxGj7SBjSFVwKk5w
	 HTbQyTyGXvVmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C72CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175813079358.10763.5189722657423674362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d2bce152a6f2407b0bfd1a552471375eef313256ca19274ea4a53bb88bd831
Date: Wed, 17 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758130793
