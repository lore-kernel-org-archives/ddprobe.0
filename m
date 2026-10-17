Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514013B3880
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792255234; cv=none; b=Tuz3OwGJ5UtowqIR9ef9dqNZd8xkjuEEcSyKeutDBwlzH/ZQDs4GLMnriZWCBD8UMrQYjmfhGVfJgVz3Q4sO4PcH4do2HRkQz2ldpXVwVHhnZW6PKCffLuyBjIszJi0gDgfG1sGP8PjXm7bWceb7lLeKP3cjDN1eH8rjBP5yJ80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792255234; c=relaxed/simple;
	bh=uj4/zrC0NMikEWLwOjIJ9JnR2GihAWbxczgxsgmyTGE=;
	h=To:Subject:From:Message-Id:Date; b=bQC5VNy93SdbzhMrc/E6/qYMPYh/BXzskAfjp/LXotvrXt/52dPkDxb+LdDhBc0WP8Ny9YPe9ghmCKpW7QqegVStz6+hR9Z8eczOB7Acxrt5g/XUL6jZcF+TnwNKWuiojz2EyIZ3f0Ms/6sIWRIHtEZhV0YuROBSVwGNPL48zBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u57fsp07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u57fsp07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF50FC2BCFA
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792255233;
	bh=uj4/zrC0NMikEWLwOjIJ9JnR2GihAWbxczgxsgmyTGE=;
	h=To:Subject:From:Date:From;
	b=u57fsp07cOWkXBvrqZm/+Tsqo0oka7NsddhUao24U72eYpxwoim7LaOCvIhmkN8GM
	 hXSUkPG4QB41H+hv/fvuLIg1/5Z1ePcf3Vv06gqh0XWV7O5TmnF1gXoGs38MfBn/pp
	 DUSNnkXn2/Y5BGfnOk58R8tI87Tyuo+mbR/bLpVex1dW2zSWNxd5mzt4mU4pYR6Zk+
	 9Lnsw6Gx2Ev4drrbZgwxtP88A4CVesFnBOOEbte05J5Aj8pww9GMlwuC+Yoyizl3/f
	 ZX7DiWe1S9i/hHzLPN0KBvnYqxxmmArKKjDNYsqncaToQdTNfvLO2wrZJ5SP+vQnEz
	 MaB4z7D468Rmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4DECCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179225523370.14610.10200897395122770716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0c1ae877ecb05777169e647a26e46fbc8393f14d7261a5cb0e09e590af8e2d2
Date: Sat, 17 Oct 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792255233
