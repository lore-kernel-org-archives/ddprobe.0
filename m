Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D012E370C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751780394; cv=none; b=PYVigOCW3MVfvUe3kZfTC4UAhskWx/nnprAfpr0pxeK1cG0RHuy7mJ/ZmL0sxsmHjDG0l3Rgl85k81Iew4L3j/8JuL48KlFa5FBgGJLVBrJJ5dzKoveN4WZ/dOIsoyS8DaJxdRNfq5SCkj4YG3ui9NAQ+9bxT7PTcNtHPSubIo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751780394; c=relaxed/simple;
	bh=09q6/lQUkn0SILlzMyNA2J1K7sesa/k6rRTROgC82W0=;
	h=To:Subject:From:Message-Id:Date; b=H6xeVIBdFdnAiUOfJQLmyFafmI5vVL5SAMhuLePuk1EjJ/uiMMqzrA7h3VGXqZOe9uzp8M4Eu43YLT5EU4psteGKK3EPoKhECkVK1sUW+jjWDuZDcVEzu0WJw4eyxV17ukRhAgJMf2bwtpu5yk0Tuv5DZCl+r7cSGrZzvxuhB5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVKKLr0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVKKLr0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3954C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751780393;
	bh=09q6/lQUkn0SILlzMyNA2J1K7sesa/k6rRTROgC82W0=;
	h=To:Subject:From:Date:From;
	b=ZVKKLr0Qk6xjbIxapkBLAHbqNXdUGjsrsRaaWIpIjSag1QIk6xHeSp96NYVWU8yvs
	 c0D6EntZMJOl5ssqaYuiT/GO4u9m8jdAFF05QFggkDF9MUPihKHxrnqcR5eBLC5Aog
	 vU07GcZHw1vGFw6CyDmFLsUhAgfI3vJkT1NbPVi5L9mGudNmOogSNJ8yi5xL/xiNSm
	 maEPgdqXIzOnU7r6dnX6PeEfiCrFEBC/tYsofPeo3LTqOxnGCXvPIxvgM7DUOfkfJZ
	 zTvR8Q43AuTO2ZfoQhBgh5Aa90qKlWxXYC/cn2J1bQoM0mh9hAwMsW07vtkXYXZ9Bu
	 XG1a3eLP2nYtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EC0C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175178039357.7037.2389339427293632183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8172565b0120c8904c868fae61d14a9cf63459057bf1de5a104c7be15b8b25f9
Date: Sun, 06 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751780393
