Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE6818D
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726358754; cv=none; b=s8SOdU7gbZQJ7kgY3LWB8/ZjRVeLv/DWZoQcpa6jdS7ib8MYAVSpkuHujczHWdvSLpVsc/eCmajb4P2M4o11585jcmuv9E0zFsS06OFBNSXwJQgapavXsKouogpgU2STuozK59028iT+HIQFBUZsQBTyv+dng4u4agicsjQIgSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726358754; c=relaxed/simple;
	bh=Gl9uT+yirgVr/z0IaRuS8NqzQUGtkOJtG+lquvd3UMU=;
	h=To:Subject:From:Message-Id:Date; b=oGVz2aftaR1YOKvO602DoCjFqm3CZgtYku6mC2tBIy1Zme/FHP4L00glh3l9ciJ8Hhiv8eRVEbnkqPWXIl0I13IdcmF6oIqauy+4ocUUceZVX3i+VEvFEmW27w/AY44V2xaIEe4YW4PwSipdSHGx8PHScI+fpN0//YDfN+XxMuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+rZljMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+rZljMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B230DC4CEC0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726358753;
	bh=Gl9uT+yirgVr/z0IaRuS8NqzQUGtkOJtG+lquvd3UMU=;
	h=To:Subject:From:Date:From;
	b=N+rZljMFtP/VU1fzd7O4yf/DXuVLMFYgPfLv4eO4gkEC+IxF6Y9Bjh+IoOMCmxIkx
	 XNO4yYr5l4aBrMvSvbxHwURekgX4W3/thkm++r+6V9EXGZEnX4YJsYDnBYVo7WjmYe
	 U6x2+HfAvOx2YVMhwwCo4JupPQmkXY1pTXRt5NxhjsOEmeo8xLREifj/g7CgbAGGK0
	 PAj0hLeHHF0BESmpvrVajTqWPw2QDMPugSlK4IjjDIetrAlmIz6bULbxWxugGuXf9C
	 O6a1L/YrLwSezmA4h8PDgcJzDQUO/0pFC6q1qYzoumJots63i/YQ44VKcae8NE+vwG
	 eAsS6abQnqdbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96409C021BE
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172635875359.17010.4924589411840944085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1e4c0f8dfef6f773aad0ecaf50524c34d222a415dc78653ddfb7e641fe5a58
Date: Sun, 15 Sep 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726358753
