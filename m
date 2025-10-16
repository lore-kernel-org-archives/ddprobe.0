Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271772629C
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760581194; cv=none; b=c3VHVEqcdAI7DvZz7SYDokeF09N9HA5AgJLJo4XlxIz0PPD8M71L0qNlTB7LpxdjAVicWiraUOFrDXrH7iTUaarkT5W0TlpFd3aV/YgMWF0dUB5vH19i5c0OcYI8A9Z02mFNjusYzVGVC5J+bUcQ0rxmcSsikuqB0JuAu7gEm0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760581194; c=relaxed/simple;
	bh=lcY08Hyes0VggKaX5OrxXtX5bK0nxYXHgFwYOwxuAZ4=;
	h=To:Subject:From:Message-Id:Date; b=LUc6F9uC00fETiE1KIqhjZwfCYZ1iZ1L+s9IKL2D+2GTlwA5Vj76b6Y+HwzsdF/VyE4jaxIpxKISMBkquPxcEhcZpwwDZgvlAHM2piNW73fpKf1b0WViPvQuxpE2z9mLgGcDhvhoM8wcTczxKU/UOeDoZnAJ4yNBSgWxJuaZivU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCve2ko0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCve2ko0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47A1C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760581193;
	bh=lcY08Hyes0VggKaX5OrxXtX5bK0nxYXHgFwYOwxuAZ4=;
	h=To:Subject:From:Date:From;
	b=CCve2ko0683dHYAJcBmufAQzKkCsRkntv3ytKTpx7659cDXslCbYm+qoCXWCClLN3
	 3CQ9ZBHdBJkfpZoKe1OjxuwOCe2XZAFSgcZdEXyouvZ/uX+mPNHUcWzBX714bUvuEQ
	 STf8OHUlPTgmtqB0lrvXa6HNX8wcihyUMT3JcxvRwU4blOUYwODWqh8ACPjBWHW0dW
	 i6Z3D5aFvvVQY7FduaTTEkjASiVIvTvU8YQwnTMqkv3Nr1Jt00Qn9J9dhLdOGb5S4I
	 LcTIITrx5nf67d80tdXLKsdIFddgw3pDOj33RPwQ4P7IP7aqzY3qtzQOPI/yJxLAyy
	 qcpZ1b0pSTceA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D76CCD193
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176058119358.8209.3315677255615830728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a70c1651f153b1cdf764050176c2262f5a7888805f76088eb7ed771d25144a
Date: Thu, 16 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760581193
