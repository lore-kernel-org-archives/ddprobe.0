Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7F720C488
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753342794; cv=none; b=JIzn3NFvYvQUw0jpH3jr08ZJ4GP7Yllk6YleTNQs0gMqi3FkZwlN3oRcxOas+cerDU0+mEAt2I9AOfgtjbfmhiR09VgH0Mwcl/7xcuX/H3cmoKO4DkmH5bso4uqHFaLLOef15XqcrFZgixEZ0FJhkO+2up0l24MTLDBjSZigB20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753342794; c=relaxed/simple;
	bh=sAsYr2WUfMLqfdA/Ov5TMaG9jZ1AF1tc6o6isBECJ3Q=;
	h=To:Subject:From:Message-Id:Date; b=lfyqbN9bTy8v2ugtrk4vYr2Hv78j15EBy3u+v8jPHNdE8/T/jg38NVdl7Wv9Z++ucgvNvDvo+7EpDIjUcIbT8CxPFtB1FM91AjN5hASyI/eHCIiJPk6AquS1PzQ1hlV/UhAtmxOgcdoXcqztUtWF+nhYss16juDYmUpad+jUcDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0SIlVUi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0SIlVUi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCECC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753342793;
	bh=sAsYr2WUfMLqfdA/Ov5TMaG9jZ1AF1tc6o6isBECJ3Q=;
	h=To:Subject:From:Date:From;
	b=T0SIlVUivRQ/XlVN4MbVG1V/vS/9HIh/+DWgWCIBTy7DPq4srZYilbACmWgBSFHOe
	 8sk9dzY4ub2ZRj5f4aFAxh7EFGZBVI4fT6K/a6iSwPnN7VbYPikwemls/2OLGPcMuf
	 GfIZyDsYzD3pY/IYNtqhGwP1hSldx5kO2q8Sl+Q/XfFpCEIc3X5htllzgB+ICO+hWu
	 H/ydGU1zykLHF18NyWfkqeYR0kRffohHECy7oo1cQ4dekxYN7Ww4fnPfNzvboMyVKf
	 70J2qyLGtjMQ4WY9MIKJw4JjnedrPi3YHIpvsW0SFESDYfX2ODIBnQRIrc7GRAN8T0
	 RROPhNOuk470g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B89C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175334279358.7231.8629477419071250265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7d39e97f4ad098b1e4760b531e88b6924836b056ead036778a1d87a4f9b4e9
Date: Thu, 24 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753342793
