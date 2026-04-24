Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5AE34C9AD
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777067854; cv=none; b=KLLVt1tm7+mpKmfjRlFRYPDFAYYkXqcYQ2g1z6fQm5GcRUxa/4ZKLctBazRGkdlQJ7EX5PO/NCRu8c6rWCUjMAVTI0ylhEPXFqNC77o/DDuHle02wktMK3AjfvXpM3rKtt24gErsyeWqqmm0zOIvNjo4hFNVMieK/UhG3Xcqsho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777067854; c=relaxed/simple;
	bh=Z7OuHHKS0mnh0MwolaZFfy4OHG5ezFGrIX7OYC6UJm8=;
	h=To:Subject:From:Message-Id:Date; b=d6qsNXZHZZxzERqx7Oqsfx+pPyuXzwMuwT66JDUQS0C1NJlqZUvC4T30lHHOpxIMLN+mskkK4jsVb5AUT4XguWw92xYOLnGN8a6jCtsIwvislmfG1G6m9AQoraATST8wc3GqIx1uzFBV5ofSdn0SyCBbv73LHcyp4Lhf4scF8Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WL3CdKF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WL3CdKF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85CAC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777067853;
	bh=Z7OuHHKS0mnh0MwolaZFfy4OHG5ezFGrIX7OYC6UJm8=;
	h=To:Subject:From:Date:From;
	b=WL3CdKF2z/3a5KUANe2AJq4J462FI1E5lqIDFzvn5IjYYwVH7I7IWZuYGwqXilXUc
	 FlTKv3B3NUu7NEdnAkmyLpDQ6do3fO1XCBxjPwPJkc0nqhzco76UAdtl5GLHToNqhc
	 ZyEye7hwoVE/0SDzMn/AsCynqJ6h7MvX1vW0fLMY5jmruKQvFOVTHhglDTnoI9d1mo
	 PCQDvVss/XZnJGygFKqz0En7tEecZ2VZ4Jtem8xDztsmi4Xki20KpZYLWttdfNfJbq
	 IejmGzPECbDFfjA1U8q7xAN3Zf4dsqECyA+6v4GTDK+QCLb9FFEcmT4HWv6XGiBK4R
	 KKxL+MOsKqMPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F44FF8855
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177706785368.19597.16511181447253872445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70240ead6370895ac27f90b78d3f9151be3041d9f2c3259391473c4e5f855cd6
Date: Fri, 24 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777067853
