Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E394220F35
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753810194; cv=none; b=k5pfft3qG5w72EOt9wtqYUC5Gv4Gu7wcybjgZuVuiegdzArSyfcixvmyjCebbtTm4Pq8AwRzp3o8af/6mHd+lYP01SEep6WziYviQcRCol8Q2jQIlTgXQX5YjgM9eTbTsSsJknz8Ex5FJyEieg3BIZDQIUN/T/c9gRc7I7dmycA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753810194; c=relaxed/simple;
	bh=T0a8P64qmU31/NNDif6KTsXQ7rB/MInRfpsAWOYiuVk=;
	h=To:Subject:From:Message-Id:Date; b=T5saF5iK/5FoxcSLn3XkLLROTUpe88rTvYqNXl0/nzjDweOlGmvplN+hzlfX89hx3Fy1xMnMgQYYD6hdEPKD5Ju8F36jSY7Z9MYKjZv/PpL78crxvVhHQq2gAaitMp0seEvEz3k5WrDBlrntN1yRJmqgX9TLQoT09U01wWrBFro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5S5tUhm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5S5tUhm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0799C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753810193;
	bh=T0a8P64qmU31/NNDif6KTsXQ7rB/MInRfpsAWOYiuVk=;
	h=To:Subject:From:Date:From;
	b=m5S5tUhmTru6S0eK4RpLmhJAx9Gm1ZETJVWidh+46PQzakzQV85kkdlFe/FjGzQb5
	 +aJXO6XVkYhXRmJzXP3uBNhC0epB74blHA+V06X+Gk4lc28yfuT9mSDxC+2P76JkOM
	 uM1A+o/MG0tLriLGbnvopFLd0RicUPXjhB2Le88H+eN00sUcvne9Z5jw7d9b0PcOz7
	 L90iPo+n0uKX+IANXHBRSq5/gzx5BxfXLhcZ3YEmkaIHaaCBBBfV9UeCgxdIKdcB4T
	 f+LyQbzpNHTFHJ7h+tdyvcXsT5tjN6h7P6MfNaRAZ2aGSANDHeGFibiqJ5bo4zFAzS
	 /qXfNMLL4GZBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47CC83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175381019357.28413.439326251919359796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01150b9958964b1f5f37a23470b7fb74000b3819ec7134e04528c61bcc6874fc
Date: Tue, 29 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753810193
