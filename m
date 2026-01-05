Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115A931AF2C
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767588834; cv=none; b=ZotPW2FWCKaTPg66S8OCKSxN8haWdmLl/w0qZa1Pcl+nQaZI+Bs6mLSpYl4XZxw+HzekNof/WMk5TImDHCC0nCtY/NDQm9ZazBd6Tw43IaB921LO4P3bWbuEc+yF7viYLRduwLXRBaK+6HNmLIzkLjFQq7ERY4sFIJgOALVod9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767588834; c=relaxed/simple;
	bh=/X8K7ehqvkGuQKYtWvV/Xd3KMT6Z5uWf/dm80SbgvAA=;
	h=To:Subject:From:Message-Id:Date; b=mPxLzGto7fFjBuETllpCqLyy1KJF/NO03L1SJqhSZdQ2wMKfos5tJp/YTz1dHJwO/3n0cgq5iKg8GjlTmhbQDm367FrNxlk8xuocjbMHd/60weBwnfr/U1RUlV8lE6rCRjkLbcVU62CFzoD5W1/n0OawYB3uWMLXEf9XthS7qQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlgHWAMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlgHWAMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE8FC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767588833;
	bh=/X8K7ehqvkGuQKYtWvV/Xd3KMT6Z5uWf/dm80SbgvAA=;
	h=To:Subject:From:Date:From;
	b=QlgHWAMAx3TFqBID4kW9HSkI9RbzugPspmCNsFAVDkx+5dphQK33g4bI1YfdKrdCa
	 cazEiZLLussyMrUATw8o24/R5fMHPyyEVQizMgfPyvQAOTzveDwQbiTKWbPzlwVbpz
	 yyH/Dbuds+lBYWerkT1QtE8nyO8+iVEAvk3V123vD0vM0613VYFaRXPMdvqiRDDiHj
	 CPBZM0zI7ey+hdJrpNWR1zWcPjVpwNhu4E2icNnWRBfE3xXAPuJ0Guy7Llv+Vi0qco
	 5cBwq73cKF/kk0xN+m1uPF5pJ89y8O1/1b0p7gLcE0Jl2aZSAs2fFz02Wnm2uh9Nsm
	 SP33lu/q7clIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C7AC2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176758883358.30549.13013421956550255993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed57a40d83b9d73199f25872f6dac4f3d3e709870d83fae801f5643c29327a86
Date: Mon, 05 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767588833
