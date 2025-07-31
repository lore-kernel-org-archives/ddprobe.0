Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D56724293F
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753955394; cv=none; b=Uu3MpOemINWmrnfVDOcNWSb8j7WAbetKzj1qPsMj9Xz0FdPmANm8djf7jUjOpGDfQGCTzHZ9C5Wg3mKe8WqP3+tDlKBWGb6ZrDTOR3RYE/NPQi58xuUF3noTH6Su+NlwNoalMVdzE+2NIxCOXU+uVSVQiS+VD/h5QbSmEYm2Mo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753955394; c=relaxed/simple;
	bh=r2x2gYT6PnqpWQQOI7lpqAO2h+krwCvdXCVw/Dn1BEg=;
	h=To:Subject:From:Message-Id:Date; b=XMZ+OvmsoSV0b9FyHWZATJZta+zdgEdk4B+SZr/Sz2jX2Y6ULXWbm+XlwQZMpa5WNE1pUG+KtULNq77iqb+qHDFaIn7k0kKUG1eato4bW7ACI+8FOK/+zDdtXRdbDG3xXQyOiHt1sGTkTszLKsAVIoyIFWE0f4B/Lzmg3fGI0t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auIx9uiB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auIx9uiB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C9CC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753955393;
	bh=r2x2gYT6PnqpWQQOI7lpqAO2h+krwCvdXCVw/Dn1BEg=;
	h=To:Subject:From:Date:From;
	b=auIx9uiBccBXw42DgwylKJVdlWbRXQgoWF2LO+L5UDDacPznU2Og3i0s0skQQ2jHw
	 tpoQL/FMgYCOYIlwCjMWQIPAAFwhhNHu43ViXJs42eI/MygvpSYfny52VdMYPQ6QLr
	 HwrHT/aOb/An0Ol4LiqGvgillxvK4WebsIpOdZmzr1U9GXGSfcQLCMcMWBbo+Vn4LX
	 JQyNFCmaxjxX5UkDIr0z+71xrDbzfIqletqWUjS9fS7Iwdox+fTE0PTgp3EzmBdLBh
	 tCLe/Rr+bmWkoErMCyK/bSelzR9RKkAOPczYMsrBg7WxdiM83BMCV6SG2YeoWdOIE7
	 hhLMqwVmGeTIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916FEC87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175395539357.31886.2374378577819521636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e66b965a268d1ce2264bd8da09b616c9253bb6247c47835f1bcb91116fcf4785
Date: Thu, 31 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753955393
