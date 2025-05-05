Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3105D17A314
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746434395; cv=none; b=DWu27yaIEqAfgUl8Pe+zXvnY3mIciRJrViHiHOKhI4duK9+mopr6jl4GgpRyKEsfOuZXG7OgM01gI6EipQK/ZRUNTyoN5c7dgpBouPA1iX6w6j/bksJt0uxuR7zYit5VEDy/LtD5cIPUhd/yymSxUACgOQyJNbL/qjHaVHCUYIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746434395; c=relaxed/simple;
	bh=uDFMSsv9AX+Zpg9r565sNIaJLJOcfW786A56dVbTwq8=;
	h=To:Subject:From:Message-Id:Date; b=Cx4la7EHLGw4OxuFDHA39/xaVdmCKUXzT/QbChs2PAxvjVLlUerEdmADX5CKYaSl80O3sIFjnwq5vBSc6SPopGzeG+R5Bz+/OsoQvJnbdXprl/vunpw4Q3F3tU3sFPVQwPFqzP7oRlXjF9gCi8rXRqozzZzpdMqn7LeTmaSpC/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GT/qJZsV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GT/qJZsV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E05C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746434393;
	bh=uDFMSsv9AX+Zpg9r565sNIaJLJOcfW786A56dVbTwq8=;
	h=To:Subject:From:Date:From;
	b=GT/qJZsVyq1uBM3Z/JPMNrOq6wHyMuh38DRtV3nmP8TMP+PdDZgeIMfThjOkwrz0h
	 /SQ5NOqDqp7uXEKkhDSgqlR4XT9d0Y+OVc4o8BchANFPZtNgWOJLoVYZzWKLKOGDge
	 i/8UoXeZO7/eeMwzU6WYNHK8FmHLr0Nf0Buv1HYh1lN/s639XcxFIIi46nuWH3PLqq
	 w/HLrJbmkPGtXJtFQfW1sYAl4YLzLtRDxYUDXFvzSxbOX2aFqSGzQCdhXIQb0EvlFg
	 G5xXYpm/nxMXzIgaCiq6gFfCyrlHzYdJbZKc7ihPJ6tyMNPbBVRVBbmH1u/tm84XcE
	 A6L+mQmPZX17w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A8C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174643439357.16177.3838454841075521244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e036e6259e4ecdb293a58bc267b62d2c204e3de2a2f2ba539835fd373df2b46
Date: Mon, 05 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746434393
