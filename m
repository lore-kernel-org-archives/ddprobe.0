Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2105945014
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724084154; cv=none; b=q65NqGFupyGXLwMYnkHuvoWgnLjvH/AYgpsfSAHPo3wfyQlzg8l50rl2EqjNCpeHwBmUwRhVldHfF6kCrD7w8i1lJXHUB4rT6BYrg6wZ3tLryvSgFqP6YBbiFkhUCeLw0UdXOOMAZQuVB02eCCJYHVfSAWvR48dEz5bIs62fw08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724084154; c=relaxed/simple;
	bh=tLD/i1bpP0Lcc17tEg7RSQSRwrS2S8wxJEwznW2AZcw=;
	h=To:Subject:From:Message-Id:Date; b=u9X72EgQbBKa4VIMH2yPcV7y1l4FQZXQAxmHJr07WECYPHrtbf6KTX0aWjd1Vj3ppQl/GmcSot2fLluUGA6FfCFdNXL1+SfzTBRN2N+exjwVYnx6qO+U16F4KlrTOzsb28/W6RRsEiFJsb/2vR8UKY6iXJM7ENrKs/LdhCgQ7GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3DCpaWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3DCpaWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A08C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724084153;
	bh=tLD/i1bpP0Lcc17tEg7RSQSRwrS2S8wxJEwznW2AZcw=;
	h=To:Subject:From:Date:From;
	b=h3DCpaWb3OWe3BtkiqCQwjjKwRoQlRelaW0b3XS5A0FjoK2hxxbrlpc8OaaueVKU5
	 8zYSdP1rBzJY+w/TGVw/j97V9CZJv2gNT5ORue0j8i142ZcjdG3QrwKydM3c848vQK
	 yV47hGxP9XDu/NSOQ4XZdoWs+JkgT1nxYBtRnvXnZtasiejlzwZRhG1GpPlCrj88eQ
	 txvB/BuGU96wlA/rmbu7kn/k1tSUsc4rcT8ldjCndVK66d3/TcrrlPvfY3ReQ6Q0rl
	 YpOZfVRkU8S+bXax5Jjkg5nw563mcNU657frQL9biKOpCs76HXckGJt8RroK7N+MEN
	 9hpo4BtMj7+1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932B7C52D6F
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172408415359.6168.11530494432551686416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 563d49fddb9e43aeb4704038f88b0ba02b5901717a1482ebc18ba8d20903b17b
Date: Mon, 19 Aug 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724084153
