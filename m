Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3F3B674
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735718754; cv=none; b=r+a7VsQl1WtnygxFDtQQ65Lyc4XEWMbsAkBsTNZ8csQwG874e92YmA/GLyKbV/j1ED/Qt7NGNKKEsmuCOy2XYSKDtwHMMhFpdGp8uzE5vb8cw7HAuOrRxgm+/heyOOsFkpKWHiUD9r9gxv+s2N6dmcT1Wuu9rKNiiBNCx6PqRXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735718754; c=relaxed/simple;
	bh=XqmRsqA1BA5rtzpFu51AftKu7BqUwnWo40Exueg1fiA=;
	h=To:Subject:From:Message-Id:Date; b=b6goGI3c3mZKM/ivxsJIpSKxWGFEG6U5FjQ2E1IYURqYPeCFwx47LUE/6l4XTzzlgtvlMrTpzwVfQkEp1s8niFeS/mf1vbaYziA0Pn83/SvbZ5En5/X58OGCYva84C4XH3eEtwgNtgFec/wfeXsj+vKzJB95WP+a3jDgI+6kkNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xzb49XAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xzb49XAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1ECAC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735718753;
	bh=XqmRsqA1BA5rtzpFu51AftKu7BqUwnWo40Exueg1fiA=;
	h=To:Subject:From:Date:From;
	b=Xzb49XAQjzmjG8i7ZPdVJXAPWBQiBRkr5squiaxtI2NRsLayn0t6nUvJj+jxxlGJ3
	 Fom31qqt0SYwbQYpuL1U3x65M0uFEmiHxTJQlNjrMgl3FtU68e3MHYuYNu+/cegAxP
	 GfNvFqUE48gJGSVWQ/tsYXtGhkXwbsTH89+SBZCdSmkB3UPFrxVmAhcS6lOVupmCxj
	 4LQNHOJ2Ka+lXPPmxYuVguuO8jL5cow1lFS2oBcLDoA2thLAQ7bCFjX2pJPdTGs1YF
	 GmL64hiQG3f2qmlGU2CXNQMgMiNYq8e1p1CoYN0th/4s1Gae6EWuML//IJ77Z4asmj
	 yoJEnCzFZ3Z9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990C7E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173571875358.16490.8997780707401132097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4422585316a64c3a6dc93d9402678c45e3030413cfb0a9dec25a969b02f3fd0a
Date: Wed, 01 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735718753
