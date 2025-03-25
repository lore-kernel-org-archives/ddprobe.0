Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E2D502B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742874594; cv=none; b=Vz5Pxnt58eT0uccbUzbt3wQ4yonp4/nAI8XwQ79yXgbt6OKrphqvE3SYW5I3l5A7LvRh/Tr11WipZV6BmDGfwA8BuNTvblAiWc4VHF62+cxx8yyQFs9g7FCkF5POImXkUzfTyPTC/dcPURxx3a9q1k6qZjuOnCIabXEhY625rmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742874594; c=relaxed/simple;
	bh=zqt5aiT/oEr6RH7qdsMkFKu82Qf2agJupdPbjnaakH4=;
	h=To:Subject:From:Message-Id:Date; b=rgZYMcifU25sI8ZNkidnVAa48XQw91xn0kfusUjJK4DP5hK4Mq5ovuY9KY804JVgbH3G6Gd6y8FUUyzICLyrD9OGkds9Y2I7SY9H3Ecgn/RtDnJ6stAlMcMbnY9dyiwL1b9QcCTrqW0wtDCYnZ4E0vutEwzmQ8R+/dcXmdqeCh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/FFaN93; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/FFaN93"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6150C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742874593;
	bh=zqt5aiT/oEr6RH7qdsMkFKu82Qf2agJupdPbjnaakH4=;
	h=To:Subject:From:Date:From;
	b=t/FFaN93qQaULKdqSOW9YsXtsTg42aGQwgMtXN7b5ZJs5Ep7Yv9e/oeWTqu/b3sGL
	 kFk0YfOKiwKvUREQKyiAJQryr752nY4XQiBgIfaraFNI8Crb45Vw0sUqTo43+EtBzU
	 l3FBigp9iAUjAuvRUYqM9mBS43cqj7FRKmnFvgRUXwmr8aUbTfagyc3l4+yA/EM2Kc
	 nXgxIDQ+N+LFfc38KzxJlqNwQ8278gn5wqCllXXWk+rtOPuFrrgTUmIcf3S6d3LBI5
	 Pfo2vNtFAv09trM+1FVfOnTUJcTEQZu2dTOqmh+xP5rD36leJajufNI8IBnWMAy9u8
	 26v4TO+/f1qig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A311EC36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174287459362.26631.11784905575342067980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0743b9c243416da75f604d28cb11aa64abcc892562cc1f70eaf8425db585a4a6
Date: Tue, 25 Mar 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742874593
