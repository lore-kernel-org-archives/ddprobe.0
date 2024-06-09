Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E64C1CD3C
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 14:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717942643; cv=none; b=qoqObvnNO2C0LOVOy2rsLRVQzf50oPQuIWJIB1HT/jlHk7a27VXCL4U6nt7AeboN6fUZTaVpd9WQy81CJre3Hp72f2wHEuXeTO42RZ1lSha1Kuos5/wnXkpWVFgcJ9Hji3voUS0mEv06riTOxIIDCE2Iblmpzy7cEyRjSDG3T5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717942643; c=relaxed/simple;
	bh=CQtynvuk+2Rm3k8DNBb807I96RfeWYjvPkC162/omEE=;
	h=To:Subject:From:Message-Id:Date; b=lxG2hSr3OYSHQR4+UWjthYFfD/par/8Ws4fD9QxVGCqGuGDgUx72EAEzp7yQFAxeu+B44EE9eITPyArv5D75ZhIvW+NzVuUqXLmmH23Qp19XFXMtzPhexSyqDgdDBXbgQBDO7143vMmL0LxtTr7UtgPwzaOjTAbygrSIdCpR11g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=loKi46Bn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="loKi46Bn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD97BC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 14:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717942642;
	bh=CQtynvuk+2Rm3k8DNBb807I96RfeWYjvPkC162/omEE=;
	h=To:Subject:From:Date:From;
	b=loKi46BnxZIFw1yJyK3JbHCNSIrilAL9pdcZSz6Ie5Dxk/PO/M76fAbp23IySpK5I
	 c9J26tN+bdcjR+txHOAEHC2ALQMOsix6XqqcCFD+HZNZKVjKXD+tVHo92lcvqRE7sh
	 g+OrpnAeGV9650hqMkYfBP2LbkJkBx137IhQxqwHxrFIeQyjF+FOSMsPSWxwo+ggwP
	 yqlnQVoKEnbbKs0s8L/tB82NmxzKKmVnljerPv7KJyGW/5tIvybuVgAk/mjkMtW237
	 b8hwIEs1vMjbA8my6M7QzU6HupNgWED9ZQO/2N89s2DHk3YcYlgwUK9qNRUSDNicdn
	 bwKd7pJqRYTsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C178AC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 14:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171794264277.3202.6654582025008537691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6383b6556ef94276dc16ec1537eaf89c8f0fd1d9ce5ac8f5e65677fe6b2e54e3
Date: Sun, 09 Jun 2024 14:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717942642
