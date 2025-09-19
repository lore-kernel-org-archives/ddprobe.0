Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAC25C96
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758312594; cv=none; b=WIql+z7mDZQuRsZXescNi9b/fL6X5upNHOJiBuxlxuWtoqEUhoyyMev/xBDO/i0NQDya52+tJEH5pwaWMBeZMy5za+Ncv/C4PKtp+fQMZQlySAH4SBhs0nWK4vC+65Q5k9MXBw2KMGU238HpBJfzVMdZz5It4+pZChbP9eNqvTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758312594; c=relaxed/simple;
	bh=MMBhAtZ+Ke6+0SS/OCHz74Als4KUafXCUnAhgcCzefw=;
	h=To:Subject:From:Message-Id:Date; b=PD6xLvXNvGmEt2Yj/Thrj/Rm0/sP8IY1srC7sTWk65YLBJMNh1m9xGE9YrCCldLt1Qd5vvGlMrxKA+BECI8W6cO+31ARPq8cqLiHsUflc0hv6vFGoxfHsGRHbkl8sv2QSUZfCXeQBhLIduQaoK+gaC/z/fWx+l9ucDhAXG19NKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2jKaqOg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2jKaqOg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A679BC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758312593;
	bh=MMBhAtZ+Ke6+0SS/OCHz74Als4KUafXCUnAhgcCzefw=;
	h=To:Subject:From:Date:From;
	b=t2jKaqOgpWt3QJ2eeEHyD+ZRBTL4Mb1SQGIzw8DkrtM4ARo4DlcLoEGd+d8dKSp2c
	 sSAMQhi8e7+0fKRQoqSXtzMGT14F3FDRJfd2bsanqrSLa1cI2LMF7i98nb1Z/7pUUF
	 mtehLx8SIn9mMvJ8039+k0jlVfvMYyOuEzAdJWRYUWFkF46LsiuZGGxKPbBeFauY7n
	 5n1NcboJ0i9r9xfxnak+fg6C3URgHbOhh1NSmqJdpKWgZu84RhR+U/yMcXJlglbeSB
	 gznY/douUMt0YSmeVBMnfCqqAPwH6I+W8stvTblUzRQcOqkuMmTvKNLRbl5NaT1Ko8
	 VydaX2+uDte/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9710DCAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175831259360.2933.1481260638776292265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7f248423081469a77503aed25a614696dbe1619f45468b9dd7d69ce10e7957
Date: Fri, 19 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758312593
