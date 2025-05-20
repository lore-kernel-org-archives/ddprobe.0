Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BBB288AD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747732794; cv=none; b=NdREZMp5zF+g4V0UH6pOptP22rqIJTdKYwqp6SxvK7YutO/Z2WCWgTO78f4URd/2+ScjStqE6++wZo8retaokVJq7oJWQqA/dZRSOVQ8JIA3psY2FNtDFnw0nc30HxEytyDn8CS1LrnXcUl9BIBEnISnoiwKxex3k+aL5bAhh+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747732794; c=relaxed/simple;
	bh=1I753Gzv+1BcMHGktobUA1miiu4EAl+rpOmcFcCBoaU=;
	h=To:Subject:From:Message-Id:Date; b=k/ttzf95PpLkgAaJQKbHlYG56DecEH7GcX2gFFvr54TpKdwP2E124dLL3TB1P/15L34zM8z8GR2ZGp4qMuLqtXMf1mRml7ZF67WvvyvmY+VU4LGi+3FSrkw9NjrORka4bgkAHzGO6qaOQ7OV/4P09wVx1Y6ID+9k1aYo2LJa8Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhxoUago; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhxoUago"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1041C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747732793;
	bh=1I753Gzv+1BcMHGktobUA1miiu4EAl+rpOmcFcCBoaU=;
	h=To:Subject:From:Date:From;
	b=dhxoUagoBw1ccx3AfI6XSjR95+f3r6GED1OHv3b2IhSCFRqS/3VrOfnzl9apIBY4M
	 pHtUxubm3p2bUCtUtEG7fARQLbiRrZNZOIDw+fJe9BsumBLp+xkdav32CUXIhQCl+3
	 6ZF6heDw4M2bVc9+ebvr9BQVhkZNFY2DntksGCu79PrUNcO2Ilpt/wMFXrH2Xe6Z7y
	 ehhY9YPVPU0f/NwrbbKGMQtlyLH7IGtqs72pZ5mYLWB7ypoqEqWGGWvFoBLrLoPmwU
	 uMTGHOT1zvin+N6UwEcl9fhPcvznvGoU0ueNhfrfmXW0+EK8UcFpzWAwn1iW0YbZz7
	 4d4B/G+AAlNFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE47C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174773279357.20027.14072718476623278987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7a79fe2f675da1db490498580495a17f699c48a8b0087b31b65dc5fcf07510
Date: Tue, 20 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747732793
