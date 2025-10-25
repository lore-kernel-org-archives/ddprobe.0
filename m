Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424D8DDA9
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761383394; cv=none; b=VmP8zfOuX/l03Yyxy+bPLCgQ8pDUQPvaUEFCUX6iH8CBxr9kb+JvbFaYYD/q+bj6i7umeRrl6If30xYoiJkW7zOB85qUqZR72c6s9WS747l2CSbCl0Xq0jb618yHc3pgO/22wfnZEoW8v0w6btMst3hbksooy0omRL7KSFFIhU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761383394; c=relaxed/simple;
	bh=/mnduI2KoXrpt0RbO6loOQGPPA22AIt0UC/ikR5ONS8=;
	h=To:Subject:From:Message-Id:Date; b=IsKGS+wPlkVZT+7VFvpPxCflsW1dmrScBa4rduxO9uApy3fNDNUfZZ5/2PXtVhBaheYCwdUZd9o609PkrD3VV9YBbM1aOmMaLQ1A/2T+Lx7sdOTucWTIiDgpEQCPQiq1H50JBGRfDako7u/O9+9zks8qi7AEFC7Ssb9YG5lkiDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1LRCUaJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1LRCUaJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E0FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761383393;
	bh=/mnduI2KoXrpt0RbO6loOQGPPA22AIt0UC/ikR5ONS8=;
	h=To:Subject:From:Date:From;
	b=B1LRCUaJwqHS3Q2tZQsX4DnvBU0Iu2SXu/ylYBmCHznyynpPvaHHiiBUyeGMHQjZP
	 OMgf0sDiDSFr7TldN2fwakc4qfOLqr6QerkTDRwVSc+7oTkN8splj9c8eHwWkpXnHJ
	 irNvZiFxKzJGQVRJjNbi/bOqA5n1uvKzaZ1udfzfCXrCItSEqswX073ZR2iryk+4I+
	 Y7tv9QWGozU9H7BxWf/tYHlPfaSi5beDWhmCfFpezDgrxgD/e6//P7UOxbYA46Dn3c
	 Dq3XItf3MsZzWJZaOBCih2Wggop/lxFVgkQizfbgZGrl26L5xV31adUW+OgSoo52By
	 feH5GDLAEwBBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D2CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176138339358.22358.13202391369770265036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 546632d44eb1935a8050561483023a2a50b4bd1716d865a05aa86e8a04f51305
Date: Sat, 25 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761383393
