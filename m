Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328621FC7C7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736337354; cv=none; b=CFsIBxdMSvSbwyQkhjHQo714okErDhBuwySdlWb7ZnA9pA9P25R4j62PEKoAwiqvKqw+KhZnST6mn1+MTHO50WfZEwKkhzZAJCLduWJ/WVfJzJhnYLgPT9d5kjJaZzW7UngRpB0GIJCXYelvJSFAssnFKNYmXgBEcwO3Rb93L+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736337354; c=relaxed/simple;
	bh=FxdbV9EpXku3MX5JQDSmqtNibunMvWDGKjb7cP7S2pM=;
	h=To:Subject:From:Message-Id:Date; b=mgsO7jYpXfUJV/yuQeEQK3vhlXAbnwHgu10lbTyMFf7Fg8A2B0aFpUxLVn2XcmccXnIp7kpO6O4VvHU3za90n2Vdux098G4Am9vnni+k/AYdtR6JLqPePEXI6MdhHSpfl8XL+gT37Mt4F7x5cNMAyFuriJjBWZxM+hWHIEvIZb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cd+F71NB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cd+F71NB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28A3C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736337353;
	bh=FxdbV9EpXku3MX5JQDSmqtNibunMvWDGKjb7cP7S2pM=;
	h=To:Subject:From:Date:From;
	b=cd+F71NBPz9Ll2R3rXn4kIKrJqHDtjJcdbkVaoj+AmK5cdGODKrmGGy8NB4RhzFQS
	 cAmjSjYu2kTEixiP1iPX6RTqYs8RRdX0f4AyJXUwp7OdbBERC8srJbI/0wIgxfC9SU
	 gpXtRpJHj4cUnv4Tn0X+e6co+EbtSy/Jql0H1XPgTjLM4dskwdKOt/ugo6AbBN/jMY
	 2GZ9L4HsZhwGyGZy83v7pelo1BVSEVAS/ANzOGb7Y/sRHcoTtl/5bUPJWJCE+Nn/Rf
	 U8EdUSLla+6c8B6l9fDUk3NcKynH6wVz78Mz7OjOoKPxCks9BPYcY11YCK08L4daom
	 KlWD87MXt4uHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCB0E77199
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173633735363.14493.3986270657734910533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cabf6d623748b4332b25ff356661b3d876d0a7b76039c3ed3e4ccce2a9c3dc22
Date: Wed, 08 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736337353
