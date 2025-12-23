Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A3424E4B4
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766494434; cv=none; b=YSyKrNlgIC6kk6GMiEHHsSSERokT7LWv2QUiYZCmgYn32+oHE5AQ0N74o3QwlsFfBim9MnN0oXylLh/GBJ1DHUSiwg9jCIL55rVPBHVn+ASAy+sccN3ViEcrKqWm+3m5FDuNX/u/LlE+VlRrgqKy4uGM8T9JdfCngITMKHsD5Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766494434; c=relaxed/simple;
	bh=RA9SbYl/uFk4po1v0sQvc5Uel+6eY5UflmUV8iW0W9s=;
	h=To:Subject:From:Message-Id:Date; b=ApcSagtwXqT4L/41EhstVpQuSM2HQeYoKQcsKRjEliQSyFA1ktSGZUvX1EW5rgpbY0OTWCJU7wXtxX24XKloI/0kAsQ1zh1w0C1vk5huLik8GzBLHBh40P5T0JeX6sS+z+7bNDfjOHfcn7TvOKa5T8T5MPUR6FB6Zja/H3C2sMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciBq81rP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciBq81rP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E289C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766494433;
	bh=RA9SbYl/uFk4po1v0sQvc5Uel+6eY5UflmUV8iW0W9s=;
	h=To:Subject:From:Date:From;
	b=ciBq81rP+UG5zAwRabaE8waq1MLTmE+kMptuGwmdv0ar+6Fhm2e6qHtIWajuwQljs
	 U5cP9MprZKTaCD38C+lqVsIuby3pdKKnGbEC2M08Mmo7llXMVcJC7Jsj7UAchZwHbJ
	 ImXOfgwl+hz4Ffo+UtvX4TDmT/8F1hC8pJZzhLkHUXiYGH7tggwT9JI5RXZoeCsGs7
	 9Zi4mere0sWafnljrJTWT4wVJt1LXcNVWu5LCpLhuTUG9jY7tXQ1Augm1DHZWKKPaU
	 dFbXEx2Nj973NKJ8r+onSK9kjp8IxT+E7w8aBWkMRcxG6swRQWMnKiQcIARBYbpCDx
	 H13EeyjY8D5eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F426E6F08F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176649443357.8899.3984509618968966958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 128c584cb2f241567c255fa3b2d6e1384b2fed9c8624bb3d6998800c18bad6fd
Date: Tue, 23 Dec 2025 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766494433
