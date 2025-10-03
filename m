Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D702283FD5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759455594; cv=none; b=EGugzDw+Hu32cdcDEny+4jxUNYFe0WbyLvEYIGKJR9IoswjQHy6yk4VBG1rVCgJ3qZnpfhPJn2gVnG9fm8kmQn3P+CrKGnKtaMard56WQHsumP142qyoPyFWDyW/nuhs2nMK27cB+zb4AJ3mPnh/WA9kqigALP20aQUrOcyMMYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759455594; c=relaxed/simple;
	bh=6QXhdcdgHLuynp7OO+u/IXrenNtR3l+atI7JtGsiD0M=;
	h=To:Subject:From:Message-Id:Date; b=te0u6GE0KqGQUviBXwHjKxJWh0k2grQ3Klh2r6zitw5Yk8SdkuYY6Ij0cVP0pMrS1psYFrjeo0h0C24mpvPt7GlN86x0pCQBy4gXc4Ej8loZa9WD5KFlYcTZRLYQzSzdNK03SHOoikB48UsMSX9It6zjb4TljJfur/QEwuWriqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fP+g2Rfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fP+g2Rfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86EFC4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759455593;
	bh=6QXhdcdgHLuynp7OO+u/IXrenNtR3l+atI7JtGsiD0M=;
	h=To:Subject:From:Date:From;
	b=fP+g2RfePfXmlqh/qZJk2FfcBskHBttg5hE3Ju5nqSFGj8FeHw83QGeIhCh04KYzd
	 PtIS1op8DpPqux/Xo7DI5AOLIRB3yaRM8i9TZcLQ8Fxtwn4T6VbE0ZdnlBri6Fugos
	 P5bX7u2y28YVpUIqfQcnJxNbXw3Qzm1WzoDIlo6ZmnuR+ihkUwq3tiEJB+BsFk6OiS
	 z4YuXA8Ujd/CqurX/I8BYneEOaO5p/UX8QoZAg0Gj05Ok0kMEILymrhB8eiAoUDkqF
	 3Wf9eSxVIGQAhkEvb///eCCFZK4TOYtzt+ZG/EbbjmLxZfJdnRZaNlMEWpS7c9U90s
	 2FiEtw+91gJ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A15DCAC5B8
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175945559362.2159.15577475989221950177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eacbda313e312db69f79849cec04022c2ad89f862c96b5682c7506ee0323e8d8
Date: Fri, 03 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759455593
