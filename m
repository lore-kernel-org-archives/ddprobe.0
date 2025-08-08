Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27843198A2F
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754684994; cv=none; b=KV15BAmBFM+UN4Pgr8dlC4YUBMF3peMjpULW9fzxWOkc5N8mF3uBEHc11+7Hpsz1DfWA6xagvw81Yb7f5E2fEWnWbG+aeIjGryYg9Om4cqPM9CTTDkSZUnR6WOB7KgHniKuBMLnK0m09Ln+EJW1zAgloN6O7XFGe3pWuPKecWg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754684994; c=relaxed/simple;
	bh=lzg3cgPmtTWIEjTpllL4Y6gPhBx1qLD3aICTLtQimNw=;
	h=To:Subject:From:Message-Id:Date; b=fyprfsVWAy1trLWUf/0B9tFXeqih+DOojlNPTnzQJVWuZiDAtTMETgti8/LIDqqILerRqZ/DKOxmYwdKL7pccPGdtI0MnNEoi7619pG7uoJgELSO9ol6fJYvwpuQuGa6vFrN1fERV43tUr/SnKVPgIjPQz4D2POtakXSxx/Oqac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlxIhfZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlxIhfZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A001CC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754684993;
	bh=lzg3cgPmtTWIEjTpllL4Y6gPhBx1qLD3aICTLtQimNw=;
	h=To:Subject:From:Date:From;
	b=rlxIhfZvZQvIO+9b7tvcn0BS8VaA9CcD7z0dyLdwafrFkxAfPMbyABO9Ds07WY8uh
	 ZsaKGbnncpuaDoX1+2gDzL9xQRzFbDVYoMczUQ+/dcPKCmWHTIaGXd37oIhhaixj9I
	 eFUnM3NDejo4zgzXc1gqGSqK6QH5KMSUYj265W7mj823c9WPuZF1F1r/lm02p8I5Y6
	 2PtKDQDiz/qW4jWie7BaFoXVmoxiBRq4TNqdvWuXTnWfGtP3lYo7aAtsnN7NpQH1Rd
	 pVhyHZHcPnQ/P9rKnzIkwmYsmj90UcDk389xvfgPDZFNZHTiz5lrdTiebQmj3lj/RE
	 2SdQb1u+rpyXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90576C87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175468499358.11326.16599695448860002820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c462a2610bf2b6279601b52f3a258d0e63ce292ebd539702d7a18e883f8b51
Date: Fri, 08 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754684993
