Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087002EA476
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753376394; cv=none; b=pHxhs+XeJ7eYaeH1EHMaL0QZusdSgNREEZ2ROBR6fDuIhJYjksSBTCLc4hnB7UqFamEz/lWpJlfg/Fx62acarNdtj6usgm3dJhYWXQREWBMJYaOBvXsjQewrVsBXLK5ONFbzv0heL0GFZV2muF3y2c1pYEE4FmrmMMFgfGi4ZT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753376394; c=relaxed/simple;
	bh=pXD39BHTkaVj2eLfxnKD6W3CJ8cwYBGjjry0GUHD7MY=;
	h=To:Subject:From:Message-Id:Date; b=i8DDhgIPvcfeW00cORdmaAIup4tK8jvEIVezh3ggiWCjjW7BU+CT1whPyHZmIVaRNbgj33Hm6WzKGK6BuHsCl9rRLB8aUa/94jsvcyMezyslOKx9GggBaWrma6TvL8qI0MF5cis41eV740jLc3yVKAgfJVnPzY3rBN8tZ8NL/9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opNj9xjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opNj9xjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBC3C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753376393;
	bh=pXD39BHTkaVj2eLfxnKD6W3CJ8cwYBGjjry0GUHD7MY=;
	h=To:Subject:From:Date:From;
	b=opNj9xjfHytoKHSON3mMFe8rzxP+mf+7uPe9Kz3HF04APNarLlxwg8mzGwCnN8j9+
	 3GWGayxvz6LoadwnagVSnP6ixN0vS6xOY83yNvaSjDbSzwv/RCmrAowau9tP3JHS+Z
	 UGFqAi1Uy9tXw2ZvBEMxoHtja1WpTkITpv8QxlulGHaK+lx9WHk/Kg99aKUz2zYg24
	 Fk1zCDIDKs0kRrJC3OY4kCgjbU1EVe5e3eIOQ8heVflBlDNzGUuAlFZ9cVAY6+Amrs
	 4BKaR5RolcnIy6RDXc7lwQDx7m9/sWS+N1O1E4v6hA10koGB8aXQTZHAb1HuaSff+I
	 4lLbtbcN2034Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE3AC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175337639357.9474.14211359607449879338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c1ba5850248ba6f6015e7e37da42ab428ee813fd149e6a1d34038107b883e6
Date: Thu, 24 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753376393
