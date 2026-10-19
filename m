Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9A2331EDD
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792383034; cv=none; b=nunElzBW5B1qC7sxOq61MlXUIEFnsniT8ttSaeiJ++NNz2iAclnbEEQo9OPVY47Xdykd2KjgDRlPFoKffOUfKgYttKXLuo7bqueDYaIhckFILYb3qF+fBEZTdXzmU3R7gubT+5wX4GQ95DBUM+sD1qgktxZRkj507slUiVSYFkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792383034; c=relaxed/simple;
	bh=BlfPpzrKqdApfKeDvccMw7zbxpQHFDql14z7DKWrIzA=;
	h=To:Subject:From:Message-Id:Date; b=kQy2h/Uf4Cql7qji2EhZpffNDT6ZOjxeHjRh4Q5eKxzxgFWNMMhPP1LDRzgIhYVPBCArMUkLevEaKut3r38hIyRC5GAzwOZ5lgCcZv/RJ2igdT8reN80aCpJEo2+RtATOIcozC5x9fEzFZ+7VahQ0l1HkGAKipK1v/g9twknMsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5g0hWCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5g0hWCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF3C4C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792383034;
	bh=BlfPpzrKqdApfKeDvccMw7zbxpQHFDql14z7DKWrIzA=;
	h=To:Subject:From:Date:From;
	b=P5g0hWCO7y/b32CkpYsXzNCxeWUF9oWbwLvXQAUpAVAXncsKV6qhiF3894jGi/WSK
	 kB6wTPfN1BgPuSbciao144kFoYdt3L5Tv7mP3VFyWSx/7S22ELVWSisPUpc4qZAnzD
	 nw/o/sc+Te7m6RCf618Wt8UMTUeghIS1PrY/2NxigoPwfIYXXbAnYwnjaLfcs0VVuj
	 K3XzNLjk2Y7cIfc3a5vjAgFSaq2weZ1CzOcprkJFukjFdac0IrvXXCucWampjU8ied
	 U+T4Sp0yF+6IpzYxG7pi33nzGhspyAmRLjEpHk2gx9WzOsp5SekPRslCGQq13sC9ro
	 89VgJqaI7kCgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD149CCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179238303374.12105.3996263576897485670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766d5a95deaa84b6a1e0b3ecbe14de2c79ff12f457b05706d285d739014a30ca
Date: Mon, 19 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792383033
