Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE698248B
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 03:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783654714; cv=none; b=dFajsgtd3+X85bjO+DF4WCj9GVtu5xki9LHpzemI8MFYBp2c/NOOdskzCBkzFMpL9QJtwPyIpUjfEi/bIr6JCrTu9ixdbuHoIbvrjpxtM4/UAlxeQCacLLS0H4iMxul+7KWkadTlc83pJyPuB0YpnYnx6qBMiOvhYwv2Nd0cDk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783654714; c=relaxed/simple;
	bh=osWKPb8AruZLMwoaSQokXAqGI6oBha1RGUl1F3N814k=;
	h=To:Subject:From:Message-Id:Date; b=iNazwpx2WEX2SxVBq+2HYVJt93bbooruCnvL6bF4JHNB2LNgXi+rNGqVTMOwu8PI9AN+AeJwWUc3F+N2cHLCVKIqFTSRxBi4MSEVy7our0rAYs9WGgv80ZpjuiN2BZGhKJ5Y9xwgxIRvkbZRAzesaZQp6+jSAWbHu8WI70ubXEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVQlPqBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVQlPqBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18A8C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783654713;
	bh=osWKPb8AruZLMwoaSQokXAqGI6oBha1RGUl1F3N814k=;
	h=To:Subject:From:Date:From;
	b=XVQlPqBN4F1GDcWVCYgVs24wzcff6Fh8ABpMXbEO6kty4KeBYh/TXKPG7JS3E4TyE
	 yiJXc4zWNTxTySIzmo7QZ3FOj2TD90I+VHN9JR/GVkMh/8JDPReK+LOh4jsu3zZ+0y
	 Hsnl2SDwBBbpTKpWqwS+1uS7seYXOjzxTdIRSHkYSrx2DIrKBMb+hK6HA31ZWhZFtS
	 wZvg8gq6/GzNUOT8rANjR2SBJn285XG5z6jHQjMwU8y2kIG2GgvEetedeNxFuz1S0a
	 Ru472RQizYJzoKLFdS+Tj7QhHnHTmzJoABsYT8Mr2m4m2yHv1gJM6xkl66zkZnggpJ
	 YIP9tNTfhCW0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD69C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178365471368.17931.7393282487263872204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2afa75cb863f55e1cefb9fedd2fc08aa3c830017f48d745ed71bb4f3439a0f99
Date: Fri, 10 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783654713
