Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE6B56A33B
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757512194; cv=none; b=QLho2nXEPd+H5+xUoDooBDKS7hLJa6vtDuO5jZHtOaTEjt8iuqpWzfGWYsiB0qWV8O+7dz5P7tH9pEVTG1yhzV20aS5+hP+4qsrcFhhC7wmiLz6wEsE7JkGe8h56gtYMo4ZybH0Ts91a+yYn2PDfzLxMzUdM/8ONn7qCZKVZ770=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757512194; c=relaxed/simple;
	bh=jRjKlt3HIHm0xwxFCA+SRi8jeAhNBoef7+pkPzOnQxg=;
	h=To:Subject:From:Message-Id:Date; b=mzyLZUkcXjgCD3hO+we5C0CCQQvpXDTSee/Ct87h20jmz3V+7ViDuh1bntLNOas2kB9aA/Bm/ri1T37qn7T6Gv3+E5MgClDHKYAiMdDgCggNqAi0N5EgLM80j4olUNfrUP2m17VY7q8Rc12DDNHseSXfW8NhGZYW5oADxXmjZpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FyQcbQ6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FyQcbQ6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA1EC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757512193;
	bh=jRjKlt3HIHm0xwxFCA+SRi8jeAhNBoef7+pkPzOnQxg=;
	h=To:Subject:From:Date:From;
	b=FyQcbQ6Lnu1qgWcpYrOF7eJyyeSztBOGeGIUNG5zNJfpcLNS+77sWPmVYFpTNPN64
	 WLLfe5NWHBEAF9JuAnzfCagDDWAy5gkU2UN9mFA+/qfwSZ+FyWuS1hdIQ5wtg48fE8
	 2GOaQIzrwjlEA9QnynFIWRrKSkmKEeHVbwvPwftdHwla9dXhCOFQ4TGCwF0gU0z1qW
	 k/y+yG/yu8vKGQqxpbyuKqWNI/zs8FCSHBdKkm+rVidEzW02thyIhWL/M4tKsmo9UP
	 JBgeWAr0TDaUqxy0uc5zEB3aLm5u/YX2uBMAcraI3G/yI8iLAKbZufzvEMjXtBoWF9
	 QpyNxF9R/vqIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B4CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175751219357.2926.17282615305300582409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea24541ffe8c9579c97d5d349e136c8e4c565668f9068ec0ee6882d969a534d0
Date: Wed, 10 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757512193
