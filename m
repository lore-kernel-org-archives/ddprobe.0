Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F64342C8C
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 15:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764949974; cv=none; b=T/xBxXXdN3XuQvixWXVB6vXulBE7nWFIyuF/PAuvYQfvKLghIuJjozJczs1LJl3uvl4j9O3la7kVTQKGLrlXNO+ZsColnTQ6dVPKtbP9agKsWj1fV6PgQwPlgmo+6cQcwnz0WPBi8BckxeRrx0i3PE/BvqnfP6348NXNty+AkV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764949974; c=relaxed/simple;
	bh=TeNo3XNPOgXhUE7MbrpmtkIZxgEwfTUFlHaDes9tTZo=;
	h=To:Subject:From:Message-Id:Date; b=UmHkRFMdQU7kJdDa35kxHelHmc42vY1LsWrQUCabIYGRFJkECXWuMUgB+mdz8VIa9lGGmKb8k4uxvqzLLJ43zYGRqvDbq/sDh7vNWQKa9UAf7zluPO1i+nuIfa33tu/nYxwPQ8L56DhIJC797Qyd8IFT6jXsWakc3IBzRi68i7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nn9MzTJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nn9MzTJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD77DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764949973;
	bh=TeNo3XNPOgXhUE7MbrpmtkIZxgEwfTUFlHaDes9tTZo=;
	h=To:Subject:From:Date:From;
	b=nn9MzTJigfdXLNsVSRRklOFmFin58Hn6HsjIFQFbG2spbcGOeiOiHS+HkcXW+Mq3I
	 2nTMNg1KmW3BAgbl706YeWtzD/HcIAwgxLtnbCKgxqgDpKXdtX7n938BxOulGmxAqd
	 wqDYJsxapGOMV6acBFQ/w/kEfRzpcNTHI9eU8mAivtw5ZEbdkayJaH2eW4tCHHHzYB
	 hobPR/bmacOp9QikZDp19j40atYfy8uNCzvDdgeZ+rOsCvUt9RTR5hlX1kHX1gJ672
	 ZjcU59elRqiyc9ub+6QGyZuz3D1je43zojALN45zhfbXrLRiP1c6YqXUqi1dZrO7oO
	 Akm1P2SQUMyig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988BCD33987
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176494997360.3483.3072858089042560898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4fd2055c2094f0dd15526470474a430861bbfe3f9533b2a2de2ae2130ed65c3
Date: Fri, 05 Dec 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764949973
