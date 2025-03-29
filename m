Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3800F6FBF
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743250194; cv=none; b=HnBpMUpbvbbo8G3Ml9u3iJZMKWMpHub8nCpco0frp/LKPAFe/T62bZRHJYLqtnhnK6mL0Vm49NqCY73yDme8e57bRGzPtFORva3ZeKtG90nmKyV0ScJMeMuPIuhiyMk28xeWk/RhYidPTA96J/u655XnJiYacNwyImSOBoeOTJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743250194; c=relaxed/simple;
	bh=ECivefKqnflEk/lGmF3ywWShVUNpGcgCh/qeXbZRCt0=;
	h=To:Subject:From:Message-Id:Date; b=c9NNC5Yn2VSzpvCxxFQfLpDr90RTyrPWJ0kAkxI7t7UVLlYt1ygwgPY+Z3ux+UdM60TphmiUD/rmWd7lcp+ofox7q9mCj5PtiIIBZMdDxPOB0+nUsLecj1jd3d8smgRfsd9icZqmInuqKCQWRqUHjiD+0qhUGH6g8mwPCTio1PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0v8swKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0v8swKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F4AC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743250193;
	bh=ECivefKqnflEk/lGmF3ywWShVUNpGcgCh/qeXbZRCt0=;
	h=To:Subject:From:Date:From;
	b=G0v8swKKHvkaGm+o3hSVcLE44Hz4YnIYLTCcVqoLQnHknOj5RNKkAyFHjruAab8aQ
	 1wG+ayXcSqwgqeXso6ANPy08bRyUVdnS3C7oNqE+LUCnLDVFzodO3RN98XR5g0+Gka
	 IYGLP+geyJfOhX4cysUffAU+8sX2Ug7K9FQoGU1Fjwz8+Pj7N+TDLsDM+k1ldOY5Us
	 ZvLtGDBFX8AXSIgW/P/WFZwSLvK23RPzDp6cRWkRUt8OWKreB2+eelp1sBSWgYJSKb
	 Os/nkTKF62ftO94/iZ28QJWqqHiUES0Zo/UcnaOELke+tWKT834wCsqOXJUWbLmfiy
	 aZYBu3m16s1vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97753C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174325019361.32078.124977850067228961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a00f62b6799e100641bba615210618732251d9e6b7b35ced3860aa6331baa8cc
Date: Sat, 29 Mar 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743250193
