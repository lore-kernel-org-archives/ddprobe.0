Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1929C263C91
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757012394; cv=none; b=R1RVfAPmDHPglQhgIIKsgf89pUmKOXyiyZmYmcNyPHx/2JGzvs9AL95INlWwfMp6Z2MUiVhY0ILLi5g5unn6gx3zr6gehlcW3Pg3fsAyqbrWttELMIqEx2L78JO/4/tx+Q7G+s/nYrn3d6NHNxx1JfhJihpRMJIJVmDos/4K5c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757012394; c=relaxed/simple;
	bh=/9t/UdjL4xOH6AWxpToD7wcpoR42eoYrqQOKM/YYQwc=;
	h=To:Subject:From:Message-Id:Date; b=D0Hch7D6VZt1D9nFE5FIG3WdLKxVdDSUFtZ+KTakF8nbKd4KSQWaWnCUNJjV2GDIFdjBNYh1NnLkDxx9ukRKgZN2CtE9T1nFqdwMUJFrb5Sdi39zgAhkBaelzt0dfoSVMZTuJsqn9B/nm/6hvH6SLeUn1ReBuTQ/4phAeZTzGSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucPnHOiO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucPnHOiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A258DC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757012393;
	bh=/9t/UdjL4xOH6AWxpToD7wcpoR42eoYrqQOKM/YYQwc=;
	h=To:Subject:From:Date:From;
	b=ucPnHOiOdHTF2NMBI09TDRhcAJ6a+X6G+QKy6GJ+mOZr2u0YPbw7BWM9bqbVJX2n5
	 NkZa5LqmLJRrOaJNknoPhjlLfUtpcGoUkQ8hI6PBVdqitc888t4zSHuk4RoJb/agJw
	 hie8Gjs1U9Lsub/lH6ISOQiYuF3gmPRVt2wdOdMmtk9BkBNqD+1wJbihNIPpa9Uw1A
	 2cePfCFWVQwe/xF18s1rkHaV4nrfIB66kuhy3EEca9tN0WjWAvGMjEdG7mn0NdtqeG
	 dildXC4euphMEJgX6MMjZ7b0JmGRwory2RCW+wL3wJwdfDMO4bKncdQtu75pmzWYNQ
	 hyvaZR0ZfyFMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909AECA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175701239358.10400.9627365262992794272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e320212af5dbcab2a40fe3d1bd4388966521a3435150c08ee2093a5f631e7fd
Date: Thu, 04 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757012393
