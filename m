Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF3E4C81
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737009354; cv=none; b=QE1dIhb9rVZmO1OH6vd00bwW4AQZyitJ/EIEV7oevfR3/0/YF/kIeY1RLyNBh3FlTewLcZKI7ALhFTkrB3qNj0yj/20uobsVZ0hqcGRSy6ORoZqhYjKn6zeWGQuweu6anANMF3R47dy+Y8SsdhWehTIW5rxpCZvY97uLqREX4Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737009354; c=relaxed/simple;
	bh=CwFn1Y1463u6+klxhoBKmG6/XiBRYSB+E0ySgXOVxs4=;
	h=To:Subject:From:Message-Id:Date; b=KGgj9MvpsARRwWFesRww8KKwXrBJSI41cugtAuHx6z0bpYPMht6JO/bxBTQTXCClmGWhIwV5AVHg30Rw0bpjxXNFxL9oUOa/7frllkSp+Op8opBF9d6dLFqQWcN5VB7LjGCTLqlRaWfx1Detfia3vMcnIM3rfyb8IUkvyEkgjv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNPRcwSm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNPRcwSm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB832C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737009353;
	bh=CwFn1Y1463u6+klxhoBKmG6/XiBRYSB+E0ySgXOVxs4=;
	h=To:Subject:From:Date:From;
	b=GNPRcwSmvlMtRzm3H/H9vvDh/c5m9hSR5vze2eMuzUzJRJcWEn+DG6mBV4eWKp8eh
	 YOFb/KCb6lNExojLDOR8tYkoRUYFZcRiBFc1TCyQbeDwOOqLHK7Hn6K2+V5jeRRlaq
	 CSccS1oYze4doAivASVogARPTg3ITM9m2WI+04KvcwIVjEp8ZjoxNN/VI3KO62Te8F
	 70mI9PIhN4ZxLrkKdwtavwZLzzceuTbhXOthgz2n3mfCIBQyv4MLiptyM9IKI3lxJg
	 //ncqF7P7HxH+TvD+Vs8dD3x7hVOvYK8AxCu/I2Up17BJwN7Y0CnJqQwqh+2C2DBJA
	 1+fBAMSzmzpMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E89E77188
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173700935360.26356.3791735103245957819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae46669c2ee75b579a18ea24be850664ab697c3c4f37b4b27fcec25fff9b6b37
Date: Thu, 16 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737009353
