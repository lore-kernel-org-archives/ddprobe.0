Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7B61849CD
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 21:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720043123; cv=none; b=qPGJi1h2bj8YxXhxd58s+deXa8us0hTyykar66ZNZN7eBBPPKDgDpQsX8dp9KscA6lBa5k/2QaMxJI5AJc8hq+2N02/2XjfPT5X5x9txCT2yr/cTu3o2AEcEUVsTsZWEXmGhNcmm7j2wNc3VVdcIt5Kz16Te6U8mw/8lWe8sLbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720043123; c=relaxed/simple;
	bh=H9lk5Oy6jjcsRPyoPex8rd4JB5SbgrZvdshnv4zRLW4=;
	h=To:Subject:From:Message-Id:Date; b=gIWECFttVydHMYvVoXobfBFBwbjnxyQkEUHu7qgXl1SslqqaPWfspBQc3t5s9vSkSwYZy0QrS8IiKRkt80n3RbtmS4mDkbMrD3ZH2r8KYFzbn92dIADLkjhdwhYkcMHsDfP32Wpwf6ss08EnjCnv3YtRhDzH0CcVXoOtrCvg+QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bq8B/5fT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bq8B/5fT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD61EC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 21:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720043122;
	bh=H9lk5Oy6jjcsRPyoPex8rd4JB5SbgrZvdshnv4zRLW4=;
	h=To:Subject:From:Date:From;
	b=bq8B/5fTsSyd8K0tZiIsoYCn6XqfKQFQErdrRpFDwTS9IYr1BHtLfWwZW8FZwjj1k
	 5NARaYjXdvwz7HxKHTZiP9bI7s/+jx0HN5JPnoAF5R3maSmkoatxzrB6ieu7Gz1qf1
	 ygg+wO2nHj7IBGUDHsC22GDDOq+sbslxKrwnvbrEvZ3aQ7d2CNfVoBNu47tFMKvMV8
	 mXL/M2W9AeS6tZPkSOrQYaZiIlN85JeNlM9Hr01es00xmTskNyadgnjrX1brT2b5W1
	 kQ8ok8zbYLRXEtyghJUS81DP5huiWRlOyy0mIlK+dOm1QcnSK1ECA/umPhERzZHgND
	 tgYI8PsgAM9lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0517C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 21:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172004312277.32222.5008324209980830095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f580f066b220fd244ef7c9c5b3ce5a04a167806e1406561c3961d0ab4a29aad7
Date: Wed, 03 Jul 2024 21:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720043122
