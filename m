Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A96B3242B0
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767793434; cv=none; b=PEm1POfvup8HNhPFJLzM3UqqKUx6EzrmYm3biMUr2yrGvqKN6Ug9Yq1SOtutaFojXhNzWuM8qM3y/Z3GBdHxBE5cuyGGw4wxolhMn8+IkaSMcC9b+BwyoxSO8OQtNEP3eStYpk9HR3D2ts0eQyp0ELiPfBC7mzLBlsHSGeualk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767793434; c=relaxed/simple;
	bh=vQ8wbixNFEdNq6rmNEMAlWK2+4VXIOh8Z9sCypQYCF8=;
	h=To:Subject:From:Message-Id:Date; b=O8opleem39JJp0gnL+fibNgg5avv7rJFuzC9f21EJHvIjRfdgEVBL/XYWGiqcli6mlYPINW0bFxa9W2dA2MWsMZOndJpG5cn4mzV6qm4E4CLCrftctLefpi5jTH18O7UuRwSW+I9j66cyOC9maSmVvPd2t2C40ytYA7ae3siNLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1QxTJcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1QxTJcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F86FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767793433;
	bh=vQ8wbixNFEdNq6rmNEMAlWK2+4VXIOh8Z9sCypQYCF8=;
	h=To:Subject:From:Date:From;
	b=p1QxTJcsTkkw8VXnyYrsrrszCzh5X+0hmrh2wL82EM6NKOEzdAuxr6UXqDlisuLTm
	 5oZpuCdZUOK8lkiVnEkUjIjP/WBAsxOxGp1+sSF5p/2Cue78PFshFifXMlA0hGaUPI
	 WyCpNMBO136A0GCblq4LSmHuCh04kjXAavxS3WSPeR3+TFLLxgwfDJNXSYrZtwSOCC
	 /eDhedv9jTx1JX0cCtXO1Gr6XviHg29vvTLOz3Dd9O+OQ+x9f7Y6vmOF7e+gMtQXTp
	 LJt9k8OomR8oDq1kw1tQZ2kE73nOtZT7nx/42/NGI5Fbcpinr8KopM9XjWEhjLBr2t
	 gtDnRfFkOX9Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7F0CFD62E
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176779343357.28824.409506199096756758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c91e6f5b613e95bfec8f4c75769a03fdab6e0b3a03a80ae4023f3191fa7e55
Date: Wed, 07 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767793433
