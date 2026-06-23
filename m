Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A7F73B3C0F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 21:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782251194; cv=none; b=RpCkIpJPUL9QBxb8Iud1NxpYSydj0ltRSTnL+s8mmOxcjamlxUqxqh+HNULVwamqcTBEd07zIJLJzNOLk2DFOqkGLooKD3yhXRGLJO8SiDseh64jWLhTwbtRDOyolUgazXuzhYotH7dKQAxxFOFExj9rJyJU0eCFOsJME3HgTzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782251194; c=relaxed/simple;
	bh=XmBCP7TYjusbBFdHYkYkFuFjZ+QKhvM8dnnNRnitoUU=;
	h=To:Subject:From:Message-Id:Date; b=NZXw9GM8kELs9ig/2bGxxcCR6u20BjKv7W9FhcIrZmVg8u34guPI4+Dk6/HkISzNqhmKzx6P9atYDeNkPlsvLjC46Y80/7oFUumL1OozFQF4HiRdSqITWvUaLsGG5NQSGxKVqwImkWg2cgjXbFuww8ngcwjm9or/5SwUNM8837A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EsRYkVys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EsRYkVys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB2AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 21:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782251193;
	bh=XmBCP7TYjusbBFdHYkYkFuFjZ+QKhvM8dnnNRnitoUU=;
	h=To:Subject:From:Date:From;
	b=EsRYkVysWRX09ghN3KOwgk/f+oEqwZBtuPDeL4ztWZ87SNmb2/Es28fsVqTxLwKPH
	 JfDOEM/XGWhLjvXn+u8AWrk5LwUzRMtA+FZl+Ae5PwMyazWDMQQB4AXX/sBq4qU20G
	 Ow1X9Ti0aybAcQ5WH/8Trwx0RSv1b80Qhs48yUksvi0mBxYYktWbPI8p7S6jIXQYPX
	 4d2AMOGF/9hLgGhhApbUayFktpu4e3wi0XaZaASEyJhBeKiOoMv0lpphTcjjuxeA/n
	 ts/bOMFoZBkXaGGD06N+qSy47FKqJ/W5sjgsw21LfkO2tdSNJS4dMuzcxx5JCU74Sy
	 heXJYDUsVf+Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DCCCDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 21:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178225119369.663.11338275526623681969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c94e12f55ebd36d0936124a1063457db377913a3a063f97ea42234c8952f2cd
Date: Tue, 23 Jun 2026 21:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782251193
