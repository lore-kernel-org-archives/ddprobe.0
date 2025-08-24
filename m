Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6031A5B8D
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756016994; cv=none; b=WY7zhLS9dJV6HLh9rQgE6PFshvJHQEvV5ho1rgasafNcae6XuNkiaolHvy4UyxvooBicm3pwwR0yTUTGOtvNPsBqi9/QK0rDio52e4sjIKrCe406CnXFOxeil7ybE9bl+/j6dvkZuDd3J2ggsdcShYPmjuWu1HDPmCL6jFPMt1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756016994; c=relaxed/simple;
	bh=92IqYTVojT0Pk7oaQlGfTU+nQ+z77xCcW7X+RAx8og8=;
	h=To:Subject:From:Message-Id:Date; b=SNxsbqdozAa+bzPJwIDaNpYL44HHBFwB5MMZ4g603ADWRiHcIV8EY9ZfYIydnZqL/Gy6GRPHCftJJfbLyfQpehBfZ2fGQzlQXECwdP6Cf97XfWPFdfTzSSohkki50A67qXekw9fpqge8XXxadNLqU4XdTuructOx+QF3uj4LIKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCRZjBs3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCRZjBs3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36EAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756016993;
	bh=92IqYTVojT0Pk7oaQlGfTU+nQ+z77xCcW7X+RAx8og8=;
	h=To:Subject:From:Date:From;
	b=aCRZjBs3tL834LSB53Hbr51dUnIy13ynhRZD1fccHnHeNPFRfJhcYEdN+gzUSrwtC
	 KUsMK1sZiKsX4GSYfDt+0T0QshMr0sPtEBNr7C9qqub0ZDbHTpBaph0yGGyO4qdrfS
	 oBSoLZ45y6jsCXSy34KLcmv9OQplWtHkkXn+cJwN9rAVzgIOhLe9m1P47TjdycpbIk
	 kgVHsT0D3JgHujO5FlIrwV/SOKzYhqaI+qsQtYhbaKUoZa0aCgjQAXzEHLYQCCkELR
	 VnmSLkI7dNWITZXxuu3lFZXsZ7IvOQ+NGMIkf/4HlRqNZcViMjmVkey3dmK0jDyph4
	 PjIouRniMmmxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A95CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175601699357.13474.6669679510097759500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b597dc05cf30180e58cfabe0995cad05d12b618eb6cd756722e9e078481d2aac
Date: Sun, 24 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756016993
