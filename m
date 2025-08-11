Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F7226E179
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754891994; cv=none; b=E6ag0ZfYXHt/bSqtePdSYJCNtgePw77WZhB5pGI9ufJfmqM4mme+XwLbHNChphHFxhAdAOsjZgK+95SrotSocHhO2t75F0Clq1xjUGztscD1+UYFbDDgWd0F7ezl0b/mQFUcEl5It3puxtnW3gz/kMQIpP9LMIpIF/5OHmWIIWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754891994; c=relaxed/simple;
	bh=xJKuX4p9asS04XqeYirXsYwQHUrQ/T9ZMqYea//+9Yg=;
	h=To:Subject:From:Message-Id:Date; b=tqinxXEEZBK2us1kigAo0H9jQsip9oi6rdcMJzWU8rq7pNBTrQ8yEinzIgg5OCWj3dRokfzpO+HAD/5gw0PKBddgcmuzrwDJbX1/ZRZPkUNDk15kcJXu/vuclqbBrTYC8xd9KBbAqR35EyjcTLwKOgpk2i5d2wvXZus2XZx7WKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBP2BqAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBP2BqAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D07EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754891993;
	bh=xJKuX4p9asS04XqeYirXsYwQHUrQ/T9ZMqYea//+9Yg=;
	h=To:Subject:From:Date:From;
	b=WBP2BqAfx5JcAa0yHHbgdIiWTK1lIUKSudYu7fl60Yxp56dJQqMlyqlUHBVWlR8Hx
	 vNlv6G3CeUp3UV3x/P7RNk/zyH7KA56VcR+rPFOuQIJhxu0os+ZPs3Q2q6hW8H+6zl
	 u0xGj8bt9X0IOACe4RdSmv0bf6dPNuz269fUHrKL4t3f4rx0bg5ohmtqutXSqLDO33
	 eN2uK62E8ZphJIWBhvstvzfeYgDOgCH9torgIpzzyAbQ2FlmcEpC+q9A4hyKl8y3t8
	 Hj2vO5wwS8L1tio9rmUXC2mtM+n+fBWMAL0sZ8zvCL8LWPt8ddOryqtc+h9hAonwhP
	 kG/T+IrNWjnOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF7DC87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175489199357.30678.9220276967861797110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec35563c07667baf6060ef4701889e00f73bc6d9aa9a4064c1e320375658ffb
Date: Mon, 11 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754891993
