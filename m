Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7C8221F14
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748473793; cv=none; b=pXdLwmt8uCPnsk0vj03dVZmdU9PKAtF1gMRaLMR53wCPMV8Nm7TLKUFL18Ea/3ht5yX1xaKYjrLgKFB3pbnpekqBU4Azzm/trnkBTvWGDQ09FKHe8YFoa1pK7mGwasuhpWcq1530HMbqoomnuftQJ5/xpICBvt7obqmc/y5farc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748473793; c=relaxed/simple;
	bh=P7P4z1m/O3vtsLvJMRyNJ8vnhHYiaNdntX3OHaHCbFI=;
	h=To:Subject:From:Message-Id:Date; b=I9bUiOCsVtGADVvuzgp4rxoystmxR4ZsmYG4GaTZHKLQMjIwd64iITxZ7WnyGit35f6zUFLiaxVNPgfpDer6PM53AxX0Eij4+9REQhnLFNfr4ahi0TKWeZ+T/O1ioPTZsm530Ogrys1tNGB0ZgBERxvvyaQVeiIlf0iLpvEiW9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sh0NGMrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sh0NGMrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0262C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748473793;
	bh=P7P4z1m/O3vtsLvJMRyNJ8vnhHYiaNdntX3OHaHCbFI=;
	h=To:Subject:From:Date:From;
	b=Sh0NGMrVdL5IbCI1bvmOYzU5adXjqsLw3Chd0Ea5D+b3nCEzF2w+3qVU0SIpC1j31
	 lLfv7E58Ih8HnGLUDDr44nth1/0h9YbUwasvh7WoT4j8pcnmYE1pbW46u06hManZFe
	 xGezzeU0TSYcJe5B5KQwPN38DfRkc6BjRLUx2c9S0x68Py4W2GXGVW717lt6ac5ovN
	 +T+yCiHoiWhz0xqu5EV/KK8l7+/cF5Q2QhpaVh85hxELZwcRcc/kklclif4JlAJUuq
	 0iWiE86O6VWe2iC89XwmywgZXDh4kcKCJ8LgxZ0Dol68qlP6AAOQAjcYEMMc1hJy4x
	 eZ6fgPXzTb7Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE86C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174847379357.29377.4203889762695001070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c690a1df9116d334e50ce3660874feb39fa7752c74c81aa5916f05a112419ad
Date: Wed, 28 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748473793
