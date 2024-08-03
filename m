Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37499AD32
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722650154; cv=none; b=jF/C56zL4h/g7IAGjLXE+MYBgLRIL8Y+lHgMH8eS7zwtZXpGWhK5RUerjSeJPDsfjE2/hJlYf0Enaat5ATBXLPtbW39k9FYH/4FJSq2roScUNnwt6sSPpYYkwpaw3bZcyV9Q9CRI90cuzjNwuNMBRikBEb9DMvYc7BZXClj94ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722650154; c=relaxed/simple;
	bh=hI4VMYldiFi+iVt7NUY2mCNoCL9X07HUv5nnsHAbn4Y=;
	h=To:Subject:From:Message-Id:Date; b=CryeNNes7W0G3XW+XgD8Jb7ZPMFPXhILZlqFWqEtK3Tc2f74RohwysVacKwtvLPfOH4SiEYJX1QN3rcslkYgK9cB7LQ5PCsaYpyeFlkFkP+JiS08LMDCZJsphKysujE8GutgDfeE9YEJA+DeF/2VRuwRD4kvPZBRIUeXk1kLYMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGYg13e/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGYg13e/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC75FC32782
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722650153;
	bh=hI4VMYldiFi+iVt7NUY2mCNoCL9X07HUv5nnsHAbn4Y=;
	h=To:Subject:From:Date:From;
	b=AGYg13e/uAcUvQ8hmjYfUi9ckpIzxm1uSJAe5idMy7tfolupR+5C8LxmTz19vH1kv
	 z29/0fR8xskEWe1mGwtin7mN8zahCfRotb0zv3IzycJY2RrfCTis1frZ83kFmLB0ug
	 UPzG0nJAGRF2wB4BTqO5xwMSLAGDNUZtn34Plo4rDRhqR63rYbvOnl5uEVXhA82E6J
	 Gca4X5X1FKhszflTIoD4FRMU04qqmNtatg2EnEuPBqZk99wf78mSyEGKLLhvGmUwaC
	 uHhpwfvrcGx7JwvbGGdAUQyT20LPj39v/s66oir4y0O2MKACi0G61QJEfr6bVacIwE
	 rVzd8hRBOMdbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A37AAC3DA7F
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172265015363.28791.4535219907735208191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb960c57c9a04fd71079d0df75853bc914005dd4e29fdee86b78b9b7234e7fa6
Date: Sat, 03 Aug 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722650153
