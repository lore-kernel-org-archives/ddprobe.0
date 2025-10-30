Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C631341645
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761829194; cv=none; b=QQDIAAsL9CWMqIasvDhyP+jg1FrmsK4W/N4fA49G/PxRh1TKpklPBzDarjARQ/Gu1Oj4vuGpdB881Gdc7biv95kJl3TgouUeyWpxemG53qu87OFzXrRkQQuYLCdwJCt2avWrVznMjH9irA20wwc0xvi2cCbC5Q4eLhakkultcQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761829194; c=relaxed/simple;
	bh=2X9nnEwR0Fqz603/3RMFhatW0KspYLKQFNKVXSaHsAw=;
	h=To:Subject:From:Message-Id:Date; b=HaeWPLdSDp8UdmYkMT9Qb5T2+Z5g15e3geu8WMaXHJCz7M7ZOR8f39SPJVDfK/AGmtQQJgUDIGueZEGICoAz47w75jLOPgXRc6Gga60YK3fHwDnfBO/Xgw7wCDiwg058NKtcJBA+Iorq8iWlQLIHcH5G+G4x4kRvs+3YJQNuTX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEr6yGhb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEr6yGhb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C01FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761829193;
	bh=2X9nnEwR0Fqz603/3RMFhatW0KspYLKQFNKVXSaHsAw=;
	h=To:Subject:From:Date:From;
	b=vEr6yGhb8JP9NnAJ6JCkKzEJp5Kkge6anVRS45pFd+fw6ory9joEKvF2Z2hkTlgzu
	 zR61CvQagksu29MFASQmypl1Ecjvk3Q5XAludT+uP2AK0BpZEE66+JqeprAT2YZRo8
	 R7Zg71M5GX/FBuO+oKvnJVNmGcZyhZ3/RvA8ph4Kk66LU8i/y1bOFUHjfP5Nz7N0J8
	 0HslE0VsHbVI9jstI/Qxqg+9bzdUAZCgA0lbsRIL6N7jBVowiUtc3I0DFfQdjM+82L
	 ma/6FZlzmfFkM8TG7SRWgXjkyBJ1ZHO/eKR5IbdiK9xFXQa53LXGsMDw3Jh9o7uL1y
	 VWonsAbYlWNVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0DCCF9FC
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176182919358.349.14289389137690686121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e5b7601bf4058330e77c76ea3af53f8209b78dd792c23b623010387ab29789e
Date: Thu, 30 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761829193
