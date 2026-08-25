Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8ED38B7D8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787649034; cv=none; b=cOrfhQ+l6YhVU0weMdHyATKsCmAjoMFq9aklQWmysj2K2w5uPozcYEqnh/+Ds1LIEnHtj0fnggrSlfp1apFL867k+mPDCyMimHCgOL850zdBVJ/HWrtj68varjXxB0fjvSfN7W9H5kT9tUFdwiQP3KHNtcy+BxC+9SAgOR9JqGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787649034; c=relaxed/simple;
	bh=yHn4eyghvSxQlNuQ3V9LAIjHCN9In296krBxxQo7jck=;
	h=To:Subject:From:Message-Id:Date; b=Z9ZH1Y9SsvWP9vsXxSQSSiuT9yQ120ZaxCis5iE1cBvEHFxtsNvcW2z1RfO3jwX3wqFmqS69U4ygJDSs/f3aDpwv1TSrOwjMlNzVJpfNTJKSu/VPeKsCBHMrnJJDyY3o7d5rOGKpbYaDQCCDcGj21hPrMN3fzYVZim9GTqJzFwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdFQZxkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdFQZxkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2358C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787649033;
	bh=yHn4eyghvSxQlNuQ3V9LAIjHCN9In296krBxxQo7jck=;
	h=To:Subject:From:Date:From;
	b=CdFQZxkXRbUwuO4TdQpef2LPajrXJEAeveNkc8hlNrhockMznScgigKyCQB2g92Bt
	 qMJJmBQR4ZclOiAOeD3uxVQDwzSWXTEuXQhHwiAsj2bcNbsYJjqdoETKcA3oHDiaot
	 DpZAvvkNKyUWxqgAxKzFyGlJlXHz98RkltGWuftSfBj/a0UpM0SRRR2TcAKhIPVjdG
	 JWzMvMaGpKOoadKnx1LOyFnRox4sVPz9eVhUz8tXoH2IKuhnixp2cV9MGJLY/cas36
	 mRkdJrnEgnpf9ytT1ENM7+7Zsl1q0BCiWxAcIZd9k7q8Fxkx4qhHSzwVQJsUjsL+ht
	 nrjSafHr4lvIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEF1C5DF94
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178764903369.31950.11978994040056481859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff2b5722c1b6bf5b856a110b3d1bc762c507d8c6cd3d7cfbd0ba425c49d51e4
Date: Tue, 25 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787649033
