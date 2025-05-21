Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2761F2236FF
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747851595; cv=none; b=dT0GEDW0GQ7+j/ecwGpheSBszVWXyFlpcrh7yvIM/sE1HVZhE5c/3QWt0McxZec+2dyYdt/RtwPyAZhjis21GVb0zKwGmPhaNWQlLXfeiopR8cvEaOIq6WJLKKZC7W5Y++fJzsH9LrI/aqQCB8tU9IPwIVWX3xWW33DswbY8hJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747851595; c=relaxed/simple;
	bh=IiNvl260ZiEotjqwcplipRkHm7eNcZ7xxJc3uu1GDU0=;
	h=To:Subject:From:Message-Id:Date; b=lh3mc+s5/vILaBBz3ZV5+q83XpH2mH1UHCYD7qB3lV6eY22FTuCzeYiDr1/cgXGYGn+CsCDjE+BSc8/1qYYUbPaM8S3UXjFc/AhaAi6E6KlLIDi/IOidPiyWoog61BILv9Yzy66hhrMEGm0yBkt4Op3NzYHw0sAPbpJ4mhb2/1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MO0tZNLO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MO0tZNLO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A133EC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747851593;
	bh=IiNvl260ZiEotjqwcplipRkHm7eNcZ7xxJc3uu1GDU0=;
	h=To:Subject:From:Date:From;
	b=MO0tZNLO6y2gus9razbO6IvusLr1yisdhnWm3wCHJvEABqAErSikUhE8kF3AxyZGz
	 U7wO3Ta6dArhAR/JKZpagIDyOoas4pn7ll1htpBwy+DzalttADlOHUEZM57K4sJgVz
	 OUwuHI7AIN57fP24JU3qhVIFy73gT2ET1vG1LCe8UQp/OwM0EmoLeLHEyivPyIOxl9
	 yXyqbA84jvjwPw+6zC0RFMOyXrDMDg4SUAF8D2aJ0R3vkdJ5XXh53RfOX6JAw1gPAl
	 QQ0viIK1Yrn+2dmZeKABUUdWU5eMQRpjs4Z9ezu14wxhbgAcGdJVtiIF4cBBMDDpDO
	 k9eVULOEKFvNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901CFC2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174785159358.4412.6852573954273848514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8860740febe11dd5b0f7efb94bb16d5893d5faca9ac7aab44083cd05bbf1e59c
Date: Wed, 21 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747851593
