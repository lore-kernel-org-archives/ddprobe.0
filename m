Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F28E29B782
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751578194; cv=none; b=CUo49oInX0+b4LN5bkZWg5vYzqPuCYOrtfvZKX8wv/ewB8sbqvjBIOgiSJ8CX1Y0CGuxjb9DwEAqbO8LGDYf52Oxlb0mYeDx8Jspm7kjZNw9vV4EnJ2eJ8IrSTLyEj0NrCs96ME9OvHXvKWaT/NEKpAXFrPr+KQGEaMd6ypWwKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751578194; c=relaxed/simple;
	bh=Oe8llxZmh/+Bo3tU3x9IT2LN63sZhWRNC5MEE/TL5ks=;
	h=To:Subject:From:Message-Id:Date; b=E+feslPGl0J51+s2Tcvmsg+ehlRdihCvgOtrHkGF3cfQKJj4TMWbs6u63qY36F1eRTErUHAwcNvt+UvUXIWmA9h1HhESeA3OA0bHKEJvjzNCuVAtm//gRO5LEWx8NXVdtpXcfi39p1AlmoK3nkMxTJDLxHTkPsY7HD3gCD+FrKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCKgC5DX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCKgC5DX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CC0C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751578193;
	bh=Oe8llxZmh/+Bo3tU3x9IT2LN63sZhWRNC5MEE/TL5ks=;
	h=To:Subject:From:Date:From;
	b=MCKgC5DXynzdh/M7QANmYgZtNH/sfAnOSimEp745Sjm3wz9UZPUiaIvsAqre6SIPj
	 bC1/zX9Tl1Ip9FPMatuofNWneczryrXajycqjMkKM9Lbh/6ojFVuYpLQs1NOa/EOpe
	 7cgDEiuk0wqt94viQ5N3FZEJta0hVvvtN20TqyPTAkqRLgpamx9cgzB4WWdFeHx6s/
	 RSGyBE+yflfM8lQcDdxHGu0AKkrI78GeilijvaY7fcQwBx5oJVXAsoXpRAcm3F0fwr
	 w8A67W6iuTipHY3EBtHkVHMZYjyS7dAmI2Yyw+Wynpgp1tzJGrH8EPWEsSXsaMaUXx
	 H5Shja633LTnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF3C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175157819357.25767.8911710806994716179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 699f4e8e771f95a465942abb8010231520543bcd4462866bf60f59e2913024b5
Date: Thu, 03 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751578193
