Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180F21372
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736988354; cv=none; b=SlpyUQMScSD8PFQBJPw92Z4nCLghXxR9IkCoPcxuYjGUt4Wlbr7MWnQyvpKAiRVxbQVrciFhmEuR+b+jH11NI2ycDeWvrJDU5AAjab7fY6ETOc+Dp9FjipAcynG+CPawvhKRKGTPwYiQ1KI2D02qFoUV4LfIyHtlYr776ex3Ym0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736988354; c=relaxed/simple;
	bh=6v9AcKoTzgijvfsDXK5aGa0MQNwfxvjvXEBirKukPy0=;
	h=To:Subject:From:Message-Id:Date; b=DvHK2SRvtpREDBb7UdhyJxqQWyXbB86FJeMQJdjzavT4xaJumFKceJclMBCf5i5TNtXJ3jydrgkoVVgpklt8NslTxjQRMesZ1RKe7M9ppqV/dYhvbEsphBh6q8EeG70iE30MARG5J6Gg+Zo1/glhfnARxFxhR4RBfpdZNvP9u3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IlxqSmdP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IlxqSmdP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02B1C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736988353;
	bh=6v9AcKoTzgijvfsDXK5aGa0MQNwfxvjvXEBirKukPy0=;
	h=To:Subject:From:Date:From;
	b=IlxqSmdPVrcZ3saJszv5y1ZyvUY66LfO/dSYu05+fzZFNBIIQ9DWF+JhWjkZUpg+g
	 lSpGziYe0n5uy4/LcxhzF6/uAy7VpNwKx3cfw4kMno7nHQH/mCL63QwrPILHDppV0u
	 ePQusV9v/9XcObzZGtUf0ywSbCVKXs08mTUJZUiaqqoLD9okiJ6A0wV+NOplSFkX8f
	 fKpZYqnXh31TMAICY1K1YbtBsnFos5mvJvIsoU8Sgl9VaNOSX6qnHgH1+HZn9jHj9d
	 30yeMpUR81pqJzXzbgCDsIHAZD9N4s4bg8lXuhkZ4//od972otyYRN40IWHHKYGmuX
	 bdTwYNvfwbctQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F538C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173698835357.6616.4556770567344160520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3463e145c40023e61ed40dfa22ee22061d9004de58f1a6961210a2a877296ec3
Date: Thu, 16 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736988353
