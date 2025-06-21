Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A30C19AD8C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750548594; cv=none; b=FrkobkCcRfiJTjua5Kv7Rf/dZSJbdIRELKpYHe3yfNfQNSjZz4hq4H9yuSPNlCik2MIS13WQYqciFEFOk07IEDO9/yvFrPraUn9jPAosfasIfNaVDK9dowEYCDccQpoz8YOUaAlPtMTAazZotkMl3qXSl8+rU1HuTdFr9N/tdek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750548594; c=relaxed/simple;
	bh=WdEKqwqyp1691cpN7wPHX+eOQsMJOOp6y+KMOw6DLkc=;
	h=To:Subject:From:Message-Id:Date; b=bC8X9+0JDVGVSgBXgMbYW1U6rUo/ysAJoZvOABy2Y2VgoSkP5es+7al9NuIhCQUVS/0rXM5FWQbnBO2NvGUJty0VlerWLps8frLD6+D0+GB3oeqcr8IuPb31bVKIOmAjj9R1JxsCrzfq10mueNpHldQENSy9gOoMvpOv/CkLsJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUFV38Pf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUFV38Pf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C82C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750548593;
	bh=WdEKqwqyp1691cpN7wPHX+eOQsMJOOp6y+KMOw6DLkc=;
	h=To:Subject:From:Date:From;
	b=WUFV38PfEmM3iq23VOcJUFAc6D8lgxCqibTt09IsynWDOQiyrEfstQTiA7Cr55ZOm
	 7Qr4XCA/BXgP4p0+tQM04aXFT22SebaZImvr5ZIIkFVWqLhHD2A9Z+9YyCzIaXtCj7
	 1T1St96+O/X+2rxMXWQCmG4QNsguHXQNU9xHeHmj4JW30QE3Lr2qM6zwSy5NkflHqJ
	 ei4kSc2rEqWLidANRIDhvdggb/2lBuJvJF/z77qpbeR60T7cJCIPKAn1/tB9AD/c+N
	 1Qf8SMpdFSPWjfqbc7Ir0KMiVhDt1QQi8fYllpZI80xebmV29jscvHyTwP/iECaicn
	 dPhrOIgXMuCVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C9C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175054859357.4945.3358516002278791470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7d6bcd113fefaa01bab692050abfa1351af6f29086a79f779dea28fcc49aea
Date: Sat, 21 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750548593
