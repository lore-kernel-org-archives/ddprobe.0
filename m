Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A6D2F9D82
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770741234; cv=none; b=j2T91LG+Ui14VaIxk6SE5lDwsehenIUTXq85ZvyTTpUrG8h1uLJKHgE4u8HlBQun5ggVxAfd6GIbjDOgb5qcBKK9zYD1/cGnzENIeedbWnrIPYeIkqzfoRsxqi9rqIDgBHCrvFggy1RnGfycL908eR7QaU4A3ALKi8qpp/l+1NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770741234; c=relaxed/simple;
	bh=F9gk+q00+fRfv86368qcuY6nXpHa1nAH4Otsf70bRLc=;
	h=To:Subject:From:Message-Id:Date; b=oAhwawRdIBdOGbXBmNkrFvLZbSHBu927Ki4JEoO4TFhnf61udRpFDTr7wUJRwjTEpdwsrZNc3MmzM1JcfhIBMxTJd5NCCLg9zUFcoqGjSCZkSqP7za52EWUz8LOw3TIcYp5HkNbWgs5NhwOraevtA9hJZE+R0RYnCsrzOCJu0pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TY9e0VHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TY9e0VHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6101C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770741233;
	bh=F9gk+q00+fRfv86368qcuY6nXpHa1nAH4Otsf70bRLc=;
	h=To:Subject:From:Date:From;
	b=TY9e0VHnVPZviEUE4GGt6iidHwF4XtCuNYCABwBSPcEisyZu0vpAMhzl+M/7YkPy8
	 03Nd/PlS5fW8BjjhuNDKulfC/C/04aRrqDHLPK3X1KxfC6ugo5Fn8Zj95dxXlXFEHI
	 8AOZm9kMqDhyF42p9cT/B4L3oA4XapzjlNV+jzO0eXR2pj/XUfYj+Oh+bIwnR3G8uM
	 IhtT9RF/wk1TZv4jKpLqbuvqbn/Sn0WRak1gi0bNSreFgu1SaiWQLzXSP8xPzSaxxM
	 7IWfegZ3YhRHqAmBOtahquzwA9tYntQodQo8typLSuEMCDQffs+m4w2UrBMhdRjI86
	 jg4oNw82yL+4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AA5EB26E8
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177074123371.10937.12868873463850630509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fa3365867e95cbacd49e4b6d4205096e367318cff082c927530c60a2b890cb
Date: Tue, 10 Feb 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770741233
