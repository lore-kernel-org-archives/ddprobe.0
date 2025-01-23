Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381CC1C5F14
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737629754; cv=none; b=J54PEJtCRnV8zZ1FGs5bjy8gr+uQbW5Hjl4gwP6uLoYxokBw6EXGqBVd9Y0Hd/ulv6dCang7bC462gCxSC7Wi6ZINplzAFC7W4Fb2I8bisKDIBsU57f+0UpA5HvTFnfUl0Q2UQibuiAa+WrBjxr9ILd1wT0wale4+wGVct3WENw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737629754; c=relaxed/simple;
	bh=mef5lb2N/TBUWzBS1g8waAn4RbBoNo/A19S4FrgOv5U=;
	h=To:Subject:From:Message-Id:Date; b=ha/ADGcXQF2rjuJ8l/ZQad/PAoPivncCJsrX/vjB2cQ43FZ3aKu2RmuOubgXxZ5cLTXsY8Mtnma7ZJspi4u16XkIs4embPvcSuegJR49peVRw+fPUz02/Zae0PpC2avn5nnsr5+/p32vZITH3dWFHrOySWRnpX3UyCeiRJacQxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gk5GU6VK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gk5GU6VK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E66C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737629753;
	bh=mef5lb2N/TBUWzBS1g8waAn4RbBoNo/A19S4FrgOv5U=;
	h=To:Subject:From:Date:From;
	b=Gk5GU6VKiOB+7HtMhMJtHDV3msXN0azWhgd/YbcR23DduaIQTOosxW6lpF3jRMVNG
	 nFgVzHbmlxOmiV9GI5M3acmSxvIAQcvXxPiJV8vIJOUr7MtLsUHsuRJMJcIvOo1qhr
	 TFxCjEFdkNJSzKRB0Vv5wIbKa+s+Ymo7JnfqF8M6JVghPWos15jgOIDPvfEWIOJTUD
	 84V7FDXZ2Xb5SafKgRhP7ss6Lax01lYxehTM3AiwSYFNaGGAXnL+xvSDbSNj/6599i
	 o2Jn73EZcWXq9jcirViXLWsEtqWrRQh01gTo5MrIf0cO38orFPHIP4u3z27NRAg0pc
	 RE0PO05yCGA2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94151C0218B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173762975359.20401.17458613365352515914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc8e5e2413faad3323c29f84c6d062d090914eceded443ffbf6d3fb26840522c
Date: Thu, 23 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737629753
