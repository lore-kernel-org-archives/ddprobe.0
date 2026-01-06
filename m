Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088E6338932
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767713034; cv=none; b=sfvie60SKK45Czp0Lx7JqmpIFlaQV+M6SPB8N3V34kz3Smz7y8GXfHcWB5nKzD7bxnE0lzu5PozQFn3eNSm8Va8t3oV2yfgpJ8WkXYZqKtAtHn7B63f/S2lDAE8sz+2D26H2NQlvwYHWCbnCEM0HKkJ34tf9BAQ+d9bhzYAcdkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767713034; c=relaxed/simple;
	bh=szPuxx9I5K93n0yXB/oJY0iHtOXYh/NFEiC1Iqo087s=;
	h=To:Subject:From:Message-Id:Date; b=pfpEroNm2YkWl90XO89i0dfhhXmx+xuRTn+v6UvVz4AKCXmZONRLFPAIOQHUmcQHwIJrW4/ou1R+xh6sFn2nby8+h5UEvV/wxdNMsgR8fs4o3eOOwkip1A6I7pavU4wfPKFnu7eXI5uUHAol+Z9ptqqswKJwDEhhsENkFiUgL5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmKNzggn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmKNzggn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8FEC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767713033;
	bh=szPuxx9I5K93n0yXB/oJY0iHtOXYh/NFEiC1Iqo087s=;
	h=To:Subject:From:Date:From;
	b=RmKNzggnPvMfRgc8DFWwWqLaIS85MhYi85k8+/yFBgg39Bk8U0dtk57TV14bBIWOE
	 nTQkuUSP3ACL/+eOWCdJb9vTKRUyB2UYZXxPKr1PYFMgmcRcE+iMvWnKdDplgwA7aX
	 eoLOucZgatdI+MSTUrlVDnJtZvuRrrKd3XSBbf+80zlHqfjPrFs1ZmljMxIIu2u1A0
	 soRLTfVB2HDQcICSzXPZsKWTM2OeXATiNE4fS5AjrRpG9xu2coNUSxsLJHaapiOfy1
	 U9SpktsueX8Q5rsePwSAd4mVIkDWTZjN3e9BxDsr9/8yKIV3+WnDUjzFOqR5iGemFM
	 UzHaVoXEbnRDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBDFCE9D45
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176771303358.17020.10896466650158976303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f7aa50f6a16bd67633511a55c2df456090bacaefeba0ef637cd8f5899a82cb
Date: Tue, 06 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767713033
