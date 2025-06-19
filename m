Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A744219307
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750368594; cv=none; b=pDQZzVLWdWdZd1uW2Fn2xklvtzMBJmof5JUrmF6mzA1e+sBIm24gxrKEI9Y0BeD7cgMx/wf6oXPdt1ZCqGoyLFDGo67Eft1lHE3AD76UG2BZwevZMPfogM6UgkEnwLVBqpnNkdekaGJgZDtsC+cdWcv1ZPYU/dTqtwI+L/1ubBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750368594; c=relaxed/simple;
	bh=dIVAKBA09bf+jxyLnoXEnuvjy8PDdjGlKIm9BQZM3rw=;
	h=To:Subject:From:Message-Id:Date; b=BnVSV82zwbIxnuDVtv4tUmXtMnFyxmMC3zq4asyG70CjHPtP3W+8g9TOKzWVkMnjCjFYBJxgUTwj10FDJQ8DXceqG0CfFxjLonqh2so8cim4z0Gk/wDo0WfwGnKkKlqQJH36k6lNQo3nbpOX/u8+MfdJccFWNP0zjZu7MIiyXBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzYwlHVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzYwlHVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1468C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750368593;
	bh=dIVAKBA09bf+jxyLnoXEnuvjy8PDdjGlKIm9BQZM3rw=;
	h=To:Subject:From:Date:From;
	b=TzYwlHVrUP+T9KsLLgFkaZhBAGZwvf8TknFEaE2KLzb2Z0ZM8Y7n3T2wfkkMZWrWP
	 x/XINibuytSkKZWt75Qm6AOdjZZkBiooS0XJnRBU4CiG35pO6Xu9ugu1yw+irUMA77
	 mfJ9zDNkT8poQKldXkj+pXUUlqHkpMqO32Nj9pjy6pQqoBBivKFfiazIUjGjW5+QZf
	 v0LZWrlvsyHs/XFSkmL06f9nUj6wxfSF9wna+/GVmFUyIGPrRvOs7chdmsiOaWBE+p
	 ktBsPT1JI70kSZTaB19aEKGfr4g2aScmlaAdLv9AN8m/v5x45yTc4YApM+LXoavZAN
	 e1NgS0i3caCuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE85C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175036859357.19889.10278000015570667350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82201a98932b18ee5dfc687b7ca7fb273c8c490ce1a6beea70b9bc831839bd90
Date: Thu, 19 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750368593
