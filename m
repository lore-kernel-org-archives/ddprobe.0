Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCD61A262D
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 14:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779632554; cv=none; b=dwYXjTQ1IsZPlSkPlZ4YwEAiQ7dYoAa+rE8UCDA9JUoSSCbzB9xgWy6fKzhCcgpmlhEvsw7/0JWx0pk4jeVhjLgVPVvm40SSjWmYcqzl3Vo+oit8Nrce0X8+aCgHcGRVUlMy8BBKktpE8EaqYCvE8sExCiQf4saeyMFo8HV9MMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779632554; c=relaxed/simple;
	bh=TasDwWDRn4627ztowXYrB2Sf1vDgdrFk6LAMwW9bev0=;
	h=To:Subject:From:Message-Id:Date; b=gtVPizxAWT1lwNxXHc7A56qnSaRrsmh5EIIYaNFW6Zvd4T4T1oUSydspqCF5xlhHwC2yzeeQkc6DVc6vK+TO+hwgffNxmto248rFnX3KzNRiK+enciF4dutGxUVaF07k+0V5nXJ4UxggIM/Shqm921BuhvweSAkoKY/VLxCdSxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2SgI68a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2SgI68a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9ADBC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 14:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779632553;
	bh=TasDwWDRn4627ztowXYrB2Sf1vDgdrFk6LAMwW9bev0=;
	h=To:Subject:From:Date:From;
	b=P2SgI68a5/4hgrucxccF6B9auT2oP0PK1E8rjv7f818hiJqYP3CL7Eskxbe18wQ9v
	 NWN4EQWARSq3ANfzt41MKtM70nQuhQS/eKvjOsnJyxuJ23i+cQJRmrz2AdqpM/pFIg
	 xEoyHvYiTOXkNAacciKcFg09ndabsGwgbg4U19Q9Ny/NzFyhC/rh2k+sDGmD/FgR+S
	 uXATOkZIYm46glRhsaeYTfLqRaI9qur7jktiR8W/XOltaJMusYXJWH1R91APvZ0Cv/
	 4XqiWK3qh25o3TqWjg05wGeO6ALxh9PMuu+tNXMiKYhLWc4Y844LuUpncNuwsC4km2
	 X/cHbg+fDGSfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAF1CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 14:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177963255368.25825.16392780384149968212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29306bde0f7e578ec5765873e57337e10155b5bb9a51fea00bc1fff2c782bf46
Date: Sun, 24 May 2026 14:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779632553
