Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B5319C542
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755666594; cv=none; b=PNRtPwsrULZhGdB2HmgvPbUMmltkCfMnlgZI4OQgbz9K6WbwQO9xImdNigGYn3yuuEFAMRMwlvHdxrwXenTaW2kvcDDDaiQwxeqXgYSwmMcJfLA9rl3FJtv0AzIsmHMk0UxgYxVLbUuXdyqw/fB6i/sMLFzH3Bs5/W9wwYn5OSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755666594; c=relaxed/simple;
	bh=ILWjpSGc/MYgzxC/FQXWKLXApiXL1XcDgemk1ZK/XAc=;
	h=To:Subject:From:Message-Id:Date; b=u8ZXWfSBlef/3Zq/3g0d/5+bGMe0Ne34fN8G7uOx28a/Nlb6aFB4Re6sIG3D/JuvAg4+TrEkiwmEOtsbzYNu9f8Cpj/k/v/o5NJaSRMoc+2jL9K5j+wODOSe5u9HQgVGRDjjbfbH2jdHyUYL3R6maBuYtjhIz5/GBTj5ziiZ6Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9KExrdr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9KExrdr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3405C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755666593;
	bh=ILWjpSGc/MYgzxC/FQXWKLXApiXL1XcDgemk1ZK/XAc=;
	h=To:Subject:From:Date:From;
	b=s9KExrdr/MH+QifVlAe2ntXYZ1moO9LWHMjN3KZrLQjco4C6Nr/2K0OmYRCNWuuhB
	 KQ/+2J/PRjo4KOdmrrVu+Uvk0E4CL7mm+hb7fCatHZqtjcHuIoBxCX/4eFTE1lOZ5R
	 kYTTqshMpOutcLpYPpvIR5LDPlQ56hv2Mefh5eU+UCNrfA4mDcv6aecSlY/jEhgWa1
	 Pqn8VJHTG9XwfXADkJD6FyT96mpgrvtLETtUh+PpR54nngplvhZ/iWRKXFtGnBkWA+
	 KvL1xbQmeq2XkjBb2q+a8RwEAA6gw0A/STB9Ks4LXAyzIeM2SGPO/KsR6/2QzDo27N
	 pMt8v8L3kwGTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E32CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175566659358.5613.6492664206577355089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83372599f975f9c10b6e2e420ccc9607e81f653796317034bc4e90e1970ade6d
Date: Wed, 20 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755666593
