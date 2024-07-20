Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1431E481
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721515554; cv=none; b=h/+JsnCgThy5zmFFwneugVO60S+P1/AAvPmTs3DfhrWw1/pkHgOhWi0tKZZ2zQ9nQ7xmm7E/r+PCX1NvxsU1JLX71VIAzgdfsyWD7PalvvvBwV1LVD10uIKrTAjrrk0vf/ULbpW/nf6QVKhaqNsgSS9G+pn+FFeu1Ysd1VCxicI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721515554; c=relaxed/simple;
	bh=rpKEVN+r4GmcfOGd7211J49wixhcZH08glsiyvhRbAw=;
	h=To:Subject:From:Message-Id:Date; b=Avc8baEsUeGu7MexDqEVIiVAKToxCu/mCxG5T9IvJ7v+FrYLONxcyYEP64dQ22/AN/dC2wfLc8/JKpWqT5mb2xp93PPJH83CCdXV1tdGtLuI46gXOyqca8UcT5cvQbq1kULsGFNuZaVNeWD5KctTH1q+tUf8jf2eZ9WPYSpA1hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SK5pzTwc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SK5pzTwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8994C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721515553;
	bh=rpKEVN+r4GmcfOGd7211J49wixhcZH08glsiyvhRbAw=;
	h=To:Subject:From:Date:From;
	b=SK5pzTwciZvMyTV3webSUQiFvvWQ5fEf7YLYdJr/uaLEtrXDQXYV09+5t7XZZ98mS
	 ned+Mo4tk1v9fCWraJnZX5kVJbaxtTkhKybqouCEvsUL16Dqq5X63WeJig5PXqSItT
	 qqeWMIYWQEwUHKoLpXhN1aQnSBoOOLvimXww+6jRLUs7tcksaq8OdboNoUzWzZsUOg
	 4Ksbd95Ha6QChPFwwuc4S44O57smTgmcNsDpDxiT6Gdm/iyKgy6AuLodQV9offyNIb
	 DF4M0dUZpZv13Z2M3PGxEpJbjiZBEmjW2NStXT25IVOemrnOLL74Fuwv/YC45Hp6C/
	 npL+dQFKAu/5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2805C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172151555363.1772.8799066351433032506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bfb9e8d462336465973659b8ef3f80883ea0049795493e3dcadef9bcbff023f
Date: Sat, 20 Jul 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721515553
