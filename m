Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68ABB2E7375
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791180634; cv=none; b=AEX8kdQHdFdk8gs3ncj8ahJLjDEGvTriHNzkIFcSFKmheUQzs6UVEOoFPZRBTUZjhEe5D2NTFvXC8N4NqR0Di1u0ilUQ7wXqamD7lTdKV718kq1p52rAmvqdqbrLLbccQKVmeDn0UZU4QReVB/ti5zs4dSNLLDaKWjH/3PDqUok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791180634; c=relaxed/simple;
	bh=g1kMJwkQuS2OikuHbNgnUWxhzWbUJpLoj4VLLZL+Kos=;
	h=To:Subject:From:Message-Id:Date; b=uG/ojl7eMB1GyND3ijuEkP36d9FkIkNxYeXvw8H/Cgnc4WwIl5EhAzT3GCW2qG29+ACaWUEZ7sUM0wxMkP3HLVj0/63IShfC6xnfdEREWglUw7H6Jc446ywdLLHtr9zD6gGqMyKxAGAZh6FqnFozYrMLJmiP75M2inNKysvcnfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hClQeO0J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hClQeO0J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CA5C4AF60
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791180633;
	bh=g1kMJwkQuS2OikuHbNgnUWxhzWbUJpLoj4VLLZL+Kos=;
	h=To:Subject:From:Date:From;
	b=hClQeO0J7l0eTvZmT4caQeCPK/0i0xqCoVdNMQlr34GjYuem68w+6/n5upLSYSmFk
	 KmRZTiWW7Tc2bTQX8PW03pDY6VPEAyZhdqxT63xt6G4pTns/xEnGf53F52gsE8pn0C
	 bh5onQjs8cfVpbIekv3TPD8bqx+B++DYjvrF0wdMxXl6HIKLTd8309Z2SQMTUycLcJ
	 bfBriKq31TGNSXWONDMvRN/1zQ5ynG+dbfmn2+REE1Lcrxpw59vayNgtswFiEvnp5K
	 S0ntrs2cWB4AEkmjJ2VTbLCbjxBZpqjEam4txM9hMMdg3NlXTYNHya1mR42Hw37gjs
	 OYKo7tTDtMnew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC083CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179118063369.24158.13880575325685710204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80ccdb24f36993df6c1c0bb6ac7852e897dc9bbeb013c3bdd8917283999671a6
Date: Mon, 05 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791180633
