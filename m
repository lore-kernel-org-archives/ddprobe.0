Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F81211472
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759406994; cv=none; b=pO3DwSwijwMIbthuwHAX81+NBTS4BQdQqMxPnFQ3M9uKzHGD+HjgbJopAtMdYnzCcwmQGa8ohg0KZs+Wu0eSUcSEWfbKY0o4/uScEMPQmbBR94J8fpLXnVBTylq8U3kaUQ4c9eQqFctIA4rjQ+Y1LcNcpDeOTZK8gKaZu1ARo7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759406994; c=relaxed/simple;
	bh=RS6Lq5ctDC2UYAeIwc3LQQxQpGqb+759DjKkCHv82EI=;
	h=To:Subject:From:Message-Id:Date; b=BiNgzcBjNd+BLGKJeff+Ez/ybA2ssBzfLt+kgdIRyV4ddpTsxcWzgbzDyL8b25zs27tUEH4DwaZBXkZeqo6Ht8Ik7WOcFh3AyRmqDxG5GOVDsE8MKrgAWBKJ/OevFcGzw4Sw9vJ4OP8uqUWk8rbt4xxLsoXONGDXFQGuvV2GvqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDgwVF1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDgwVF1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFC9C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759406993;
	bh=RS6Lq5ctDC2UYAeIwc3LQQxQpGqb+759DjKkCHv82EI=;
	h=To:Subject:From:Date:From;
	b=sDgwVF1A6BUnAK/1Mcb43iuZr23Pu9g5rXpHnZwD1Nh6ENpjjJfUzoKHFXevYkaPc
	 mxtZ4mI7+8LCFQlPglocpvELsqEwOHgSpEdepnArjALkLT+af1wNXSDXyKUVgK+D20
	 xS40BGanFMYJPoOL5hxqwwYOlJYPleZf4h/kZb8P/8mvbCfoY0zFRM8Obxp9Quvw4o
	 nK/y4FElsFdJypS1FISNmWRx59DPkmbb5kB4xW338m+shK6cEBlEZwU5kwphl7Ze5w
	 OmokL+Jn82RbqGFE+3s9e8TqcSnzKCXHfWmZNc9e+B/5pN+//ufTJR/cP8wqroyHFK
	 FoC3b9UZKiUdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C65CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175940699358.1808.18020259643707999191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f20002354aa0619286c561a6d54ca991412e858337bdd0ec8ac464ee606c44a
Date: Thu, 02 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759406993
