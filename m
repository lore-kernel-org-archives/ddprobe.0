Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543141487E1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737432954; cv=none; b=ZGUZv1ekcvrfYGMOFVE2oSm6RZN1xBeXGl6RtJnvThAwgIXLkV7C/BV5czbZQvn93tmUZPFEK8WTgkOG4wUG3BN5gQVO/SaeWpc/NJ2pfKFDMgXDC+qN2+DNFX6lZEZkSvfps8mYm4FX75QDS6Uj2+rBhd/tIXxBNBmUZMB/ckY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737432954; c=relaxed/simple;
	bh=azaB2DcdQl+pGS34PdLZsJhhd9RkUtWCXsKkVUvlFyQ=;
	h=To:Subject:From:Message-Id:Date; b=kn/jXr5LmBxlOAbEelX1pSnHk/HRXycuX3oaUZYp1KvQGsVInGFluRedU7OdBNw/O+nWmrkOnJoKt+SXKHL5DwcDIgmBsNVhljZEACDrcbZmFd//TnUq6Wo/eqk2MOUAb+IvLWquIoqbnFn/XHcG7680GTt0LR3DQr7bejeevik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZn6yET5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZn6yET5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E65C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737432953;
	bh=azaB2DcdQl+pGS34PdLZsJhhd9RkUtWCXsKkVUvlFyQ=;
	h=To:Subject:From:Date:From;
	b=fZn6yET58oqsp/8/mUJIFVz6WMQYHJjAJwsxnodCocAnD+TDyYhVN2jc+0YyB8A8m
	 ruyw/8ymQ7nSvZXaWcWLidXnZc7L7ZVzL6sZNdQ/pHrm23bneiVpKQUJRgLQuemDnB
	 oOJMl5+95TKLK/HHFOatzw12y6sW2PMdQAWui1xJ+od3fJ3uJKWqyqoKav2mgI2+Oe
	 w9+5zB+mxYGDp4YrJjILx3PZPvad6nyj6IN1wDq/B3w0PjgfZJrgVlvwqcMLfI2UE5
	 17+qbK06b66eZd1L9G3yfj3VpWpLEJ9VGYPoGNWi6XLyB5rHM0n3TqhrvMfpChNPVL
	 4Tch+AVmVxBjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22AEC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173743295362.7234.13624748282715978349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a5fc9eaa8517fe22c0ed4afa3ae61ddbc13cf3c7eb94d14fb60cf89ae0f7d4
Date: Tue, 21 Jan 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737432953
