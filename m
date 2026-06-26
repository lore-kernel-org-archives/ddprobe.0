Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742071A5B9E
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 00:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782432454; cv=none; b=l0+Dj9FdG1VWDNUFuLgTJPGjr6wDmZsYK6xoW8ryFo9H+bceJhHAR2/glhtsY15Q83Ycx3mNMgEdd17+pJ0qk5maZxHrwJ8WtAOKmIJGDfn5/OwSE5VATMPAW0FFuyBspW1O/dg13edCIuC2iY3a3xyC2RpcOHb6kh5EerPDNhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782432454; c=relaxed/simple;
	bh=+CkGwovRpnlmS6odh+fue74XYANKYNvlxtDPECSg9JU=;
	h=To:Subject:From:Message-Id:Date; b=Na+ej/X+Tb/ckSFPknPqMem6//85Tv9CMbp/nv1pgGwZDMNmJqJDfy9mOLnfqJTF2qpJaKmVGLCgnQGKP/d7RAB45VuMLDyYWn5dv+5wl/JJvOUfscnxZncw4vCXvO6K28Go8II60PFbG/9YnzckInRAsdMTOsMjmNc1NYTUogM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHZAgMkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHZAgMkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1647C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782432454;
	bh=+CkGwovRpnlmS6odh+fue74XYANKYNvlxtDPECSg9JU=;
	h=To:Subject:From:Date:From;
	b=RHZAgMktonarHCzHTRoASXFKhLZa9t0CGYsyEYncfvV80ZUpELp3W45CfOUu9jEYu
	 uF7c9CIe+PTEYBdyeXElhRIuFdB6RObq5Gzxdi+LHP57INVv6OUknF4oAbADLzig38
	 u7PC+bvU50jFxyqeeyESWiR4jQ5K75a3vIAFBZxpniqjuWBm0zh3lxlFw8aC0tsIVV
	 1Vl+E7G6uM5quOLiBiUdvNLhN5FwryyH6m+KoSAVDLXmt0pmgrtJ07+xAorzQNEu9h
	 2v78Iji8iGlv1mBdtV5Z/s6mocA6Mq7KVU9vdfR0siaZxI8ewy9quxyJMVDFQ+1hpp
	 ZZtLtHBLRqZ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B23CDE00C
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178243245378.28020.2546407085904439195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b41b0cb4da147baab773dc2f3c55d7e53cd00fb3b974f260867985755cf35a
Date: Fri, 26 Jun 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782432453
