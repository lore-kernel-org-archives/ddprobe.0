Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D8C376498
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 05:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772430894; cv=none; b=hry4pzWAmGNlrbIKixfte+VA4WmWao9HJc0RWrIQp0zrrEZE7hS/cBnsjj2Mf0ehnoILK2m8DFMVN7xSkyvHF/fw41g4qKMFw6iZIHzDJ3iivT5hpdvu6JE1EqCUfBaWD15AiRN+tA4kLpfiYD3Y4mUrQQeBQGoqbMEL72+6fJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772430894; c=relaxed/simple;
	bh=sBe3AgMwAdiCOUGneoEPMkZYCoy148+lcRnoJnKCqJ0=;
	h=To:Subject:From:Message-Id:Date; b=i6upHWkDafR2W0gl34iYvFRYyQlMOvImjXqu1dPOVSZkvXJETlJu0/bGx35de226augMy07Gh6qvHUTCu7Xz2WStZ4JGMAmBC45HivUDrRnqxXptVN8N3fyHbY2fYhVvvINDiPpRJtcYv9unkpmdIGFq1kc3OtuzwlFj2ub8WrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0pNjWJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0pNjWJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1358C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772430893;
	bh=sBe3AgMwAdiCOUGneoEPMkZYCoy148+lcRnoJnKCqJ0=;
	h=To:Subject:From:Date:From;
	b=F0pNjWJhF+hvnsyPmfSbNlnd8Pgkf25PYjhcwsm2Zcq+6/FmiQIbR0Kv5652Zq4js
	 AAdTfeHXAopAwENpcmnE9hgvTmjZVCZdeA8JpDqd/5g9na1MA3bLyJbkku5JTZRtzj
	 c46NUB7tnUXTgdjPkwfTikOKnxiUl0tMfeIhbZbJ5hT/iIEHaa1FbA0/7Etf4jN/mM
	 bZL3XIIIQnPP3k6PsIuESIuM3X9oFvz9Zj/n9B7zm5IyPLKOBpkFeKg1mcBdPeTh5A
	 +urtq+Y0Fq1LwtrRibhyv5nHCsAfjoedJoGoW3RoNjYqknhmsbBB2wnQvqd0yfDohF
	 NOifN5jL/ybqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAF6D58E5D
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177243089359.5255.6868172281484322350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693b183b7ab7a038bf3a0be9caf67eea0bf30c2d601ecb699c1195bcbd5ccaa4
Date: Mon, 02 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772430893
