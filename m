Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4066354654
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737882354; cv=none; b=Kh3/7Y0IwlWtoF1359Q0QlpvrFjn7khJ6mtZlToXUBgQ1CznDc9rFQfoTYN5oVlTPJS3TswFjG/iNbyolmL0XtB41oFuRdkBkqyk583YtvJeH+Wx18IOMEgVxcY60qz6tslfKQNF2mrEZikUxXKMhVMbkbF90Pl7oOPGu343qho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737882354; c=relaxed/simple;
	bh=T9iPU+m0+bNcpPyB1M0hSbwaRbyLF90AkFwafsAuaMg=;
	h=To:Subject:From:Message-Id:Date; b=Fcihfze9VyX9mjcK8wUMe0LizzjybviG3OXRCW2pP65RBMEZ78Fbe4QyEAKtHOtkIakbi1RT280mY5ZPm1VSQwJdt3ioMnaaf0EQsFBtKUKu00jC6L8OaD+jcfmL9es6mAOlSNhLtGGuhmzQKf0slSpJSnLMNx5xFakL7JeWXdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=REUmmkK1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="REUmmkK1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A551BC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737882353;
	bh=T9iPU+m0+bNcpPyB1M0hSbwaRbyLF90AkFwafsAuaMg=;
	h=To:Subject:From:Date:From;
	b=REUmmkK1FFbzOyV/6ZAYS4XlVJ+aLDK/CGGoWmwrCfaE6137m5TnZocFLebxpv842
	 OTr5RYf8S5APfbBM3GwUF/u161+kFnNl/zFlkq6jQyUfJrnlYjD8kqXVwdPV8qgojp
	 adN9mC0fQwCg5aZ0gzOWnZkrrsuZpo+GJ964TkWNGu1V1kyXs6IhvCHJYh0boBzGon
	 FQRGhhaFrZXvdrkLElStuhb6cOd6u0q8hnF+jeZqCL+J6k5F2xVdev4pDAbRse3lqe
	 uEvq40qpXQ+JhBabCl8otyHPoaJ287bppq5S9pwIirLikFd87nGotzVSLgBCPaW6ua
	 Dbv2dqggM5XJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9159BC02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173788235358.14905.12320286245571682999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812ebeb37020497211c981cbf58e8c6d799d09d7d1a920715594ce5ccd428a34
Date: Sun, 26 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737882353
