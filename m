Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1694F20C495
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733327754; cv=none; b=q1frXgtdA77RJX9SeetG8tn7kjzBDWXjL+m1X5V+p7BMjMxOrx2tgjUisOssFiXhKNVWdbCZgqYlwk3dc/h6QWOOywVpoehDDl3Ty93+AB7DxlxRlvO+C0Bod2fHgqC2uvS6Ut9bfv324K2Uj+BN3hTlpTBlzv2ou4RpxcNxwSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733327754; c=relaxed/simple;
	bh=0QB4HWCK7Lw1j5ZfT+czF6whsxyWoI3HcTLzpLYpLK0=;
	h=To:Subject:From:Message-Id:Date; b=o7iYIyQyUqqi7eEh3Igop73zh+TlNDVgBi0Yo+jqitBAzZ3xGtLmt7rc/jRrhzf4jvGk+unygYfVnGIQYAJPA6s4vUP0TaImtfg9/XP1xF+o5jREQ7+53fCV9OKUB28a+g6CgmUqgcN1H2JyOhiGSlsvRyhxrIq4ESrHl2+rro8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8g0opK2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8g0opK2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8D8C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733327753;
	bh=0QB4HWCK7Lw1j5ZfT+czF6whsxyWoI3HcTLzpLYpLK0=;
	h=To:Subject:From:Date:From;
	b=o8g0opK2hDDiWXlideFMzyfOOYbzGa95bCLtURiFDZg7AmyNePrWoDA7suCsyNJQj
	 sH/nffdrYEdb1vVyPfFTR7p4HIhCkI0j9B7K91DhQWHshxH20AM2HLtuNB3jFgGvdu
	 HPKaG/evTDusIrgiJYFtjic4Zv+Rwftzi/LbdIxY0J8EMifQRdZWNVi/6pGJc6ZJ+F
	 5kfIQL69hRlLSJliqH5Zbvy5Qq4DsuvNBTs/yGJiFqD05SHiRjE42vgusN7xrW+/rs
	 pRwlANOJUPnsYvyANj/CQ/mi9AUwKRzHTSMerTC9VCXQqz7ovsc8z9AouD30NrhqRI
	 gSBQN3UlwGq+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C75DE7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173332775360.20118.16360540027184385568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f614394bb4d56a09c72648bb61a077753d3b8884065c6322c72dd9bd15a6086b
Date: Wed, 04 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733327753
