Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488C4155336
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738490754; cv=none; b=Q789IVYDarNirX5phiP/LhjFMIqmrp05p2aoiuCB3XCquWwkKR2/irADV3gt8NdOZEaf4QBkPYuKWVGGoCGn0yz8ZrBka0HrOt/S+KtevPNBarKz34Wj9M/W3xLzDcG9E+k+yklmsjswxTttiRcK5gYwNg9cWXUiSPEQcgRvlLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738490754; c=relaxed/simple;
	bh=T1oFaQDCbImUH8QK/q3KjtJOZ1IXTcHnl1bbTdWwHlM=;
	h=To:Subject:From:Message-Id:Date; b=NxAcTTp5Ft2z+q90t5sQz9EllsTBmKzbUqaWkwIt9kDqGjeoPU+W/SKmYK49FWOOyqcK0jOVlhv+qGIzLy5kSaaLKL4/xkwDASCvo0y1YqXXSeHBGuP1b5KuDS+NtQW4y6NKyHhWgrN351cWyK5D5ds5S7762rPGAejMrw7rtME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DghHclpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DghHclpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C65C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738490753;
	bh=T1oFaQDCbImUH8QK/q3KjtJOZ1IXTcHnl1bbTdWwHlM=;
	h=To:Subject:From:Date:From;
	b=DghHclpm6WqDf5b76i8pfpQodyIMDz1hm0OztiluO1AjoxLuy+85L5J//kjPfdRKE
	 +mh32C7OYwOPa6s2aHcMDauILVs/RviIyuMQcb3KS9xN164xRitq6bSC+3C2JLeou7
	 2t/lhIpuaQKBDxe40ixLI02h+MCpOo1m8DCvh9cCIXMLU0nUrwKDOFZI5RTgyaGPmo
	 sYoQ1pdc7XATOtwcjceWnjCgAf+pV8qFwi0tPy25LSzY0u5zqA5+MWW0Jk7k0ICiWD
	 Tmk52zLtHCvYUCe1g0px5TwakyW77VxdfgEAQQUYDRsl7QeLpcEIDIc37CH/Blghyb
	 kpQUZOGpLaJ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC20C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173849075360.11598.17077115017248253655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68faf19e863544d08e666a7f58317dd33198dffa25e21984ce749d3fd66e2aa
Date: Sun, 02 Feb 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738490753
