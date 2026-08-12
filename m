Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C87B3368A9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786578034; cv=none; b=RJI1EzySqAJMlzFidUQg2ps9NpCnCNmp22WIjGTiIM2KOadh1SvowxMpXOefJbVdu5zIg0haAr+zmcomhe6CyjrHor408yvupRi5GI/7Mric5eQUz6WBkwMxodWh2zDB6CwCLNv2H+Kz6D5CQypBLDbUOYgqb2lSHNNYH53yo2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786578034; c=relaxed/simple;
	bh=0GaAx1YM03xNBQt1hPYN7pcp4LZB1MDPl0LS1oJvR3A=;
	h=To:Subject:From:Message-Id:Date; b=VNPuMwRQakdbwZ1Y4pOg4HLIYA+ZofHtNZKgLS9uFHYiLBHEPEi2WRCrvqXVtD8fdjma3WlNGjBdpHtnSxUmOZs6SZEb89NmeFsx0/Lm5FQv9PVp1e9Sc8jlvVhVfGBXuCVUL2j4oNCV5bnhHy0hcVMQ17vUqbSaQeYwsv49WsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzuoMqA5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzuoMqA5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44E5C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786578033;
	bh=0GaAx1YM03xNBQt1hPYN7pcp4LZB1MDPl0LS1oJvR3A=;
	h=To:Subject:From:Date:From;
	b=JzuoMqA5E36kWy7s70ESxYHc2sYl4PDmRGEPpx/RdNmM/75zLO9BhetdeOLfdmSX2
	 LPhpzhSxwdVYdNNCAbkfSgtug61TEe3a6DfPe2X6QcjwMIuoyWw1Y+NkLpk3lFUGfM
	 sEWTq4hKhN+lPpW8l/yFtdX3URyXwpQZpPOSMGcRy59itrr0xiAfgpci8LmD6uGBW7
	 RIsyFty/2IdH4dHYYNPkfej2kme+er8OHAnf/t3wqWTFmBPbu2/N7XD5RHNO3q5KOM
	 fNjtPBVCoie6OHaMm7OpgzyINd7FV13+bWqvyi7r7S+Ohif8OHuibYh1g/E9Oz5y/r
	 0y7YF1nNqPgOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B077AC5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178657803369.25899.15621670882285557191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8007c1187539c047bb42ee003353df1acdc1acaeb4f2db5b2bfc94b7cbf482cd
Date: Wed, 12 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786578033
