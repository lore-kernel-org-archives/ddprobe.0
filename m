Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3199B17E0
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747596594; cv=none; b=OULxgaB+ILLGoNvB9Ul5iAGY4tQtSTVym/VIA7EP+n4tV6GYvx+ov3n3FrYuwSyEROhsOP6So0dckyvhOnBY0G86ekqqoe6RYGrq0r3w2RU7xCI79QfCb0Zi8WUe2y4wSPIJmrQbeKSBYXodkNOV6qVovuD8ODAc66guprgnO5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747596594; c=relaxed/simple;
	bh=beu1HdYO2fa8Q6C4goKZwAhTPI4uPUx9dFGdHKuxEUI=;
	h=To:Subject:From:Message-Id:Date; b=EAK7OVEBB1MIshEfd7Ybqlqpvo3McZ6GfI0a6IsYpVhHYpjAqaG0+BamG1RMZawAKd/kVM3FxXtBmxE04LWgflek70Zw2la4VVGjs2CK0RbTIq/IgnRH0AL14NHliUkLirACxGznPt5ijR0XGYpIg8L+V2DTKM9pHkc2eJIEv34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZSHVdds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZSHVdds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E975C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747596593;
	bh=beu1HdYO2fa8Q6C4goKZwAhTPI4uPUx9dFGdHKuxEUI=;
	h=To:Subject:From:Date:From;
	b=fZSHVddsncf/yEczmnpTXIi5qOpqK4kbDPnGSwpx+Wt4mjx06E1Md7aCI1N/HcsFo
	 1l+Q63d8C2pVcdbCzb7aklaRb+sYn3e3qID2J1QoIsYJ3o12nkR4eWIsdWeGiBv1R0
	 YF5tJv/5zbPLE0PW6Zx2SKPk+zq88IRuQNjaLPMD3BP2xgHvtnzKs3linLJigafwEK
	 bb/k37PAi9I5pCw+q0fYipEw5JF7u5N2hdUYHEibFH7ekbUDYbqUeW7O8oxf5DeYFF
	 yrFgF8O2wVHQBDWxk5mvDv1gD1uu/B/e+wpoVQGYxF3fB/5xYlQS58+RwiEJsYg3ds
	 kj7BZ+FPf3b+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F589C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174759659357.16155.14398148228438267738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55c86fe600b33f862f3528dac0120027ff219255165ea3d697132e97b1c1e80a
Date: Sun, 18 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747596593
