Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FC33D5C06
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791883834; cv=none; b=MdPftGTRNmPAWw76tTWniM1ougfXMHkF9BBkhxvB6g7PhVWbm6mFwqMmtouxt3UU4h3Kw0tSvz9RcdalJyFJNuSe7g4Djl7tBAmZBfMaD2iQCLjPr5LxtTUEAqaKzyon6eo2vOJPx8WLZ+5a+tWIff/4em7kfyIwTxlmMXxrX2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791883834; c=relaxed/simple;
	bh=2LcwVZuZOjMXmn4rCXLNI7RElw5OtybPY4LpwPrEaAk=;
	h=To:Subject:From:Message-Id:Date; b=FOVmgBoUasB5zdkkPvNDrO3GPHHBDUBCAFD+lLwI6WxNLqA81m0Q4b16yfIq6cEyYg1Lsa9DZLWYajrA29/ViXGvFNuKFKOC2SjQG9qlls4wtS1WE4TRa43lS2JcjcHztpjuuQimX52iuTsEPl4kCn3ugjKyMq1UV5AhIWfrxdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0HPtYw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0HPtYw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6B2C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791883833;
	bh=2LcwVZuZOjMXmn4rCXLNI7RElw5OtybPY4LpwPrEaAk=;
	h=To:Subject:From:Date:From;
	b=j0HPtYw2c9/WypQDUiaD0kmhDckVb8kdLVBIyVmU0ixLedECEXmXZOHeCm2l1nZG7
	 /jpdLSVhWQ3eEYOjU/B3kXCeb5xhN5ns7Lkb9sywEmTkzpapAAmPbdnzl33mAxpLRm
	 nM3ljruJRum2n+M+JbYFpeSQwJ1GQbyx1bNskVqWgtreh32xMb/ZScs45hMSruEr0p
	 Tk1OKAifZOWYSfIx7hYFhOstQPGULTMyLlqSJo/+8txv5YEGGXC2zdV/FqbZ8if7iO
	 gSXyBYJ9NUW1A/QA+8Lx5v77yTU3ud2hxiP/ZWTg1CDn1RPj18K/EFCcaTyYVKvEYc
	 p7T63Jf48EM/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACE6CC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179188383369.21660.9826237366044504105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811a65b0626df0a3fe52b97c5a483463a3aa1f87e750bf4c5db9ff8179ccfc81
Date: Tue, 13 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791883833
