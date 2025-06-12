Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F32415C158
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749697194; cv=none; b=UhcOax1Gm4gXIogHb5Dwz37xrdtQpHw544lg+bQ4OXO5C7MEE9X90iQBDVj0phOjOPUChAVYl6D3MNRczoCzaX6iySz+2f7OXPQ95h6sjEdCywgZIf4KCUzawS6125/R4i+WK4gC1KucyJWUJhzt/cQYYgpkowKGKOF8Rnrc42w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749697194; c=relaxed/simple;
	bh=EncR0BaIMY7znKaG1lvE+YCvO/FnEAtbxJ5AKos7k1A=;
	h=To:Subject:From:Message-Id:Date; b=L9Y7GuBmYKQCu7uhwMMW9LdUdyVqJfpfODrsrHpLT1otiV7lDq0UUJAv9oCgXiIkwwfPjK7payY77wOByl4Ra3+PgUBc9PcM+OLT8x/OQEX8qx1vIJf8Asw9FZ9/qqQTgG2OkYVER61gH/Jh50+njGGHH5FHa7PxkZxbUqiEnA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHIljZ8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHIljZ8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29D3C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749697193;
	bh=EncR0BaIMY7znKaG1lvE+YCvO/FnEAtbxJ5AKos7k1A=;
	h=To:Subject:From:Date:From;
	b=GHIljZ8yWH4DMtoo6v5KLykMbu8M/su5a/fYW6tAj51WKIHM83fmk8YRQkFjPI3wH
	 i5CfMG69ccACx5CgMfCwma1+RT1LaCtCCUq+Aep8nh89BiR2ep1b5Jrd//1Ct7Hl6O
	 hEQc8wIdNX0ZdJjKkz+g3RW80kLnzPkCBkLHurgY6oeDK0qJI9uvXsFm1/8GSQIPXh
	 +8cCBjMW4JtkOvwU4tZgHY2s5XBmA34wSIJkVb8/HeiTA63WI/eQFVenIyea2v2FzM
	 0Pp7qHKLfn/TwS/Gd2hoaRiGKdJhPRL/CQWdVttWKWg6dvgaa8USdtRAbiYGt0KtTd
	 0uge6AUPiYWNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F22DC71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174969719357.26297.16416416809888024820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b5883dc5603c724cba8d6f36c67ce395189f1e8c5f20a35ef7579be9f20f0d6
Date: Thu, 12 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749697193
