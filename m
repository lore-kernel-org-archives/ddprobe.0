Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CC01EA7CC
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760115594; cv=none; b=YUDGHWCFhaHYWzAooD/9q4UMznoetW06t3tBz6+BXsXHucT6Sypxra3bpwHw9UREvUFvCkHyLzucz4+kEAvfhqfIjNhDKQJKIH2FeSn8HeX5Qzl3ju00mmk05ycLsljj7QcCI4/gC44eBG/9aRvcvTcrzUk9CVZvPlJ1bj01crc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760115594; c=relaxed/simple;
	bh=16kCoam6lVHsmwTVKK+ZFN1syexCTzVVC4qdy0+LRsE=;
	h=To:Subject:From:Message-Id:Date; b=PNiIiPa9rT2+uz1CxGyIBJ2Djm1b9+V9xtohcXSOKnt3U7BjTRPPg3Z1jkXTusZW0hojEnjbphoaJ3oYdpJxd0DYLe4nQQ14KBQf63kvWNuWJLfkj/BOKr8nmtd2ONYFfsEFxbfLh1K1HrpGIAdhSSoJY7A1LVMENHfNnRetekM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bn/JKebG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bn/JKebG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35CCC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760115593;
	bh=16kCoam6lVHsmwTVKK+ZFN1syexCTzVVC4qdy0+LRsE=;
	h=To:Subject:From:Date:From;
	b=bn/JKebGaslO7cj534ijL1+sJg3asplocDAALBHRZwJBKBPybd5sy9DexxoilI9Qv
	 NtueOM7GbgIXmcWC6LROLS3OEKgCWQnnj5t0xY3h9x6CY6QoXO6e7L8BkxPuzts6G7
	 X38NS4oNCb+ROWIYqDwbvemlSy7v9gXIvZhLTcA1sCJGhpS0GKDi6F9XQdkf8HCj5a
	 d44n9cwxKrbsJclF8yr75AwXPMLaM968MR6Oau/ldu+0e9D4rl9w+73CBnQJ7PS9Gh
	 fuJmYrg/SwHGkIn20nq8KLnw+uoybXNBPN2/03Xt9Nk/6O/ioSLAt03+e26kZQHRSo
	 TCUM99BcnFYlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F828CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176011559357.9408.2791423400395111246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a4acd0c11454d51a75a8b0d43c0372b03b43d68c22e1944d2164e5d9180abfc
Date: Fri, 10 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760115593
