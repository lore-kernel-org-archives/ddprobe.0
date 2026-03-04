Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191BE33122D
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772609094; cv=none; b=BOe0KBakrTnBt5PvUJ9Zdw/KAXJAO0M0icV905H5e4AT5XSvPoYAxRu8q0ueIYuUMvANZzOZUravEfAGqYgewrbSkKXhFyiZKZR55iuyk+d5OUSUdfkdRq0TdaDmDsFPTgelKfUCEsMXb23+6MNUbHGad7a0h6vynchj9Ce1CtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772609094; c=relaxed/simple;
	bh=EsmZnXewGGb21xQuAgZCrATgcSiN1aiBqa/0q4OxeQk=;
	h=To:Subject:From:Message-Id:Date; b=WpN5Pn9gPtkV6unQUmWZaBRkbfgriWizb9C/6M6jbdLSgZTOzoeRJB8+DiN9YMMTxdM3wTrhVUQk4fuwV1/6tXzJERWAF4rsNsiGV6MGnZrk7X55v5ocwS5L7sIaOf3qx3U0hn1vFPD0OsdesxYerZq/hOa3urm/2Sy5fK0+lII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vComDkcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vComDkcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEEEC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772609093;
	bh=EsmZnXewGGb21xQuAgZCrATgcSiN1aiBqa/0q4OxeQk=;
	h=To:Subject:From:Date:From;
	b=vComDkcPfKy8ez/HxrISL6dqsqaQz/lJ9XReuwzN7Q2DCfyJtZxt4C9kOTrfHesgx
	 NMxZ3/IHYFu8CeyOrLZzi3fRg7NO4Ne+OnDKwj2Dz/nves/YmHfZK7g4DnnRr8LSNB
	 o5Or/Gq5mMT/rjDS5/hYiUu7Bps1FzVYHIjP1QYus9tjjP5JDABztNpyVgyNpxAL9i
	 Gy/xK4N+yeOOx3Ltaf6/3YeQWpJWrDg8onzYRWBVo5e10N8CHCpBIBXl030idWTrXm
	 Eg9I+A9q8ZGiTO9jOkUtLb48/hjziN1xAUjkavhkPj7ySTujqLiqaHdf9jFEMioGDg
	 BLtD6DoaDDShw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96746D58E4D
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177260909360.15237.10809623585932525951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2316bd0b4aa82cd54db0921e3c75fb2d5614263dbda947531ba5468911b3793
Date: Wed, 04 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772609093
