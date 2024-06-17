Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495AB1D953B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 22:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718663903; cv=none; b=ocoLEStLem1eksyx4NuVh9l1rOtgyQHYvpq1e5B+omRQ+w+ZYLPZPuE4huKfq+0OXhpM80S5IUgfXawGazaKHsRhla+Q2Ek+cA2oJMMFeMPAL53ZtBTd9/bXbY1ozLScG72zlqBcuAoPWym/LT6Ope/AVqHpahhgTeBpZ3PH0mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718663903; c=relaxed/simple;
	bh=VMSdI64w8dOo68SrLdQVWgew5dOLqIhS6pCIHk+csjA=;
	h=To:Subject:From:Message-Id:Date; b=kuyjAf6sj/IeioZLulauj9ASgMSeAskq2XSxX8m+9qCmNA3cfzdnuO3yDfDZwP6gYDYiQFYo9YLufjKV2+vhsa5+h1eEIKN3ADtT2IrfqNnusB+/NVYY/aoMwUNyVncYApnCKeC/pE8u+K5HKwYyEf3ufzbWqhY63OGt+1BbVEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=as9/HsFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="as9/HsFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E97C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 22:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718663902;
	bh=VMSdI64w8dOo68SrLdQVWgew5dOLqIhS6pCIHk+csjA=;
	h=To:Subject:From:Date:From;
	b=as9/HsFnlpQ+1Ze7FIyIVHts432D8zJzhd3SviuKc2ZySO4h/p+I9M9CU6nRG3+iP
	 soYSA6SFjeDuev0/6wEhYQhGrU6k/Ra+7iPnNaLjW+hgFATc6hlM1hBUgdo0spGkgW
	 tRJR0gz989T3xe/6mdfm9Rzxp747vSsQxXlWR73o9QuRD8+vvod38vUED5UVUh6NO0
	 gggq9KpxOeUcpY7A8UORQwJf4oADFyLFyazj/aDVvmPrGnKE177G+de0DWEHDHtNPO
	 2doLdXiLK8jdI9r8Qg2CK+aLqzPpfjbJtXyZ3jAiAuTshFqS99ZeWXijYquppe5sBQ
	 h/q4oFkiin7JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE959C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 22:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171866390276.16739.10012667855716512269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7bdb49c8a4e780f5a8399da08cdf6cc0ebd874a29a375788b02fb9054add18
Date: Mon, 17 Jun 2024 22:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718663902
