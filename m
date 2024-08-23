Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC6055E53
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724439354; cv=none; b=kWlGEh31v6eDn/ysfWhI4Xm2OTmqePoJLLHqvTojUu/VU12Dc1cboJvjVBv+MMd7xKdCTXclJtjcZ8+183MBFJaFB0T9wTG3NYnQ4FwxMDOMAk6LwLtSvD2rpcZh5W2OYxTt1RNwSP2moxNF/OaqoTODcybHshbgSmcunz+Ny/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724439354; c=relaxed/simple;
	bh=W8j0+r8k9Q2375b/XC2JhhfhNMfKlps3lH7h62TtrT8=;
	h=To:Subject:From:Message-Id:Date; b=To34nyEiwX4ZRHc3uKQvdnJfZP//uIaId/BbwlrBQ7+TG3GCoX5fcot54dU37yVZNg5nt/x8ut/lh3IpSG2NZWgmTLJEJFHNYbATK/ENSEnI4C5ZCKi7v69mDMrtqq7D6PtSfr/kqLcqdbmGiiY+3OCpDN7jJPSHO4rQ7dVbWkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jktuYpsU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jktuYpsU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB321C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724439353;
	bh=W8j0+r8k9Q2375b/XC2JhhfhNMfKlps3lH7h62TtrT8=;
	h=To:Subject:From:Date:From;
	b=jktuYpsU1NIGkN3gPLzu2pjlVKoFWYKsGDAv/LqL/YX7uwZm1wHL44XWjUxpaOrDv
	 iJbVY7zAJyhnR5s08jfuqZ0puF+WlYRE1ISqPUBRoiVLffZcs4QCjkJYeoSiJEMFAz
	 sXvJk6h51U+xNnmuEvUtBksa9ZlhVjkjcjQnbRBuhZp6oM8/7BnOUZKLgtLvRSWgdv
	 fkZvKNRiMcick3GqpgIBCI1+UJE8NSfC+9ik3h5VzcCI1wipa5x0JNri8qsXIQffjW
	 zU8UeoZR10lULoNzXzgWMTdzYummPSpPr8mpwXmNif2RLunT55+faVqbmCrdr+SiG8
	 JkHX5chBEv9Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B78C52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172443935360.5240.9349479203215801430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 656d7bd2c168d573be404f370098ce5b5260dd18e7bd0d9ffb502736ff75c17f
Date: Fri, 23 Aug 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724439353
