Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB57230BD2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749016795; cv=none; b=dV9XhVP/4dALHq11DfXeiLplIAt1bRWGBr6F1oz7qAOMRw10xD1QfWS5YpciwjwYSODiVgokZ2/k9BvE71O0OZprEkvA1TlbWBE2LETeY0BNXhEajC4d4IyRwgw0WZAJeGn40/PkOn8ZHSwHhTe8GxjQkursxw8SmNnO/SBH+Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749016795; c=relaxed/simple;
	bh=39NFWbMUFftraPMMt7tjCacDYhxDNba+0Mnxo3ZyLk0=;
	h=To:Subject:From:Message-Id:Date; b=p5bgkQT43YJWk5ahIkjEfmVNZTnuxTUCk+Q/saKESXST5jp8KLd8FjTJ7TMoyNlHUAKtMECVu8oCDuLLjJcieNykxZK2FYCtbjc9Lyl9B6eHrE9e7pNFz53WqPANSLQrYWCD+ZcncQQAFp3whbmsIQYkau6O1q1IDcFGViaR3VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kANJc/Q8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kANJc/Q8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E7CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749016793;
	bh=39NFWbMUFftraPMMt7tjCacDYhxDNba+0Mnxo3ZyLk0=;
	h=To:Subject:From:Date:From;
	b=kANJc/Q8mNFz91sF+2VkUgSxOKzGdS/ty3he5sE1audTQuIuACH1fz5MsoTtdlwR4
	 peITz+SEZd5A50fdTzN3BlpMmV6+EG9ADQkj45318Ne4gJOCJoOst6fK12DUzurglv
	 JH0nsW25F303yBI5fxEBhuP0eaCkvlbaznQ71lwWneai1Wyh1gVXqhcolkgVVEL7z8
	 ZKqeWa1a9R26JZZYlmbGdHXJsHkkySrjEUdHjeilkmgYrBvYHIaw9duIkAsGKj/Dqi
	 XkZ96t+mS9qIqD17KZTJ6r1eiYJabsrFAdH2B6NCjP8vkwKGucbith7DJAqnp3r01B
	 1lSw72MhMKovQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDA4C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174901679358.29659.5210707081983452195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e22826d59dfbdad35a8a1531cdb5a9fce59d34d66e69db89d70e7cd4dcf87b
Date: Wed, 04 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749016793
