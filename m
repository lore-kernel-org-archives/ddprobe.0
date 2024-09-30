Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4080A189F39
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727705154; cv=none; b=Dazr/4M1ijRCvb8fy3EQQ984/m722Q+deFCIRRPsgsdgZ+Dguo6WYgBv4PD17XJlAMnyOn8UM9Z2ZFUxWprv6TPBq+xF8rfMfOlj2ADRhlwYYkFfB4E+/oT7PzUj5csCTmsq61UHbfde1x2P3O3jYzTd80ZjIn+3TaxZ/fN+xyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727705154; c=relaxed/simple;
	bh=GnXDIdAgFZCpFxwethmKjTWzBLuGfGSaPOhsdRufO68=;
	h=To:Subject:From:Message-Id:Date; b=syYuFhd8le2EWRlkZtJG7wGNMhbBGjBKiyUQL8Qz5Xhh/YVuQc9HHhFAhjf/VSjk1wL6c+qe89M/DTGjhjyLvJaGvD7Hv//pAKtdEqR2PaNXSTHPygZ+GmhzT4adzDVZ5TjQVg2vcj2GQizqvrylHeNovIWCZNyNxfMdDwc4CeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6COkuO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6COkuO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC442C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727705153;
	bh=GnXDIdAgFZCpFxwethmKjTWzBLuGfGSaPOhsdRufO68=;
	h=To:Subject:From:Date:From;
	b=k6COkuO76DbTHdsi0pfDnHI38xS12ZwRHOlubP3gGyq06csY/EMh3YRexM+/tspEG
	 2zf39iqVCnfGN5+sBIXwYA0if0U9YMZLa/sVcCO6Pq7v0mmvW5p58emzQRRu6QWHvq
	 RPN2azM9F10YC8iVPN5AGkr9YHx5BvSUU+elZcUJ15GYngn84NRBT7o8HasbAT+Vop
	 kSlzdsneQOYhRIwnsQKlcCnEkG/z2q33zZBfVe1PiuNG9uNf6kHMsx1Sg+SEF+Yzu8
	 4ytAWCwsAIGIlIJvCg+r3VCDBqfWmxKroEy9mbl++RNe8NLFKyDRv5maxuLffVSYYC
	 FUnRBV00Y4tXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0E3CE834A
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172770515368.2505.11778295121599268315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed3efc7a20104cc8aa84ac0a2779c25ddb6687d4e4ad04f6e9f5c4ebdb3f990d
Date: Mon, 30 Sep 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727705153
