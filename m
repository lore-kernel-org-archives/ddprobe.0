Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D454142E79
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 18:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718044703; cv=none; b=Qiwkonosg5G7HgVcAPu2nfG77y3o5HsvzSEe0EAatQkjqiIGI4lJOJinkHcGezotn8j5r6I98wocCo+sS+vcZ4RZo1h1c8HmlSBfAXy4aHN7aXf7p71KEUotcpIa5mbxy41eVHmvPATYun213ioOJOhczgY1afH57lJs3EY08MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718044703; c=relaxed/simple;
	bh=mClBYpZ4mBPlT+Xit+JgB5Q0GYKy4r3j67xLz5MxPr0=;
	h=To:Subject:From:Message-Id:Date; b=XFIGrrP/TULqxOjjU2RnUP93iKe7g878srQQ48HG+f4i/fMZBmFmdkc+GYDnDeUQfJDMFfgR69WyamuxIAKBGYXHgMPz2eKHJzwZN71bkVuYkFsk5ZmUTMJqMN1/P2vMHLaT38WYEWKOihmNwTMDNuoSpwCVIkOZ5EDxI+IZ5fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxJne28K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxJne28K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3DFC4AF1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 18:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718044702;
	bh=mClBYpZ4mBPlT+Xit+JgB5Q0GYKy4r3j67xLz5MxPr0=;
	h=To:Subject:From:Date:From;
	b=dxJne28KVia7irkPjjRrZGaGdaIuz8eU8MH0Arq7F6081yesMSumZN8DS+83zkIIl
	 IakxJRWZPYl59Z5MhHiuNg+9qD+gS+xc4UKS7Vht42DOAUYege7TChEP+2YRdXA/xg
	 Y7zRjmOeWJQzatdin9s0rRqxwsYQom9obMjBh5dvoYKAUFWpeOS3sNFL2XMTIMnVcI
	 eAPviWtr+p2WKX2vL/uOYO3smQ6bRX5k4CuNwiCCNqrBwLCMm6Tgun092qXwXv8mCR
	 WnOH84oqaxEZNUCv7uvJD65m+zNjfGpuaDOY/QzwIzJ0E8VHLeJG+3A9yWsOy1i06z
	 Z8Scvbi1ua4Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C734CC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 18:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171804470279.27889.14412259366365868580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860ec6ec7861c7241304eef7b3fbe1c8247f114568cacc77ca8c8a3cbb29dd8f
Date: Mon, 10 Jun 2024 18:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718044702
