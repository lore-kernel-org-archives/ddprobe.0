Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513A92FE582
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 01:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780104814; cv=none; b=u6b+/ACGjBEFIsntDQFkjMJKuoToq3wm7uUosktsXYfboNntKv+zFcTZj/pLyP+V6MJXUJBcbLKcjWFKUd6BogaRbJnLgmpd6JOBgBA0ZFsK0bEk3sfUj1Q6wemOm/NZrLIXprDnxWhIMbkyhLC60XamPhKtdvoDL8wPHYnmeh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780104814; c=relaxed/simple;
	bh=311/QuXDLTJLYO0xe6cVZI5n+kqHaCb1/IwBsKCNMeQ=;
	h=To:Subject:From:Message-Id:Date; b=Ijk6T9b/JVW9tO9W5i7k8n9Crj5yXht33Ad3IXrcLHQ6+ajHg8mLCLMln/ZnI127ECOt9u3VoQ55fmagFS+IRP+ZbKjVzal/zkg1mkMUvrqqw7YqAV3ktsX7X019tXhp+ndlX4P7KV6bXs2nxjDMzBmpoSk+Cy+J7nYHvC9oens=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1nldmI5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1nldmI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF49FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 01:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780104813;
	bh=311/QuXDLTJLYO0xe6cVZI5n+kqHaCb1/IwBsKCNMeQ=;
	h=To:Subject:From:Date:From;
	b=P1nldmI5DoeHFq6pDQH7UO/R89ZXx9G0KX8m5p/6KgceApyEIH6eZJx7WAjqrkndE
	 U4ZC+qA8RMLAeLtih/vpKjXebMwfDnyTCbuX65DArM/hVJ7QqBqJyAxcxe2h3ZEhwY
	 55IoaSq9VOyBvLIK8jHvatkndH6jxfiiVLMnQaIkS0WYYbiAd5qMVPz6BU/R2/JCdF
	 naLDUjKpuHLxKtU8H8th2xVPfQZk2vGrW4b23wnk9lq5M2ds8ID+7HbQyqlWcVn0JO
	 c8gJa2ukz6seLFdNBBYDiR7lxOl23RjjUTrsys3Z7oURjorV6FTHG4q8HbPw2lmsuY
	 cs/2mXrq8QxOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7ECBCD6E52
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 01:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178010481368.9089.14399189707150485238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82ac1e214210ac0672637599bae174460eb197e23810ee957a977ef508f42f9
Date: Sat, 30 May 2026 01:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780104813
