Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CEAB7BAEA
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707931097; cv=none; b=uMOsiZfJGH3JP/GWi9XNZZaReiEHdoHcTVogY07OhmpkVtOs+6itfQDqYszE2ZRnx2ZW8lIefIHXcWPkVyhqW3F6FEMYI9YfI/wGsTLlldmXUGNqN6wX9xMmsvtgXIWMxTzRdr/fS/6c+9AnvCaVgH0iTrts9+08p1CfYdIlc5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707931097; c=relaxed/simple;
	bh=TonRmpBgG9pU5N7o11dfNFfvkK7z5AvUEu+gIxwCen8=;
	h=To:Subject:From:Message-Id:Date; b=ugmV+monyqfkZ7YcfhWG3yeBPqqDHEFRptQJKCpAvC1SqumZ9+R1V9zkNn8F7h/3LpmnCED6ERJpK0eiHb5cPsFZUQ1JPUrfaNHLKH9lLeL5+nft61W62CB7AmY/5HV/1dFoFZo64muiNHK618ghFVVX0BOU7hROQoFcYUyCWj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVoXIE6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVoXIE6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 860D9C433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707931096;
	bh=TonRmpBgG9pU5N7o11dfNFfvkK7z5AvUEu+gIxwCen8=;
	h=To:Subject:From:Date:From;
	b=MVoXIE6PP3iBcyGGn0mezojgV9khPhYR+a6rNuk80KdtQrP/VuuhKiUyezcLh/ZS2
	 z53mi9Gn6dFprrNHy4yT7f913+3td8eN8io3AIaT3aX9rdZrHSfBnVVd7ow7yqSHUa
	 jLlJlVlzDNFygtXqnSCT5t7U35OzvmZE5uoLtCgMQzl/6zeRyL7rmbnXZCGOSlMdnN
	 U6HcDWWsf8WaRyZqp+1L9QLZYC2HPOINQLwZYR/hHba310UFruBkQyGKUvn+H9Ci/s
	 Bi229P1oRgpm/ci9rKukbgkiy/dEXZhTclMYzUgX+ZoJc+O1wHb7OgMRsYbukdMz9E
	 0WcBPAzG6m61w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 663B2C48BC3
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170793109640.24514.15060507034925389540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff9f5640824c69b69a8e4df9d10de2dee6878aa75649484f893233fb08539e7
Date: Wed, 14 Feb 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707931096
