Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B503247298
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756679394; cv=none; b=bypbuun+CoG1t3PbUYn/ssYq96BhvGfiWnaxRlEJT8xsZyjdb015lKzt8yCWw+9COmwQu3Fjd2LMWWv8d+IU1wjnGCjFcP9Vg+hO1DeZcK+XCcgVINwPo/c8HkMXp+xkMwfqXaE1LduRX0shoy/ifXwdgoOzuUlIKcHA70sj0Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756679394; c=relaxed/simple;
	bh=EYWgGwKRPipXfd665Xo7st3F+6clfKsGGjcVCOPvt9w=;
	h=To:Subject:From:Message-Id:Date; b=mz5LwEFB6I5rujHAscH7EbHUXioPge7cT82kAtwUPeIfpsjx4IfK7LklRkXyxV48VfTvixoEWRVcwYTAbT5Tu9rFWixPGo91or4wbp68GzjbeU/i2WxSgGqUelXaT5j73qiKQhBNzx5vFgR0abA5yxed69GMW4bJp8orab3koMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQJlVAqA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQJlVAqA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B28C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756679393;
	bh=EYWgGwKRPipXfd665Xo7st3F+6clfKsGGjcVCOPvt9w=;
	h=To:Subject:From:Date:From;
	b=GQJlVAqAjUM8t1v2E48mu0WVZQWU1YyXNv4ZOPhjb2BH8G/e7TWn9625BKcf4YE93
	 Q29WehS55wfLIgwAAb0tVD0jlhxJQ4/R7EdGwynkwxK5z+fquxLWldbMu6C1RigLTO
	 6OwXyAxtmrV+q2gOT2ZQX+LOBvdvEFaFPzRz3bDQ33ZiLQxN8+cdpxJsMVwLMrRKVm
	 dd7oMJGOuKzacZifTRcJWSLqtiGXrOVI/M//0jwpnSgcfwROlQYmZwZaDg4bS2wmP8
	 s/HGbSNNcRCiLNzB99FJFxupG5mGbKW7BuYL0EWLIJqVsFFmyPtRzMPud1W8fXxAWV
	 BnO7Viukx1wpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94973CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175667939357.8738.6434414372627590628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4101407e637e5fa36f8006b82d8d848a093271a252cb5f3fdacd18d8adbd2eae
Date: Sun, 31 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756679393
