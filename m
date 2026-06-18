Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6AC3B95EB
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 10:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781777794; cv=none; b=GJDgdhmTGqoBQc8tGy8c+xHGOybzwCh5hrMrK3pqsX2LxyJZhN17scd1BacY/hKL6Y1Cnuvp2Yez3ofSCMozCUOfMQsA/L33dx2azkRBsqgNLpW8DAT2+3fEdRumSt8l4CBTRBO5yJDzhLPhjVzfcGdQqNs3kqZH523plcvZ+Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781777794; c=relaxed/simple;
	bh=1BRMLZDFDV4frAUrCooloOcTllFDYYaZ/evo5K/98Rk=;
	h=To:Subject:From:Message-Id:Date; b=VbgimgYA7kE8X0WA5u3uIt9DcPht1itlL33EYpxUSwuAToefwcQZOoc/3Rpk8fqOlV2w7+DghnJxDhf0Q8KKnqZTa1/ZxQj9uIMpk+F0cplRP3SXzam8eODF8V2Wzk3/ZQ5WLKnbEslWU3p9LdokwlW2ATqdcNh3HE/9ekzlxFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWIqLCip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWIqLCip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD0EC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 10:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781777793;
	bh=1BRMLZDFDV4frAUrCooloOcTllFDYYaZ/evo5K/98Rk=;
	h=To:Subject:From:Date:From;
	b=lWIqLCipFNiBHikvsHnR3BwKj5oQEhOtsenzfkcUvlVre7o/JXrQQz3SuXB+g33Zn
	 8WWqC6U1oAdX+2B8tkCLk29PNOKwLz96s/y+hfujACy/uu6+hykj7XY4waN9ryv+Ub
	 rSymZg7Pp9DkpM4klMvfgkT98a35WOzXamCxV31N68u4bAkj2ahl50VpRm18WyFG3H
	 dQETSOsACf4WMz6Dek702+YH1zce71NRFRaFk8JzPhWY9vvU3NRNvtAn0PZmCw90Wr
	 Y5yGfKBlMjM/LjkMs+eG03T6fQ5kVTA/gBBrPi3GOoKU4ocAktHFpNvFd2pQnj9Yi7
	 b+MKGwa4JqWZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5D6CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 10:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178177779372.17595.2382378116495682694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c097c595530b97e66ea16c63ef0d4766d9e9bbeb1c50683b9e0597e1cf15aac2
Date: Thu, 18 Jun 2026 10:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781777793
