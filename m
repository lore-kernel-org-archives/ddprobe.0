Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318C918786A
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755045594; cv=none; b=ESnQcxY5MN74zLOZjZ0vKJV0gL6xyIjDPSgFbpu3Gxwh3oQEF3WPdzLXZBKKMJz+OOGpg4FQb2gk3PUgip6Y2Tktl9EkxTOl0TA6lTPyl9N7/zQdkWyhgoT1DK9uk9GTJHoxkS8kNwDDn07M0IDe4UQZrC5dcM+YFtKUay0o7uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755045594; c=relaxed/simple;
	bh=XaU9sSffZnZujVwOSM3GnpBWHaEn07XbaMm7j7iA9uk=;
	h=To:Subject:From:Message-Id:Date; b=CU7Bkg8WQwQ6dBBsvx6kF7LSaggDFerVKv4QneSUY3VrDpvHnM5YIgK4QIhBJfzAi7uC1qmY8OPxbJi9muvcoRYc1cs/GPDfw4Bc8Fu3O6wPxyWsnb4u4Z3IJT62+wmCO+RTR3+0htXRCbk44IHZHBeK8X1RkVYIxt5GB/amg0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDt7xX7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDt7xX7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE5FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755045593;
	bh=XaU9sSffZnZujVwOSM3GnpBWHaEn07XbaMm7j7iA9uk=;
	h=To:Subject:From:Date:From;
	b=BDt7xX7kWlUxxxpz4pM6ChM7dga2SZuX3YSbm8gw7LlpMu8ThkUXM3THBdPWTh10X
	 Hl/oLhvgc2mCKkh1Hzr09L5sNv6MkMEI/vEWbHp1sJKJX4U+v+5EoLUBUqy4Px/TJt
	 q+hrPKBe7nqjWeuFJyziaDQzxnR8LHpiSS+xyRUsgJdbAUKpl17Wyfm13FuUMrdPRh
	 i5vpNxTGfuoNXDmNHbi7zWGA9sk39zwDW+nLTajq0+5ZyqsbGnzE5Xm+czw3ft0zLf
	 K7Eh1XCxsIrdpfS0/qhGZtLrgE0Z1ocEh4HD1lndC2hsVjrVAB3suG4hLkoEpTAWgy
	 KLeic3SqoVqhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1CACA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175504559357.30611.4633347293693411448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98cd485c117c6a0d5d80728617a767f5b869c862ebb1d37f737316468b58de08
Date: Wed, 13 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755045593
