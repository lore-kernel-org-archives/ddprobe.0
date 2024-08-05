Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2129F2C684
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722878154; cv=none; b=CyjjCQ9fZjt1De575f1jASWp+Ros7k4w1bJHTPXdj2qq4RuBu+KbkTDdvxtqQ6Zo3LdXwF7WZJZCjcTvFH8k7LJRj5aFvnTMhNoJdxtxYvUT4RzpwNp5pH2oIE/0nXnz/4mB1yaW950pIVHwOK2PdS28bQBxnn7DzDkt8IQ0gqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722878154; c=relaxed/simple;
	bh=Z3N8pBv/bH3uxU+b26O6HO1ZIOZlcYsEpsBE0ZW3BRY=;
	h=To:Subject:From:Message-Id:Date; b=KUaBY87dZURmbM8xZkWprgJRH0+ztcBjIiNHZPHXHmI1DjQ+C8c1SfRh6Wahss4DNQT9pHwILYWpYqh6xNMcAO08BuWfwPuBw2nSEhMnaaUuJKSwy7Zx8vVbaSecp5oVcFhFBEKabJ+7K9Mc+1WKEGNOUPerAGGdRlGYfzC5tN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MB6R7h1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MB6R7h1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A754FC32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722878153;
	bh=Z3N8pBv/bH3uxU+b26O6HO1ZIOZlcYsEpsBE0ZW3BRY=;
	h=To:Subject:From:Date:From;
	b=MB6R7h1yFLPVvIVvdqpW/SyC+tjNT0PJ5ModJ8lMlAPxgSSDMbjYPxDf6sLN+4ln3
	 xG190Jeb4mBCMq55BPBtSdaFPATXkZAGaSoGBP4Nd4tu4+xnAwLpIYhDFd8PzMFUmx
	 KxgR10JjSUaSWJYjqz4jk8tHcM3HIYBEL5SMeLXWpdLXHk60YGupyynEww4kRVPP+Y
	 HmbLX9SLQuJGy0xuyX1nn+pqvlFfgcMXksNQhzMfB14JXP8qsiaDwRA+RFQpEnAK64
	 eO8eR+6wx0ElJKcgVoG+lqUL9p8S7+C6JZnJtObnG4nPFoB3NUSD5V7RE8oXxkiTfC
	 MLX+GFHhMnNDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9273FC3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172287815359.19443.10102630105953933695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b791e6812430ae3b825405a8b884d59621a14b9cc964b98f17f46f0a7a83fdee
Date: Mon, 05 Aug 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722878153
