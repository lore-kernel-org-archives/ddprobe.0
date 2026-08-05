Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CAA43515D4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785927635; cv=none; b=V7Uf5U9hxQeQoMw/l4I9l+hFqpT9vhkDoY8a6uvMa59kYYTLkZ9uyYDRYv4UsUp/CJO6aUOBXmRd0KwxkO3Xi52peJuPzgCCarwUin2KGHuN+opJitG7c3knJWbkzwiK58juNqYFJa1dvb3lz53JTtp6gC2LIYKh/J2AhUzSEyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785927635; c=relaxed/simple;
	bh=Vk4PqAQZO8lqdI4PKN4hVGA3Xfacy76OvBms539PeHk=;
	h=To:Subject:From:Message-Id:Date; b=LriOBNouou5VphK7KQpfKZJUAfV89RKBkI02S9SU3f4vTW1euXzcieVeHgOQuM6PHPQ/cot+yxFFVUzOkTzMhPWQ1KutsShIet+q0xc5xj60eZUWIfm+7tGPaft+wzyNZnBPYYsyLiS7odQqPM8k0xIaPFr1W6avgLZi7vejkHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syOmCbHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syOmCbHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35FFC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785927633;
	bh=Vk4PqAQZO8lqdI4PKN4hVGA3Xfacy76OvBms539PeHk=;
	h=To:Subject:From:Date:From;
	b=syOmCbHpGmU8ZvkNf9vIp5FHZfVTRzXhefkhjqvqH+2cSfumZNMMfR0Pm7rancynw
	 ujv0kba7h+t2fVu2AIEYZx/nKoN5+uN5w6dwtPCr06MzXjTbsKYoXVRORyCifXuxwp
	 ojOLBZOSD07NriZ12P+VkcIRmlxBv9ncqYAq78x1CHEq3JmIUZYuNZR043dHOX5A38
	 k1d/2y8EWQM8yx2x8IclkgMNHrS6RnzaK9zF3/3Jx0kUIBBWu17N+8ypMKGkiI9vP7
	 T3i13Z+SsHg56tEAFI/KvQ7Jti0vUaVcN76KcDk3YUe4+FvwE0pN1c3Gll/ID0w0Dt
	 T0FQggUjgwL2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFBBC55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178592763370.4538.2344483465715862017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f69ca0a30a711d5d068200d875ccbac93f47dbfd5ade3477a2bb76d332fa453
Date: Wed, 05 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785927633
