Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A303BB11D
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 07:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779779554; cv=none; b=WXkNrWQ2HD8MFj4vM5NmvWuydreF1YOotJRCkkrwtL9uhUJupRR9ZMEgP7hjzsxLkwX6AZNaspczB2/tBc+qdA7lHR6SMs/KbnHKvTBfQZkVZJ1PjSfAN+D/EHAD7mepPxHZgEXM+GgH4ZFPxLSrTGs1uMux7IQfIn6k/1+z6Ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779779554; c=relaxed/simple;
	bh=cydm8gR96zH+fXF3DwEtd24PHCM+QYgMSaZkfTEDINw=;
	h=To:Subject:From:Message-Id:Date; b=mhcr/v7qHNbJtvcxmZu3cL60ezDQpfB1DW70nNhO4NUS2uqGpTtQTaRtvaY5zDoNlhq1x0xE8oQmDvT/7vliDj9+UC/YAbxNjKCoXNxA5IqR0jYW9UFpiKF7W8ayXgEBUhKIydqyDURO9mFnkEDZTKQv1lj6K9DaemvWKJ5WS1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIvu4G/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIvu4G/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6799C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 07:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779779553;
	bh=cydm8gR96zH+fXF3DwEtd24PHCM+QYgMSaZkfTEDINw=;
	h=To:Subject:From:Date:From;
	b=jIvu4G/U6RADZsK2gpBeWr/WeZVawHyfqj7XUQc1meONB7SSgiksFIYkqKVsOkrBy
	 sdrrHji+SDtmS4ZMJdURj2qOqc6yD7YBGUFh/GxUIc2H/0ASKoa5OvNoVvsmb4tLZ1
	 FOv1vVZ7qlzaJ23AGQ/M81fd9fzg8gTM0WMoSAjT8hV5y00+8zFie+Ypbvga++LgDr
	 1MnjAuQdc/RrYt+GG8/5g+jlBy18ly53YvxARHjdJoWy/wb6l0koEomJ6Hr0hmXR4n
	 neKE/Y371sRa3FVJ0lV5+J2xwS4s0L6Vc94x4Rp31lUzri3Cv7DFU9dqs/JWG6H2sZ
	 RReD2nLCF7joA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6D7CD5BCF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 07:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177977955370.9122.16458888835306811185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caaa29b84e69cfcf19955ddee830ba574fbc0fb9d1632f6fe8b2fba14ea32716
Date: Tue, 26 May 2026 07:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779779553
