Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8DF143756
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757177394; cv=none; b=D2QLCSmPv3pAQo2FDPjsBouD7rERrr/EJCRwkfV5pKC7D1nA2ybcKfrdjzC+/5b/EKdxZpBQbwYatPQ/q2GZpjnrYTqDQHC61vqItfFZKXA9JdDzNFRlhe6pQTdg2LQQqjef6kDxOTrw+c0jsawZ/rtAmR4aM5YiCWbD3MHeYVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757177394; c=relaxed/simple;
	bh=bwT287EPc6sX1uZpD4M/D8+TMJD6axiW5MZU4T6LJoM=;
	h=To:Subject:From:Message-Id:Date; b=DXPOYMWqQ7JfrEHA50GLH7rMub/iR6TrESceLaHWoqxPT4orhfZoi0+hJJNqyEec6Hf6yVahX/rg7snsVLZZ9eEgj8USRgnPSRIFcwKlc4fHMXQnhJ6e9Ln+ohtEZgMOYUVWfVFZyUfT4rGny3YeVz2nX3UptNNBVRcpKmzl7mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MplTJfJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MplTJfJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35DBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757177393;
	bh=bwT287EPc6sX1uZpD4M/D8+TMJD6axiW5MZU4T6LJoM=;
	h=To:Subject:From:Date:From;
	b=MplTJfJ0lSOcqL0UL4kmilAZPzeNJzDbM8KWoX3PUjjr5k4bRA1ca6SJRt2XPmPvh
	 jZ98XIVOMwHatWL1mNkDtKYFQcAx8IYVYI7IaB2ByUaCnRloOOB+SgdVRrABzYvJcU
	 j4bvG+EvYN6wZ3nwRqT4fV+MpFbmETAX59SzXGQlqS9ZD8d0NzcULS0OK92TJT6eBo
	 9Z19dj5tmBSRK0lpeybA2/TsPhCQl/DNBU8OofKPBsBDRYdYAIEZFiXb8STSoNs99v
	 UF3AGarmBoCWCq4A3OEYAgQAaOVA+G/71ySv5ZxCTGF5J5DAcHbDWM3KdGXivWq1Bp
	 V+4FdkrN/EJ2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922E5CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175717739357.28777.1686641014299997617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2efe641cbb7481db45cdd04e180196dd71263b92ac023b4ab0988c6fb7160a47
Date: Sat, 06 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757177393
