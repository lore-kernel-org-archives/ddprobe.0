Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BE04A01
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 01:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763860914; cv=none; b=H8j3yAZuZd/TSFhsirfeDCI93RzRkL8t1PZ2c8MY2A0mduFQPtyEP7piMkaZsRcdCOJ/56xiVOWK2d5nsQYG21YcdtczCbMpUCvWHM+W/UD59MBZQNPGD1jI6jVMk2Knaiugkeqwkr2IljiSdUzi0S15gVNFHhElAw7PXCqxZ9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763860914; c=relaxed/simple;
	bh=Ml+jix3Jt7keDOd8gbn92YACJTAALBhv8m/ukma+Grg=;
	h=To:Subject:From:Message-Id:Date; b=n3kVxnAxwbuzh37Waso/JsWqCXXG1aIed78f/RX4YtEFUKzlVdYj0wo/9NpmbJBRyMq9kbta0XtoMy9B8LdybKgH5irgbjj9jY5mUajqMw9wjfuCCxv9Ks8iy+BnOsK4pX1Z2twNr2hGRif4H3aXa7/Sn+3niPvEUwlPwH+lCVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVaCjGs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVaCjGs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DA3C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 01:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763860913;
	bh=Ml+jix3Jt7keDOd8gbn92YACJTAALBhv8m/ukma+Grg=;
	h=To:Subject:From:Date:From;
	b=bVaCjGs+rwRFlhspOW/gaH6mE7Yk5u+TBJ/kH01RG21mfpSfREMMZTGqTkJj/K394
	 8dFIjURumaYzNUp427ekRSwSrBwTxC5+nDAg91plMilXU8xnYv8hD+V8z8UM9ZOi3A
	 mZ/nNOkviRAtp2iwqimYR2ZzY8KoVny/gjimUTjfk4rYSKXDvlOWHMTGqXZIpGBp6x
	 OoRV368+m7xkbwkj852jJT8lC+POeuyVSBG9L50EAPIxosq+XU4SHrNF7dWiIeknry
	 8uEsqTsmPEw99KPf9Xu06MgjwUGaUhmqqx+wtCtjAmDNOKSuXeC/XOA0mpeLzB01KA
	 6o1jazBPYW0rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DADCFD314
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 01:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176386091358.9764.6213720102400391918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f923966c6c5b8ea5b42c4b638e7d19cf49fe3ddd71106a157c94d44410a54c37
Date: Sun, 23 Nov 2025 01:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763860913
