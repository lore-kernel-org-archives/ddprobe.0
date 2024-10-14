Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245801AA790
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728914154; cv=none; b=OUxUGwkbCeuqkTSsDwzXM69UHMWzV7/dPCkOmphxEvYxtGJIO7bV6nGcMh+qmI4qchnYT1VgeIhc1BvtxHrlHbiqBcqp96WU/xib96R4rHHrxwtJXI2iMPl5OcpStrjNyH3VuIZnXFaueQJBK1bbrhbq9RBbiK3mq2JAss0ecEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728914154; c=relaxed/simple;
	bh=HsAJqCJoXYZM8KaOvczdtevejDV1c2s1U8Lm1hntuy0=;
	h=To:Subject:From:Message-Id:Date; b=sAZvznv7hjs4ytPQ50vQuVJjwWt+ngOScVpsAABzDSND3vT9LPReuvIy20tgP9ntYSrRvcm/XxNgDEBAUU2K1pevOn6Nc02QBjFIsvZCWRyMJKGcP8LKx6GQEIjdPyvop8WtGiTeZ9negM3NK/nQcVg3xokBrwwwcvtOs9+YUBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/xMAXfZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/xMAXfZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE005C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728914153;
	bh=HsAJqCJoXYZM8KaOvczdtevejDV1c2s1U8Lm1hntuy0=;
	h=To:Subject:From:Date:From;
	b=S/xMAXfZmjsfSAyjuPMvaH37xdQECUahB0AzJiRmDqbUSFqBW4BcXsuxLh6qz2iu7
	 6spVeJOp8Yk+1t6Rn02tC8UoysPl35jAn6CCPwauFKlBXGckXsz/vszBJkNuFsDw9V
	 +6PgoOzWm6J8kFfTFcz+EIk1Ftq0Bwhohubq4FcHpPh2SuL8/pYCF7WGNBpd1Gc3bD
	 NaswyltuAJiHKJYkgbW99vMV/1N0E/qhx6TrWBPT17GK/2qVsTmsQlAhm3dXxvg0vl
	 IYIdxRS+yY/zHqCGuzH+HD8izEqz4NOmrB4XtmoiYcm/dyV/8Q2E+asF7LfQhd/9PB
	 0Vze+8NgNpaug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCA6D16271
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172891415362.31719.4035754792310592427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9a5bfe50e92b471ba11b20234ebdd0afc86f21a441f68ec05e8d3aa0bb5c0c7
Date: Mon, 14 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728914153
