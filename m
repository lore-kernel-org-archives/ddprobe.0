Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E9A218D78
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730324154; cv=none; b=Dciwq1Mlqd+TPsaM2jcoZ2aP7BCB22+vddkf2VFGKnHE8utKT9RErMqSqyyQMDPoBA3u29nSAa87VLGQT/ZNHR9DDHM+2bJUgkpcnl/1sNfUjgFth8krz4gh47FrfgXi92/py6EzjMWi84SaT6HJpAom0wANlnPQ41lBz9fcuUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730324154; c=relaxed/simple;
	bh=XeMcsEVESgeQSWw3qXObuP4N+Ke+YQq2ALAQe9AblmM=;
	h=To:Subject:From:Message-Id:Date; b=BtO5x7lkhhziwTmr08djlb6KSmcYOfTgQW667oJk25OwOD8VMVKXvyrSG6TUB1BdnEbz7XNnj+CzpI0MR8WYJIb0TDBbVyH+E576h2NZRS2YLMpneboEeKuuOA/NYbv7txE+RcNFjGxKtpDgBtaaFG27SckM/NDsfb4La9jUGqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKDGC54a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKDGC54a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0152C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730324153;
	bh=XeMcsEVESgeQSWw3qXObuP4N+Ke+YQq2ALAQe9AblmM=;
	h=To:Subject:From:Date:From;
	b=lKDGC54aZUHC6LDMDukfj4D+zXO1GRKiPdSg08MmDOx2Cu2z7XGqJJUtg5hCtBmjU
	 Hs9oV8VZF1NVrdzmZGBZIRwXKGI/KKy1Ml8rNAbU4vJCo8rWwhNJvPXu5dLgUXiJUP
	 Jdx3kDfOh1fMrVfQ7IY6kL80yph3Rfq/wOVrc4ewhdPSqoq5rtRMfMO4bqbeDiD7BE
	 V0KgEX8fpRWkCmw+n8ChuVZv+dxxFDPYg2kB6BoVDe9watx1YflLyUzMBKmfmlSeNr
	 ml2AJqApnu5JHvPr03q5is3AMObsiVZKup2snRjadY+mHpiJcg0E2XpJlkqEwVOWXi
	 12NNfMYaagCMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9A8D6B6DB
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173032415362.29808.2548828804032811388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0bcc44fb35e27efc758655e400553de570e9c50a401a3b08f26caf4a20f5f51
Date: Wed, 30 Oct 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730324153
