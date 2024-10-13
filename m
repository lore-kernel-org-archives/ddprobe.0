Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEAA374D1
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728796554; cv=none; b=QY6AQBOio89FvbM9MYNxoA23AN2IuOP6VYIrHoZOtaTiBXppmQlkkYISe6bHvHNiYV7aT6ewafDRm0AFebaFmLW//G1UxwQNVEAvJtti6WO8V55GIpkjKeeuQrICTNDiFV6r4qlRF2OIkz7NoT8+O9FPYxbmaI+kqSlUDm2IzOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728796554; c=relaxed/simple;
	bh=foUonNeAQmuhE8pIj6ArsMpMkFEempjxZZskhlGVrz8=;
	h=To:Subject:From:Message-Id:Date; b=cYarn0zVgefPd/Zvc1GdJqIv2wW+83SoCdDAimF7uX4UB3LGZ6D36GVr5l79nlr8i9uA7e7QjOsRI+dTJZf+i0OMu1vzgS5Rdf06Ne/5c3/sEa42Y0VLRjmiVMWNcOE581EKWrDJizDfXxc+oZ3dSJxeQ/9gUDiU1rrbCxzisZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVoqMHNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVoqMHNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF70C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728796553;
	bh=foUonNeAQmuhE8pIj6ArsMpMkFEempjxZZskhlGVrz8=;
	h=To:Subject:From:Date:From;
	b=EVoqMHNYQ7bIlyU1FBrivlJ+k2+28IhsJdgGaKJ0O4wM0z/jEntVRmYAmAkZDnNxv
	 ebUeWsObeW4MeBZUpYvNxlrosQ5CiuJDgd53CcXYb04faoEwgRppUx4cJaQ0WQe3P4
	 Xe77I2Q/rYOHX5n1UMzkOtVx2k8G+K8QbxDdXabhSFgqGL5tyn79DDkabjtgjfetjI
	 fRUHWVSl2JExvzyFRzKKjYP5IaZJ3c89wgK8BZqMzFqKZEzOCccMRClgJFdgTBAnXw
	 qFHCFTNkZ8T6FUEZLm9E3F076l0nyz+NXMG4T1bP1Ptod1aaeBcxlou9qtlhVCU5wq
	 Mr/g3XF0NWz6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0EACF2591
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172879655365.17614.14583210074207409608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fde0396242e6f436f793b508d17307a11d732adf182fb0492bc2e822baa6227
Date: Sun, 13 Oct 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728796553
