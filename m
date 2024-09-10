Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DFD17622D
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726002354; cv=none; b=Z3eVlb43CW4xa+V5yawzmNNyufF6j277umJZRk/NA/0yOeSBBkUfu5Z1hjO4nxcU7ih96XjqHIZJ6Jp0OWflqKzS3dYwMe6nniMmnPvW1XJUbkLuj0rbf6ePl6IqRsPBBm9ny0m1LaSS4BeHP8ahN4RwVo/XENAZ3IrDrcdUcUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726002354; c=relaxed/simple;
	bh=29o0ElHNYleCUD3ixix2ob04NoGlcnk71FV6k+mI5ww=;
	h=To:Subject:From:Message-Id:Date; b=UvLWZdSya5bPRWJS7PquVnatE0WSFV5iUM9YRAVrvgWO4Ih4pO9wflaC5k8WxjNkn5vhC/q80EhNv8fVYI/g2ncvtIGP2nyrfjRE2kYiGbFF83WNay5wHJn0PvQWExLgKB1/GUcPlqFgChZnzYimwX8siazZBC3loi6epi/jrRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ur678pVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ur678pVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAB6C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726002353;
	bh=29o0ElHNYleCUD3ixix2ob04NoGlcnk71FV6k+mI5ww=;
	h=To:Subject:From:Date:From;
	b=ur678pVKB6feqHGHVijOQi+kApqYbi4gX0Txw9yKIXp17yrfud60ZJVWt8X7+wO56
	 zcHTl/fnQESZT7ufYsvSpg8BzxvfXtikW2MkzONPEw79EHWAKk9I90s0y+3r0Qjity
	 WI2hspA92h2aT+myiBS4NPpFnrhgzPO/9dVH5LC/eHLY9eoV8n/WIf10qjizfiCwxG
	 hrzpox8OwMLhyboEl9soYBE7v2A05MaCyUDt0ltnQjmuBxObuLwwyJydQWn1SHtrqo
	 mmQ/jJeI4T/EIfqRqh7PI5+wnIQQN6W1WvRO0hwMYVycX3XFMGVXPF9rO0bo6p8h5S
	 GmXfSfp8h0SPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E32EE01E8
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172600235364.31088.14123475526847280711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad814885c3e809fe43958298192c6619117c83c1f567da9d9748698a850bbd3
Date: Tue, 10 Sep 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726002353
