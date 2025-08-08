Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DD8283155
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754666394; cv=none; b=sFH9n3e4vwGo+Zj91nG6yhtsA7Lq6Zfd4sJs7xNsDguioUhfZ4cxIAFTEE7rtkbiQOGQE5mmQgfpWIXieEq/F7ge6aD7jyYgvtiAqWLyMaduIxUKFSHeoriQ1TkGhbsmzMXNS1CLjC0CHLDG3cwHnBTpj33MhYJ/RIJE6Ij8qOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754666394; c=relaxed/simple;
	bh=claPQXFIK0a03W8ebJ8qEutO5fum+NEafTlSh7LaBXw=;
	h=To:Subject:From:Message-Id:Date; b=mVxkEvzav9QscIB706Cl7BeR4r2hqupDnMsiaB9vs/aV8XBLjwX2YyE1Z4M8sjFV4GdP6dujKOPzye+uicr1YOw/MNWG7XSVrXytaqIRAOW/tdtoFL/HtXTvHKExkLtouINxf2jt1SG2945zSl4ywlsnLnC0iYt7r+x0yy9ATW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFoXa4JF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFoXa4JF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCADC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754666393;
	bh=claPQXFIK0a03W8ebJ8qEutO5fum+NEafTlSh7LaBXw=;
	h=To:Subject:From:Date:From;
	b=uFoXa4JFR+Losi6zSQcY41o0oKGmj59MSJQI/T6Wgb9+/3pDddFtRpcgtk88kYVw5
	 kBZyCBPsCx2KvNQ1TrzKg6+YFHxwGyOkHFDdLiH0r++75dmxubQX8H/NcYoEq1GSPd
	 Dp2eDFV3oXEI909gjGEcSdKH0n9IiQvlYU6yKG0v66H9KZr/KUGP3Xuu5ALv59jhgh
	 Zab6hEicMY1kYAvMmcRk4g4OZ107aK5aK3ZTQAS1AUdU/y/X/ZLmzWSJta3YBeVbXz
	 sLOjdpYCSuWcGndJYbYR1Nbq9w2PrrIpMawipktrh/SpWlAz2+cdlWSbVoh9Oui6+I
	 uQm2vTkpfrzgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7EFC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175466639357.31871.6658587436926166797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a331c344d386ae7cdd0edd396381142b5bd739953dc77f5017081bfdabf5d93
Date: Fri, 08 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754666393
