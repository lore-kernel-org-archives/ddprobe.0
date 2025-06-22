Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D81B15D5B6
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750618194; cv=none; b=Mc5jgwwJh4sf8eGU0BT5+woU/uE67mjZZIFSe7DC4amH9fGelDTjKtXYO5i6C2JVRyqYYIc4QenJyL2UH9iv0j6K7eXDxeQZ5pUbYCVuEvR3ZzJCLRIUUvXaL18mz5H9QvkKIJmB5I2vCgD7h6hbFoNyJ4l9bBAvj5i1OTGPOcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750618194; c=relaxed/simple;
	bh=DGtrW6N30RzrL8eoDtawOXwH6iodvGm+vqVth3cyiFA=;
	h=To:Subject:From:Message-Id:Date; b=dNv6O3j4VwQWg1nGwYX0CDP9JmREwufIyko2ItZI43j9VU82dabZ+74bksYQi65twRlEh6gO12YVVbGq/yztnyzG0oYny/WHtYbHlFLC6R9kqFm7jq4OG6O/2WuIUyVZEDduxQomKd1d7UZ3ZQprEdV2Dm0s3Y7jVmBvhA++uMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbA8iEGX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbA8iEGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0577C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750618193;
	bh=DGtrW6N30RzrL8eoDtawOXwH6iodvGm+vqVth3cyiFA=;
	h=To:Subject:From:Date:From;
	b=IbA8iEGX36giT7AyF3ns0C2bJ4jmQNsD6PQnmxYXOSpubnNzrVb/dcYoLHyMQ/BED
	 AfFW3oBU50RX44wuSjaXCSMOUAKwT9Sfd49Frmx/oJONofGZXXrgWMVcJutuP4MenA
	 BYA1sG3oPVWpgJ6pgeu8+XyvLt9pqfXkiGtkDr2IFl7FKrknHFhwU+HNPBlqRV5Ybt
	 Vk/IATOaqgjG+WAm1GMSgjcTz/9JyRj43Ikd3Uw8pzvMpSDvV+Vq+SMcY/zPc6o7lZ
	 GDbOOD8kdqiXJTS9K8bSTdS3KdhgS1JisEOM+XtgKyT4vwhDh85x3hvqFZhOh720gJ
	 bRuOWdD7koU2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90536C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175061819358.26211.7727988279395647876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e2a1ea7fad7f309ed8a09552542ce0f21f49405fe271fed7e3c8e5febfa6246
Date: Sun, 22 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750618193
