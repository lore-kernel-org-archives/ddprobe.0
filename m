Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F92A131E49
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746248395; cv=none; b=Ka5DMb4nbQe0uEjCKcvSjP9pwbAQ+1M5JoIw8HrcDdCeLrCCPdVhEll6TdCpFu5NcVCZK9QdLB8VJtP3GYGuRNRqRKFQDburb1Fiwk671z449zuiV4r2Z902Yc4UcUDcSDQqZc9rBQdXTZIljmlaKphBcMn4pHFvIbNeI+MG+m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746248395; c=relaxed/simple;
	bh=eC69QvNnBipjK8F37rkmAtKjhOaejMHpssYB2+2e9xU=;
	h=To:Subject:From:Message-Id:Date; b=Ta69D+xQywOPufuMWE1oS8B9XLXwI97g1/kcuVRN1i1iz8EaRp+/BvXskMwIAdiM3b97WhpvHaXLTp8gnTUOWEoM9eoFnL2V12SlEBZOMbcwnK1/FQI1z3fEsal2qYzDRXAGDZ8/lGUXPlCccgC3gudEsDL/t725jG9WgIj85Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Emn7TdE9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Emn7TdE9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AD3C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746248393;
	bh=eC69QvNnBipjK8F37rkmAtKjhOaejMHpssYB2+2e9xU=;
	h=To:Subject:From:Date:From;
	b=Emn7TdE9jlO1q9SCwVDHZCxAjTOziMmB9ev1wzLILywNzY7z6+Z9YBV1iM7e4u48g
	 u7Mn+WpjtF/ZKuYxZDgYjxlQmdjmm5kMU4z05jNYuTbTbsX8H21Ry+o7B9m8Cxh9V6
	 0ntYBJ+lNTvplb/teR8Yr2jT+G6DgqB2d+OXusT6Y3POv9L21xxRjvpLe3/PG6AXvk
	 AgNl5ImpYTUZnWjiwCeDmST6YUD1o1TO7xt8bGMe8AS0DkdT0g2xAxU1h4TSw5cAx3
	 pTG46CrfaNMfszoajsZcoP1Fr2GN3LUqhQVO9g1E+/WbHhd57GH/b5HWkFqvHgSBmn
	 lQPtNK0tPSc9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9485AC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174624839357.3594.5707217118360992866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d0fc5a48a863a3a2f2d683580fed3d6a46e0775d9d84e76d85905d0b864e4a
Date: Sat, 03 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746248393
