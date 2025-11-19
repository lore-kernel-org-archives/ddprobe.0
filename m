Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0284A1DFF0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 01:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763515915; cv=none; b=JAUsz3t5wYcMjCHa+pMmC9AGvJYheAsBD1B0wMla1mlzTGLYkgkG2mrmEFreNtrQgP7pQ+0jydpoKycFJ9SooRPIsqnhwAuasP57G6TmfjCqrFPwwhvafy0OL7eYhjbwunlwEivIRPOYCkrWK00IpX759HzFRdj0Jrti6p9CbDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763515915; c=relaxed/simple;
	bh=L/uZ6Uel1yf+swMJSBh8TzKuFUHhtK6Zrnd5s8VKPtk=;
	h=To:Subject:From:Message-Id:Date; b=cBkmLfDQiQMmTL+C3qiMe3YDfK26yx7X86AzyOQLdygvl6aosDK+Fbjzh+GNhCvlPCi/SFRo9vJH8hK04U7fEYbL1WMpHxpVV9LWMk588ZfHNeEW53DH9pm/0dxVZOBGjPc+vaTK8dqWIGGrgZiQOmijZSuh8fG3gn/hlTbjsAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCOvUuTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCOvUuTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CEEC19424
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 01:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763515913;
	bh=L/uZ6Uel1yf+swMJSBh8TzKuFUHhtK6Zrnd5s8VKPtk=;
	h=To:Subject:From:Date:From;
	b=rCOvUuTAGyHQCFQEY5o2rWaVz6GxkxS6BrlnAUBjys+fqC5OYHEped3gADBpnLxK0
	 y975zuOi0rmqg5M6+r+5l/UfLEMkH4HzBMEt6OisrzyTIkim63EQnMz0ry+05Dm9L9
	 9oJF9Cf4inun1Ok8ppTLP2ZQi9RTt/Lp+tw0LjtVLMutqD/p9gLf95XV214RFf8eZA
	 T8JMOnYc7B5/UMa/neGPi4JyDkcMzuAReitpXjWORjVcWhYnrRtKefGbxuzWdQcKve
	 dQD25dg0xNFvPxLFsaU0AdlNycdrqqYEpeVtYkSb4eEOJCU7rjE5zUXGxmAm+VQKh6
	 PjnXEYgHGn4Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F55CF2564
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 01:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176351591358.16353.9175807766923129510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4502981955056d6fefe82be91ecf4a6a9b692d9deb5982cbd0347602397c3e0
Date: Wed, 19 Nov 2025 01:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763515913
