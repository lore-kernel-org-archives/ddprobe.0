Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215DA19A
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745466594; cv=none; b=Nn+RtKHCJD7qEFKrchQnB0tEjQZ+8nqiYgr578NZadoTgD4s+q5YLRWnvAH8+JDA2hrRz2yZqtf6kruApDMmxFm0wktfXCVFqE2NHZXCZgOGpcrvLoZeAW4wfvJXjo4qg6Bu6AyBS8UMzp+w7DaeLzn4G5E3qr/8wgxoLLafN/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745466594; c=relaxed/simple;
	bh=8GU/XZUZI+TqFbsfauo69YTi/aXmif76yBEjSMyC35I=;
	h=To:Subject:From:Message-Id:Date; b=He9JfkLJOLTgZ5/DO7/9dfhLM20AvM8MhNZQW+xl6WNzF9vwyp6oP3WlxQZ7mVHKFtlxR2oCQbORMZeWXoO2dtH6+yz2CTNErxr3P78c8yraAFwSYFfuRdK1w20T2cZ/NJ0hGSh/TgSA65JdpiWMyOfeIf/d0ZPIKZyC7c5gBik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGWUIYoP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGWUIYoP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F99FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745466593;
	bh=8GU/XZUZI+TqFbsfauo69YTi/aXmif76yBEjSMyC35I=;
	h=To:Subject:From:Date:From;
	b=cGWUIYoPCTJwxtlz+Az/cu1zaPUmJ72RHXKbUK7UQajSvs41ZwLxQJoTsTiapt4my
	 83mXhUqp6oIqHtHbcum7cv5woY/BH1rfzdoVTYkFFtCAUEDCJN466JuC7CdPCBsrhG
	 3KwcO8iUsN5lXveCXNf1fl+LC/enQ9PPAt92qN4+fWfsWqkU7VxsOnIyYezyDzfgYJ
	 AEemWzJ0Fe9I0oDTWMwVqsskOOGZFi1rJtZuJY2iqxHK+ihLrk8+XywAyUdrigYhLz
	 AHmeCzLM2wD1tqcOqkVV/1qCztgPtDHTuJ/xZcUXfxPtcjWpXbfa+EwpN9H9XbJZJs
	 mO33abTvIEo1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0A7C369C2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174546659357.27379.11761561851047452881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c9067b1137c17df7f8c79b2562f8d815cd610706baa829b5f05b9e07d51476
Date: Thu, 24 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745466593
