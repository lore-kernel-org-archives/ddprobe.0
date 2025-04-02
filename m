Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3219323237F
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743579594; cv=none; b=Ffkh8+CKa2VzqgtRak9SzBHJucNnRRC9cGRu0t9SM9GVyNUAJZ1UeOeuefUwyxXY6v/SeoCygv5UUOIfNhuoKPLnHD+bIEzShBF9rWBmaeyUPMSYDNizFOtch2ghpl/MMvcTEvMqA/ndfvcY/YISA6XVSGTldOGanhBdlT46gX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743579594; c=relaxed/simple;
	bh=TkyHc8OlLkB9XiieQZ3EPbGLQgHCgV+vKTGH9SebxCg=;
	h=To:Subject:From:Message-Id:Date; b=ShY7PPa91dCY1JrGoC+V5YfK9/a7MP+wti4DoGTsEqaW3QsM70/ObbWXROo92BwZitzMKnULx4Kr6JGcUoUxXvWFCmBlgURGRZWOsEhrBXKEzQME0Dh8QdJQbkmCghawF2qw1pn9YaGAtKdbBqyaYyvGJ9EMWHjYT2pn6ew/G0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDMEs70u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDMEs70u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CA7C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743579593;
	bh=TkyHc8OlLkB9XiieQZ3EPbGLQgHCgV+vKTGH9SebxCg=;
	h=To:Subject:From:Date:From;
	b=EDMEs70u3d/aC4mB3o4Op4xotZm/MIH334IrbUSrTgL+H8hO0Vr1/F/Fk8LBUF86+
	 f/2QuW846PU8qP3ZjlwqU4cCnP4z7WNvEWpI18Z9RL9hXZ5mYExGaucle2uldUK07V
	 z45nqRM4VKrBEc8nPr/NBJrXbuTl4zRAxv/wNrsKCjHFozXnn43SvjN+89BQut7xjd
	 0ZkhTH6e0btSiSa/WyWy1vK0D7Ykt9MtsfFZtScwYgibRz9X/crSvvIRYkgdpU30bS
	 IL+RmJBMc4M+J6pzjD1Dekedh7zE13kGxC6UUy4JgxwaVpaKCxOlAx4RfqFRH6o28r
	 jNSfKKI6zBfFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930D8C36014
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174357959359.14165.17435964816786677329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e65c15ba7d156ac02cbcaf692e4f760ba6d464fb5223a7d889aaa198c84f93
Date: Wed, 02 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743579593
