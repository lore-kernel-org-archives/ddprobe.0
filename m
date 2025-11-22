Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3830328488D
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 04:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763787114; cv=none; b=fzJWM9SNTYz4lpCspdWCTDq/jUhp7uNTA9+3USsQ//PM5/XZSTdDcnEXaZEFjMNEeHJCpq44bIFnSyqAs3rqo8gh5dtLWkEPKZkSHi1DX2SGh+SikJ46pyAWLnTdZVg8uFR/fsbXu99Q2Md0HxB0qCPMAeNMLLoNsHsOYdz9m+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763787114; c=relaxed/simple;
	bh=ydOXibkKmADd3GD/HSE1077N5/TlI4hLzmPIotV4FXI=;
	h=To:Subject:From:Message-Id:Date; b=HlLmSITn6Ic3RrV12/mdUDjbxDP8FjGPx39gX2bRd/0p6GW3Q68SMwu4uDATTnJSsP3gpjIaOLw1ak/UxmmO0jIEdZNXbaT824vya2jnWwGt3gZ9sc+NnUFHeOHgWR6oV1KDJoKCLFUghAxhYgox+wUtcfwFb3w17We4BQqlyZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sigd5l5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sigd5l5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C26C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 04:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763787113;
	bh=ydOXibkKmADd3GD/HSE1077N5/TlI4hLzmPIotV4FXI=;
	h=To:Subject:From:Date:From;
	b=Sigd5l5m1iLw3C1mM0aTLdXF7S26WoV63uYI4+Yq2phQNO+c9JyjfqZgnoZ4+yULy
	 +cUiv4jTXD5SIfDMvhgAByX8qdVweP4T+PrtXYdXnrLBkEgjwQ39tEoQzTMKhvv2mi
	 qnBYlPiIgJgXtKcpC8LuWgzVU0/CmzR89jQlNrVz7eRcWF0746lnND879KBGlJ1fLO
	 6rjfTUok9X8WgnF5UorkfyIAtDaFaTHl1blLl+HBiobiZLnsUO+JAPpXXzwyCyE+xP
	 CzvofGCMH76vRZ6OKZiU/TqozUowLpVBXorVKPhNiTSR5VsWQL1NSP0kphCG9XfhBz
	 YPS4+6jC9RX8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9376CCF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 04:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176378711359.7186.7362176368997644677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2a9d7644c231f21bf45da28c856324506af58b3273e3368ddee2b328bfd5072
Date: Sat, 22 Nov 2025 04:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763787113
