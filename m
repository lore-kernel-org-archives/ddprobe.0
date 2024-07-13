Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4957422318
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 15:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720884023; cv=none; b=DrbxIXadjGwvHJhTQqt7y8WeY4I7YpY7aUS59tSTwYKmZVUt6MNmb54CvvtxyLOGKmtgyJRvPBWP26deTFWhWg5GP4/QXgiRGKDtwXialpZDIAlXU8QmiDnLJ4KLPtaRaf4LLAg0lVsuMatuOgZZcJF7fp9akgtE7aUVDSVUH/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720884023; c=relaxed/simple;
	bh=xCjWRumNLy9Hvj5IedyQ9WH01yfAjGhQ7i4/fMBlps0=;
	h=To:Subject:From:Message-Id:Date; b=YO0IlUrDqjKRk9hLTP4ZCmwdzxaDxaaKqYTZv07LcF0pQEN3ZmpghRPixJSMprCKMGsj/PFMuy6cz8Vt156qmMAMdJIyJ6g/Iej472ARza37fO7H1yw5u3uk1ZH6Yefn3MXDunt42AYS/Y0mbseu3xNprhPKdirfuqyUC5mMUko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyMs/2Z5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyMs/2Z5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3418C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 15:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720884022;
	bh=xCjWRumNLy9Hvj5IedyQ9WH01yfAjGhQ7i4/fMBlps0=;
	h=To:Subject:From:Date:From;
	b=pyMs/2Z5casu0NAfPEA+hwrIVapAxnzq1Sk2TU/ilcVCgmnuzZ4NnvRNNXO7nwOYW
	 NwR2Q4w6Gy4KpzvaxwF2V5dzIIvwBEeKPsg93OHHVkVPxT+sN9hFoQKdhkkAlbsjjf
	 k9tB8GNGMzmmqGNfFyglCV3Xe3LYOmGEO3Dm4yT8EtFztKh7GK6rPIt6HZvcRY/c01
	 n6RrksepMXstLY69Y9ywHQKHtkn6nawVZvp/hYGbFGSlYytu5ZksFKdmr8xoJ6VZph
	 YiCWRm29/dUY6XpSOSygji+Eqpoq7LYWvN7gkj0NaO+pFFdf6e18RDLZqFAxyt9Ptj
	 ebJa/EptgCTtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3E9C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 15:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172088402276.17590.1871036539768626696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb842629a54f1253b6528f3a0a97df9c52693edae62eadffee4df0ebb687a50
Date: Sat, 13 Jul 2024 15:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720884022
