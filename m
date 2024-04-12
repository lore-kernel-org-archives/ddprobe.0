Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510466AA7
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 01:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712887163; cv=none; b=mdWgaptK84pKygqA158VhrjzeFtYUKEmPgKltsO1vCAbrpA1dqVKpQlkF8XHi1JGNOgFsoctY7rlhwFm0AbPmtVHaWotGDwPphXAF76hSn7X/z3t/b6DqPiNwAQaWuMlCM4ukMpLY0JPd2s3+v2fWJi7PRrQO9G//66VmcRmHLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712887163; c=relaxed/simple;
	bh=V25zRjGUxoA1HwzWHlG4H1SiEaL+BmiNo3J7XPGRpA0=;
	h=To:Subject:From:Message-Id:Date; b=hQVZEhyBxDtoCjRnuuS6dzsqPHRxcdyUrIFC0JiASqcReJPiT550RxVai+PFvcfd8OorzR/SXXdfjotNHINbukBNwm+ghr4yOibG+iOxobIhsB8x/ThWpCbjSDgjdlBYA0dwYM+8xqlztq2EhD+m/B9/A/pgL1R3NuDXuG95xoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DS85mara; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DS85mara"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1734C072AA
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 01:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712887162;
	bh=V25zRjGUxoA1HwzWHlG4H1SiEaL+BmiNo3J7XPGRpA0=;
	h=To:Subject:From:Date:From;
	b=DS85mara5j4PBP+9R3Khd9Z5Dw4jtReuDnhyD0e6A+okEXkFEDcCYlzXpXCNnxvxM
	 7A1QEFgYiCOdgldqneN+7kNqlhvNJDoliD1bxLFVjnvaGqQ7BrDj6ZnUFvvweGufyn
	 vtTlWQsjEzOu8hnF9V27G8vw0ghQrukaDHHfgZaBhQ7gddtOa+FzwGiKpFh5A9aNDL
	 4aIsrh4Ljb66WkvWzidoyTlfEhSryMisxLUn2bRGYZZGT5kSOrQmV+/3ibiBIKezWU
	 zQUzMhdIpb3/HuRnfsv5Li5o5Fd1QKcRdhvLT/MqyxNV8Z3cE89TCiy8pkIyNKAbsY
	 1WmeZlaHDDS7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD822C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 01:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171288716276.29240.4608950171036295128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86b9f39036c8aff004c73d0f65781e9fc7290a6854df313f178e111111e16c2c
Date: Fri, 12 Apr 2024 01:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712887162
