Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB1B44C82
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707154697; cv=none; b=aC28Q4M66QmcEKaMsv+WIvManHG42DNtdDQLtQteaU4DHV0LZRCJHHZQrfcyL54re96X6ku8XpwzI8FWR5NP/ZLZIqfQjQhG3No1q7R/w7yudKiSD7UFEV5QiSOkg3kfd6Q8gKL/XKFk33gai0tRpeIDtsY12n4W7p2Ccjp7WDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707154697; c=relaxed/simple;
	bh=a2N0D25oK63ssbiRMIxOqE03sETMM5YvM6oeReuRa+w=;
	h=To:Subject:From:Message-Id:Date; b=E8oKfWGrtVzIXnZfXlyUwRa5cwI3JF7BGHEUCSyqj69NNa/jOlIUUjcvviVvb4hD8NGAbMiw7zi3MCwTiaOZ8Jj8Blg52vvgZf9fnZuHPwHbfCE9NZoS4kBLKlSD4ESawYu/Bm/XjERmatf5+P/seh9PiwbWGK9iFB77OjGJSVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqnMft7n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqnMft7n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D04CC433F1
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707154696;
	bh=a2N0D25oK63ssbiRMIxOqE03sETMM5YvM6oeReuRa+w=;
	h=To:Subject:From:Date:From;
	b=eqnMft7n6h9/IwDAQp++0WBxh1L5Bqqq7gDtKzCCb6KMTJAkmxZS040Z8yP3nMP7Z
	 6oQUNDCh0VLI7HjHhuTDbCbipco/jlSYLVK93l1qG9lMk+3X2UxzZW7NKi9tmdrMiQ
	 u+jZ5LvsVDcHpCNkYMY7SlfRB0cPvAnng2qGGqiSakyvPmHuoshjmaEtVedJWdLgcg
	 ppqmsyCuFMiEZwLSQJ9fcgXedgdLP5sO/Er8K8C5BweI5bHD0v9ML79+eV/gvKNvfz
	 B1p9U/Pqv1nix8LrXB3nqx6jd1rEBtjCtwvRCvYcw6V/hMMGzlCWQypEACtexIQ9w4
	 3EkvWGeasg4nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81081C48292
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170715469649.30003.16829073037412425268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab38097eba9bda750490ec08d506fad0d00848b893a75186866ccab83cd63a5b
Date: Mon, 05 Feb 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707154696
