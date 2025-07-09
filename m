Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C877FD
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752027595; cv=none; b=LLaTHkl8FdwmLlxQcic85fx3wDm5df2bkRKKi4T6ysncDN04YCcrhjsNxi2ftNoP65m4DIWfoBCseHOin7/HdB27IqreKkYUqlde9T8v78KLpiY9iEGWZx35dSVEzGnK2PY7ByXcB0jBnXWXYdKk15aDALJtSMJsuBfCa88Y/zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752027595; c=relaxed/simple;
	bh=l7ILLjerfGCLelxSxbkT9byZLjk8VK8OI7dp585HXvA=;
	h=To:Subject:From:Message-Id:Date; b=i3hOkBndH+ZiAz87q7Y4FBQHMLNUKKVjPxwupPyqT/VmS6CCf7SvQznr0klKyy3eBf/AG0ow7RzAtBqu6TXSb4bpRD31OLFLT8RLdbsHxPqX2ncK98EI+gmuD79o6dK/kbbLKYyZDZgYU5CIqmujCUuh6JWdSDcvm/DCp6449k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnwNBfE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnwNBfE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A228EC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752027593;
	bh=l7ILLjerfGCLelxSxbkT9byZLjk8VK8OI7dp585HXvA=;
	h=To:Subject:From:Date:From;
	b=DnwNBfE48mm58EfjNUTm/WQoV18QXOmQLXwK0hP8+UDdNksPAfeXXCyYTDhwcC7J9
	 x70BdC58NQsGOucQQMOihM0zQJQ6xWCSJ03Vo6Dhgqapx/z/XQudEVEnkTi6bMO73K
	 ix0Xcae47sFJQZIt05XdjAOKt3ikv+aeInS+/6ckN0jipCCJrAOv8UkPwmp5vHg2pa
	 oamQFLHgr3R95NVssKUyvIMW+SzDZtFDqLaF2H7KbJTDaSVDwS1QJOkIcX2VAn9O1o
	 RHtd0Cl1riFZeSzmMUne0q2nSaMyZD9cO5TMATL+1RPrf5a1dkC7bRsCgXrAiyUA1e
	 2D/G81wUtE0VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F650C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175202759357.5783.3999399213755400702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e53b6c8c6d73f8a52a3d198fa21e8992852a4f16dc2028df1c16dafe2794f3
Date: Wed, 09 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752027593
