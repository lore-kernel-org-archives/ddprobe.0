Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CF030149F
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777929454; cv=none; b=OoJF5j3P9EqBvxrxnaXArqbRQhhuOQ8sXYJsSksqte2Ecmyug7GQGjkr4G2xN01AAeSIBbo3mE0Y85UqeZjF38rt1u3U9KEcUajTFnnUQgL5WbyIzBDes+5WrYqGnt7Q9o6G++0n5zxHDL9x2oeccLqW2xw1C+MYMv9uuyh+lxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777929454; c=relaxed/simple;
	bh=hKEHOoUTUi7ZKeo9QIyKe6xzKcJ1Yw7JCWwtQn8W4eA=;
	h=To:Subject:From:Message-Id:Date; b=Fkx+2NsJuFmBs7+G6JOQErEB6c0qMT/mEQy7HNn/TgFqLy0m4IoleC2Li6n6l1DMxgc6VP/69Vw28ft1ketvL37YZ9D/tR4PpQ1PesLk6hvlnBDQHUT1gEwFvg3S3liGZ/62UJ2Oi8bEnkzzWETk9/2HUSi/z6aKysvuXMSE6ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1GOrile; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1GOrile"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9576C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777929453;
	bh=hKEHOoUTUi7ZKeo9QIyKe6xzKcJ1Yw7JCWwtQn8W4eA=;
	h=To:Subject:From:Date:From;
	b=E1GOrileaCvv6kVt/1x2IoKX659tl8fD42B7l2hbjmGfpu1mNR0YHcLJ7WIKijVPZ
	 MTZyKk7kkcse6YSVZLpSRpvgpFqz2SWXMDPU5jNrzF80xyqS199zIOV8umcTZqm6ee
	 c9TNr8ijIVMxsAPPrXSsm8HV5VzNd167rNXx3f+WGjLStXw/KkIYemkewlmPiVb3oM
	 JnxGquDzS0NEpc8cpjeZ6aXoLlwTf4aCUYZ6r3eNKzd26qD+Bang6NGF3EkeOQJpRr
	 nwrm0T8bpRSYVFYp9j0mTm5uIIa28qFeFBVzaQJQXyTQjtokK/TYqwaN82wNs2GZDu
	 5+3u7AxWAN9+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FA1FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177792945368.21817.12780934610751576262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c76690d61d930981dc9ba6243925984aa414771f2ef2507b6c7c7bad82544b0
Date: Mon, 04 May 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777929453
