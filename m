Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234651F91C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753460394; cv=none; b=j+t38WHwZpBjwP+Dw26H5FGBTgndKGxnToOwv3q/nsvbgfA7iBek7L6s1H8MQuKd3wO/jd/pnFGvAhKqszhASfkti9ZEoi5vhaQPwVoQdXD9UUO6IBa47WDSjrladuRl+/5+yJ7gL9fXgFuarMxSbosIig3aKkqGcQ3vszF89to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753460394; c=relaxed/simple;
	bh=/9S/eTCa9TV2fjAkbHEtIROnueZI8MSVrcmTpT5HcHg=;
	h=To:Subject:From:Message-Id:Date; b=juuFPLjZ3TJUwxBoZd+97Vbe5yoCCyYhlKvb9ApKxeJYTj6Kc4o6yj3Y3B74/jEx1AadHF4P+Pp2QdulIO2eV7l08ObgFT+IxxYwtj3ba5axbCJBnTzPbB2hjO4QtQqUAMSxX067oLX5zqjHreQebbZdnzLmkgmiEQsbWT1dWTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QL5HvMjd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QL5HvMjd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B35C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753460393;
	bh=/9S/eTCa9TV2fjAkbHEtIROnueZI8MSVrcmTpT5HcHg=;
	h=To:Subject:From:Date:From;
	b=QL5HvMjd8u7HC/TgSIRWVC5rTixcX+WBbJYC7+iBjN+gEppmbTPklEjhZDriGHbV9
	 Hu4V5JmjEeuGWJO8UtZZs47GKP3bKjWPELUw0Tif+GLV7hhMoZnqkYK0hKdCCGgVo0
	 haAC/Zbuki3BFvzVF0dSOjkcoBLrMAui5/KTCa1KPqMBE1rXBr0zCdS/3wBMYfZsww
	 dp/yRNMkPK+Q2vuGcNN1bjQ3yhLkDKnGD9QdS+8q9iMfYLDUNSIs2OhXKJ6zi03bs6
	 qTFHnwag1bvrVxCYleRXd5gMn9PW79aZfmjRSCi33LDa2ZDAYRRmkRHiWV7Lr+cpQt
	 TZZT0ygjbKn7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90247C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175346039358.16773.8623917271379660686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efef006ca5082c6cb1d5437078af682ac3c6eecdffb3f96adcd9b57a8d1e1ff6
Date: Fri, 25 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753460393
