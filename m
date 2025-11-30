Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4930226E704
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764493374; cv=none; b=WU3VMg4sulS2A4EHePGHUZ/vPN71bTH1KFSgtoP1RaCHQvddmCmcTaZM4Uvxv0q1WE38sX9dywDuPYSSDIFHIzIs5kqMCCAvlwt5aBkMuA5XagU4nh0wu0X3L5p1LHEYzePvk8tArE3ssgaWvaJ2AUob3NJOscg9LEpV2PgH6fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764493374; c=relaxed/simple;
	bh=KOiMz6tMuwDvR6vkMqyQ7xJCnWJA9JTvIx4mWdxkZLA=;
	h=To:Subject:From:Message-Id:Date; b=JcIwFlAGA6XFA9J5Z4WG/viRSLq12BSQ85SismtLCHb6NdNzKmt4Xf3+uwKRxizCedpujTBtTycCeukZpIwUTLJdGfAg/On6+wlglrZe+9DSJKKMXAQDmCY0NUd5Oan0KEZkCq3Boh+RRhzGoM5TP0uMJMZM2XTkTByP9oz3BXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I16Y70B5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I16Y70B5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B6BC116D0
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764493373;
	bh=KOiMz6tMuwDvR6vkMqyQ7xJCnWJA9JTvIx4mWdxkZLA=;
	h=To:Subject:From:Date:From;
	b=I16Y70B5XrsVF0BxdREmt63RX830p8ChKVTxoi1qSt2DwgiKFr4aPxXKPjZ3ABfBQ
	 DdnSnnm+1kla/umbZ3R/0OPPmYg9kqAB1mJCSa5LvmJ49l9py3qxFQvkc5WafbVt7g
	 5nNjR4NDxQpBQ3NnESJ0w1E5D+u5IoMkDOZ1pdbiDTI4CbbK29tfs+6fluWB59KQ3z
	 JyOPxHK/JyyFJh8yqR4uldjelBpFcxwH+/ITN+pwVzLMun42Wwt5r2L++UQfhN5NPi
	 6uptgowK0UMsPDcCtyFqtngY60GVrAK3W2n6W5QPohJ3gkI0ZHu0R7yYuZKvlSVNkH
	 r6ulcGGj01F/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB70CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176449337363.26262.13001303404149947418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 498e8dfb6501e1d03260c4b220a154021ac82740c4b78f116d19b89072862312
Date: Sun, 30 Nov 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764493373
