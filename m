Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40948156F45
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746474594; cv=none; b=MR6FGjS8hfA7/CFJsH8Zhch/sHYe0s9iPimSh9huZxNLYQXTQAQN6O4QP7zj50FEpaHCXUTzCHRTHUcmaEdGFIMha7Mmrumg0lNPak7XkBX/Xq6CxkI+BQaMsMl5FAtBmmr9o8YKFC5TE8gG7OlksFwsNavgzoZUxxjnxaILcNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746474594; c=relaxed/simple;
	bh=OtWOGllPtOV9hMq9PqWvIl1Yvw2JiccXRoAS82zndAk=;
	h=To:Subject:From:Message-Id:Date; b=rFh4nUR0iHhKWxfm9hI/dxmBGLJot5/rHCK7aeAgvyE4r/QD6sxOOKgJ6HZMihSp38QlPP9t0O89vKHG6uZ/qjKkUN9Y5V/+3bgeYG79dThbCZ3m2EQfwVHE+e8KGrcF1PYstocQ5NZt8mDqIMwZYbFgoa8QHZyLgQi6Q0Qe4nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5sZ7yS3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5sZ7yS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C19EC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746474593;
	bh=OtWOGllPtOV9hMq9PqWvIl1Yvw2JiccXRoAS82zndAk=;
	h=To:Subject:From:Date:From;
	b=Q5sZ7yS3RFZzDoXMWJzWSZY8MLW+vkByOb3tKIzqjRRQK79eVAOD3jRfgzlMrr48e
	 9mFg5VlmUjxT3MOlTFvC/rGWyPFnkm8G7Nmsh1+5Oy3B4pMW19PV48ErBT8n6tRzmO
	 uIyrwnwPN5Y42KgIeZGAZ891dmQBEAbsc9rJ2BCToOx84txZTIEP5kNmZWAgAMaeVn
	 LP+n/JR0VVFWCdMMp/87dkf8HtoFRaTXpzSKg3iUkOVphVCeOW0XkVLz8Ll/D6uofz
	 orAUVWujrIauRf4eq3pPvS3y4tgigTX7xJnvA82OteI5RisSD74+g3iGwkNqgPy3Gh
	 qMq7cCZJhVW+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2E6C3ABB9
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174647459357.6615.2803413756199002248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07a619c0f11faeeb1f2add4e1d992e8d9617b619c0450bfb3d51532716eec99
Date: Mon, 05 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746474593
