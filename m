Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB536FBF
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 07:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763277054; cv=none; b=u2noG+tmnXvoeHqyLbFbdU8fI2SSG/YBNQ23lU9hPza8duXQj5ystzwkFetJQGhbRBT+zTNLeoLxIZijfbvuLFymhvTd2Kn4YRyrqCKz3vupSVW57tsznc1+KTETX9hpT7HA+iPhfWRK2uJtfZSEtArtZcB5Cs4S7pTNumOEP+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763277054; c=relaxed/simple;
	bh=9rK+dKeRanvo8o9HNhk/kmTWtNkY5HgE0OyDhWFK18w=;
	h=To:Subject:From:Message-Id:Date; b=G4DC6IxcShqiUVBS1iq+tZDegt5I8ML+ys+aus48QaFteNTj0S6cWjClwHY7L30YsDoZGPsV5bvtxD9jlcig1fXLKicwErEsByJhIueviFytfoEE81VOWf1W8hm0uD9DrHiOSlpLcPkN6261epHYNJef9mr051MiUif+kjbZ2Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+c6Oq/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+c6Oq/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D280C116D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763277053;
	bh=9rK+dKeRanvo8o9HNhk/kmTWtNkY5HgE0OyDhWFK18w=;
	h=To:Subject:From:Date:From;
	b=j+c6Oq/R8/i5FU1BY4xCwgf5oXA5PpUxOxAZHYYHMZpF25ZA71f2vaKvmxXKWrKb8
	 QcbetgZOA2UA0//KcGAkFp59Xe1Dn9WOJPHunZpV+KiheQAWZStDpnHBsI37ZJQ+85
	 0q6P5IOgBi7vkxeb9Rim9yeYy0O5qMRiTT4JzbCPUJf0K4XaxhBGfszYLS4cBofnGs
	 C9hhwPW6DlRTJf8ZEjOZ1mQ8RwgwJQCAQtuZpFXNpO9NoPowASiwn4dkgUKLHiV2Vk
	 pnpEKa+Jo58biX5S1u5/eViJWEL+mXSQpeavt9fvXBF4cQvMlRcvjY4w9tuGhtnqao
	 9Q9z46wJH72bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90873CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176327705358.23932.6030290237381802098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f86f9784e30189766e78d38509b7c4a4ec142f1e5984b15214b62c36f8e6d676
Date: Sun, 16 Nov 2025 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763277053
