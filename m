Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF9D17A58F
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730198154; cv=none; b=cazbXBzyvtZmkTYWX+srNwr0UE98seM+wHNxYEj2M8gZkki5o8HKL9KdQ4OBC32rIUtneYaTU5d/79n9Hgfuynj7zFrAv6UO4ld43yK4rBl/j+Uuk0s0djb8zRq+mqa85a2sUmpSe9EuD8+HZP/AEfIrhgw1uLWttgQaSFn+ryI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730198154; c=relaxed/simple;
	bh=7VDl8AvJ+gC3WbRkp0EFnnJsc9/g7zfVuM3mgo5Svf0=;
	h=To:Subject:From:Message-Id:Date; b=AVC4IRaKTkvCI1k6flHZuascayPLJcpCybMM6S07xRuaf3roFitKJWvyVDhpN/lmNFDh/3S7HFPy+w8Rw2N+OVJ5K8PShx8b5dDh0F3f3W78O2t+ipdr8efsIAiwm4YjBvXmEpTDqUj3XAOAqJYkq1MzTUbTcx6PR3rLSFHgK1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BiZG+M5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BiZG+M5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4595C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730198153;
	bh=7VDl8AvJ+gC3WbRkp0EFnnJsc9/g7zfVuM3mgo5Svf0=;
	h=To:Subject:From:Date:From;
	b=BiZG+M5MW1wfTznmTzIIMEmqbIMj01UkXAA8qWQGXGEcQPWqIwbEO/bPRi5oBX5xl
	 iJC7JkJxuXoSuNKfQgi4jqNttxYbrCGwb6CT9cDfEec+qBhCMsaoUoMWt1JBpt5EeZ
	 AZ8WKsJThbZV99K3UdV0VSDuH2/D8ZbVj4weZ6hrRx0t6Q7h9Wgx94wYFFLL15iVe2
	 jtof5JpZ6rFMuVHIpchWdY+g8F3iUyP+ZzjBigiZmvvUkIx6EfkRgL1FHA2s9UEdFA
	 SaQA8X4CiugSvb7Ae650I7GZlFW6IZDD0+wuSdYdj+dDP1h6k5M6xW9/puKoMYXE0b
	 9AtZJjPrtdm0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1926D2AB1B
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173019815364.13155.11816622931223712597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85883eded96ddaaed6f2705e22eb6d8bb241bb6960f414beb89a336ba0dac12
Date: Tue, 29 Oct 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730198153
