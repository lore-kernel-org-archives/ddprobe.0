Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15366284884
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 01:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763773914; cv=none; b=jJwPIXfhyQWuZsAqdEUSKxIldN8s/HpsQsGy+XgnQYg67ooRw7t8ki4tHdooJiS2px+bm4DLqE00aL9lP79DOZPQX8lK/t7wZxL6b8Q2rXGicsWG8CFH9NmxO7a/APC64l0z5dt2AFJkZQJxDsnOSmsngzWi8yLkzKz7RSrYm4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763773914; c=relaxed/simple;
	bh=S5yTn+4hKb2ammBw4hzEJpIjq2+sKiwpsClrQ+yWymk=;
	h=To:Subject:From:Message-Id:Date; b=L8dZbhH7x+32ApdWDSdKX4jtTBjAipieJf8YqcXjf0alDorA8nvsTSC6gc27XqMWIToFYIpJuRP7D1tlnurZt3PfdxDYLDOcqHVlMOnuD445H/9yYlGlETrXhyKZunheFFONk22/kRwXsmQQeC7hOZL6iCS5diVMR7Vdcm6Vpps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7YG8exx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7YG8exx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CDEC116C6
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 01:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763773913;
	bh=S5yTn+4hKb2ammBw4hzEJpIjq2+sKiwpsClrQ+yWymk=;
	h=To:Subject:From:Date:From;
	b=e7YG8exx6ERJX1sn/OR2570rY5Pk7D6qLKexiRjmB1H0/88wz8syOgQGFt6ON3x8z
	 e2FOiscxPlJQ2wdXM+QZFsR522/ulHKz5NxKIAH7KoHWwKIxGgYgw3xI8NcZT6boq5
	 bjvbY4neCvUGTdY7u63N/WpOoI584c28CRkiEgmrIYH/4OktVf7G1TgnGuhV3lpkRl
	 gUWkhALeSreM4vHIL5rh6ZIJBjGSFXLhftqIc7f7cBXG4iqLXhsq7MhU0xkWj1YUhr
	 ZFzzl+Ema/+dH1QrJbHkx3oAFHT3OQeEYJ7k9PNAKIWrPdN5BRN5/HX7ufzneBPcSL
	 XzpGDWdup2eKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9288CCFC518
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 01:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176377391359.28763.18082060927948343422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff000c43723cb306d0a4b059d3f31742747d45dae96bff709cd4b60c77f8cdd8
Date: Sat, 22 Nov 2025 01:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763773913
