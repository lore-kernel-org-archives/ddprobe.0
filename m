Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E7E1D5CD4
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753167594; cv=none; b=a9z5D0lxKZBiSfcrx03vlAZOW1CZJY6hduZAiYlDhrRnQFT40Zv99UYwXTIos0CtABNbVf5ZJvQozgTPvkaxWaTIiuXqJ78XOJW+r2hEU4vrikCIUOBUr8xWqW9jGwVRV5DE2WeflwBMhq4U5r1meHdpQI6VPp+AIsQBALJ1ofg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753167594; c=relaxed/simple;
	bh=qtZFArsC6ySzCsmQwLptjP3cs5VX0KtJWPC8rLxamUk=;
	h=To:Subject:From:Message-Id:Date; b=ADctexfFMRhu8i3mpve8N/3QP/C7lP6KeYEvc44B2EAjSQwV1kl/ckgreiVM975XeqJiKOIPVOmA0KULBhp/F4h4inoaf3SkScGT39UTpvjnxy3Sxw6BBTZrQZfuAoAzvX7t5iIzlNCaWdfOeece8PHKODKgMwnctt7mNOXD4s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxNUZ5uF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxNUZ5uF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1678C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753167593;
	bh=qtZFArsC6ySzCsmQwLptjP3cs5VX0KtJWPC8rLxamUk=;
	h=To:Subject:From:Date:From;
	b=PxNUZ5uFMU85qS3xUbUA/Ywsf9jeHWxYppXnx/yjH/bz/OImy8Piklt7hIoCYWXb6
	 KV+dukMfP4wCamQSbQzo4BH+TAWToeGOPPNtPZStNs7KBqnN8PZTiWMCqptvYECY3x
	 OzkxVJM7ilLdVVYBRKDMcpqCq2WvuD4su0HeYfJCmoimnHC4egnJWMUP6yQFh0G+LZ
	 vcwGHOeSO61GYMFl7LJDrnSl7wLGm0/u6f7MaYhWYx8GB7vckJk2ZoZDfwibpsUR1T
	 +jSB2oC6RkA8TJkAk+slnhcEw3gakc6ipb6T4AEZmMLQ4KhcVbAJ2xebolZxqyB2W4
	 XfB7mZLcvO6RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91690C83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175316759358.13525.7832261416322656440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 158904a7d9f47b5f8206e8774cfeaa0d91a3e56aff4be374c0151839461e09c9
Date: Tue, 22 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753167593
