Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F770347505
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783973914; cv=none; b=unykpYENNf7FJaus2wzQV54X3pRahZzQh+B1obAo04ba08fACQpz35rnXrerDL8YGcp5FT7M0K9nkeWrcNDQjPnEhMrY5ji1L76bHauEYLVXQ4+JJEFZlRKwfWaLXeBYHkWYPbt9ouBksKce0RAroegRa5iC2oqVQWo8hJfjDQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783973914; c=relaxed/simple;
	bh=83YypiXq2JGvtjWPvD4OYCXiLEixQA8uoMGTFVdagbc=;
	h=To:Subject:From:Message-Id:Date; b=NFuJDLGCvR3SbcYsgsXTCMaza222fTo6WEfHCHB5z8UMvOBXC3bbyOjoD9Y0wFVVF9Giztc7OmnwdoHIXA+p3yfJwcUpJUxor02tUw4X7uWj60v9UJvVXbgiQO9hYJMRAgWDscZREaGlUkEhsr6jSNU07oGDe/7JRKtDG7g6fcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XaiGCO2b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaiGCO2b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4954C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783973913;
	bh=83YypiXq2JGvtjWPvD4OYCXiLEixQA8uoMGTFVdagbc=;
	h=To:Subject:From:Date:From;
	b=XaiGCO2bsyU6DuK+OiSCPUhDVOq9uchSXnWuayQDDJjAAb3NtsEYyPRmNd97sJ8jl
	 A+Eqwnh+nSLRbk8r102hvkjLqhPtb95dxPVLiyMo5Iwqrq+4tWq1pVSAQVWmviKes5
	 q+iX20wEJtlOOKX6X6swit0DgVKRrZeTFOYAwOBexcKqTMImofcHdeIx9v/HtJqR5/
	 GLyG2krnG9zaL31N4pO8kUjfXIppROCDbbvmFJcEb+/2x3pQt9VHJ518puU86F9b53
	 PRYwTBPvUIXUra8D2XB4P49WlIOWcykLlsu8QZOYg0QLh+KyGj+RzZhM2g7VlkKw7Y
	 N9BfIaFuI6naA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0856C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178397391369.26941.11624783609675580432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa7d08745b0a2cc91bf0e21eeb3ed03f818f1f30bdbf533b42f9fb92b2f5bbfd
Date: Mon, 13 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783973913
