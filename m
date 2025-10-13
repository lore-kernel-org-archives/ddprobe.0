Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EC32EC0B1
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760342994; cv=none; b=MF+4RpJRpMmRxbL1StQPFLNwcD+AQC2Nr0KaDee0HEG+NxSLXCVdk8Cc+/WE5zJRCQUHZIrZ7HlcjHyEAUKuaXjeJrnB2BZMrAQtHb+W+B9zPshnPcJ0R42TSbnSCrkJ3Vyl0Du1Nc81HtkGUyqx4F9VobG3y23JHr98itRIxSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760342994; c=relaxed/simple;
	bh=TZ8UetCUJcPJ2k9aSivzKcgLW1U4Ck022ZmzsVyHZRE=;
	h=To:Subject:From:Message-Id:Date; b=aNC4L85xQfsKabBvYtVVg5ByvZdsdOfNnbkFQB9EjPFqhbfKtdDjJL1GXpCoFMS3bGVD/apSTR1OWqCV9PobMxGsXTemUEY76TGVjtOXfivlcYmKoNnRFXKqRrFi5ZPPXs41GQXqzkAmYS9IOSTw1Xw7dGabzuqbWSl4EvgmT1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNt0OcO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNt0OcO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8B3C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760342993;
	bh=TZ8UetCUJcPJ2k9aSivzKcgLW1U4Ck022ZmzsVyHZRE=;
	h=To:Subject:From:Date:From;
	b=DNt0OcO4DySr0dxZPUQ/TPMxVHMcWpqHbs4AMysRRoExSD8TnJl4dga0sknOINfhE
	 YRvmsSg2f6zuCYzs685HIsRrAOVPBC1sVHCbOubTPLYD9FR+sJUw55FFD3teH61KoF
	 s6FqrVAos1otk99jmWyEiZIBqdZyVMlhv2OiITZT79CXxnxHYbRfoG+phTuuM/2ZQI
	 Qkv/KKqwwme2y2YgG9BGbSGYo9nOUCAKDuvpzpxQ6pJsU9x8k3DNb+V1w+QbA3WAMk
	 KIKzb+CbZdmeYy4tygpTQnoEHiqexXOaxdxKrbJO7Am5y+IqQE9a0yUR2ZAzmXrvWb
	 JQ8+H7IoayqkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E0CCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176034299357.26012.18356032844705443278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f42632ca4975d54f077ee3749454ac38ef3fde1b1e29a8bf67b725340daa2cbb
Date: Mon, 13 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760342993
