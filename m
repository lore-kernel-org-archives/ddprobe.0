Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257212EC571
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788614434; cv=none; b=jvC4q5XkC1pUfhi4BRpKXGpwAPwB+0dZ6u4aHPO6fc3V0chLai6xnIW/kmrHJNsmfgCyw+GiIgW0VWDKegxGO6v38mK+ziXQBmsRK5UstAyPmKbnOP2rO6XVXAA1Xy4y+Wt6x5s182jQE22/GANOPAu+mgHleWDh73vqd7dGHw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788614434; c=relaxed/simple;
	bh=PCdLrsFGnocNH/STaT5i3ouwTdLprF2EoykuHzc+f7s=;
	h=To:Subject:From:Message-Id:Date; b=oAtcImoYSrCxiEgbl8/ArBuqztARADpywQX9hpTIUtHp03vh+F4YYtKT8CFk/Sp4ExnzkIjTdPeFnO00iQvzv0/HFj8mz7AHzKZNA1n9EvghkLAAIO3bWbSH7IWZfzFz4Uj4ODMBnFtW9WkNAOXiDWSgY3THrzM+7m7htUQjB4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPrsqPaV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPrsqPaV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEED8C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788614433;
	bh=PCdLrsFGnocNH/STaT5i3ouwTdLprF2EoykuHzc+f7s=;
	h=To:Subject:From:Date:From;
	b=TPrsqPaVY4DM3CohNfmTYF2Idc/hktlKNq/ISm1yTedgtXQ1RTwNwV/8w8pllb313
	 RDp7TEM92nkGASwa2w7+VBxVN+/XAELjZzu47+fEWAw8u8uUn057fD8O4D3f8hJaOC
	 icqijANYhoKxCQ1ndNzFz52xWxQ2mYQWTUo2kGKiOLRw15NV/zGd0kuFne52x8pLN+
	 D3QqRPjsE3p4J6sQXSci6OafF/0BkHAQHdBkqkIi39ll+AH2X19cp8GllnAzbZ19pN
	 RxEo7boc5KxpgeHuJMZDIbBSh2bSVs6AUThR8Uma5qvbxLBhfpWmY0O5IHkSaCaO1o
	 1de8xZW/GzD7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD84CC624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178861443368.8711.6623129003624306167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25ebd4c679de415d45a3ce3d4e832f35f61ef7b7a54267ec924a82d27acf34cf
Date: Sat, 05 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788614433
