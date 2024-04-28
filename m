Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5692D138E
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 14:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714314743; cv=none; b=sG1kjhtJmTf3nAd+a0alpPTWxmd7K7z3c5PHuTXWBVyde84cvRDJU0O4/TTzAhh1YBCfHOQX6K5+dBv0GDl0+4h6AeMLFrwnipzV5rxfNXPngwicxv1oKkjp4EgWrk+tAAR6IOLOq1Zv/HhtZZLOJKDGamBt5+H7WeS2WPtCivo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714314743; c=relaxed/simple;
	bh=LbX9V6OZ9M8/M6NMe6yZyoAa5+4JWTlOUm8zncKioRk=;
	h=To:Subject:From:Message-Id:Date; b=RQyNuGrzYVUWnOvBFuBiZey554XOceeKBw2vcn6UB22JFDTb8r9ZxJY78U4I8UmOJeeFTY+PP4wUE3PqYSEXj8wPdatx6wpyYdEdFn+ZjayxSPKObudfN/FEI5HESodfoWzxC/aTI4N0DnkurbMW2X5CgpNT9C6nCCygU/h+SMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSR4+KRU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSR4+KRU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5ABCC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714314742;
	bh=LbX9V6OZ9M8/M6NMe6yZyoAa5+4JWTlOUm8zncKioRk=;
	h=To:Subject:From:Date:From;
	b=nSR4+KRU98I8zyPzu7m3qQrsie3PoRIfliMUEd5R/ChochMqvc1JYfSSmD/BvqMzL
	 sxWHJpFoOG6SPlCFoP9ynRuNMX4IXAgO9Vatxoq5WZyVihoqqnMKHCgyX268cqiSFW
	 cddhZyDgR/53m4e73UYCc10JDdWanXczJ0XeJ3TmGVpwXu+n7MHApRf6cVAbKcQ23P
	 37hrC5cl32q0XEiSsYnRZ2ZRoKjyEZaU+k/Ncma8/EM6bbTeHH1cfpi0ND4lLbXwR1
	 W67Y0qYr7XPQKhFaSrK4uooLEgp4OAdt1HkvpHzLtxQD1MUphkormFy31D4j5DdWDp
	 qsPeKzMctx1Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB2A4C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171431474282.27200.7813204208109231284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8bf8867f29ec67333a5ebaade80d2696df5c55cb3311897891ff981686b73c6
Date: Sun, 28 Apr 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714314742
