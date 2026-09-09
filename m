Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF295505C5
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788958234; cv=none; b=L4hjzmY8vCYAG4wJIhGZEl5PwgrwDJsKP1qkVZyv5rbBrk0wCyOcrRUxdFBPiqCvgrJke3aMzIhvNi55KrqCj1458ZyC3j8VKWdyaH8nVbcB27hYlTE9526VlbhEtBBbe4VnijvQtWZ6MLxXP8LhBOSsnfdWMlOAL/FxefPVpkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788958234; c=relaxed/simple;
	bh=/3/paFCI+X6yBtTSKOAM+2DVEWBchSaIPdRl4nkABSc=;
	h=To:Subject:From:Message-Id:Date; b=ON+i/HlZNy5cPdJacsDihV636HAY3xT6VFOOU0pMeJp3uR28Y1hcNDDbYykkB7VHb7qlpe3DY3GiaTwt+cEuQfmwZPJ0Ynj4LBT0q1qWStNSxZhCtyRj7sRe79KdwP5cfeEO7XSztgt3RQqsWQw8OsC4xv8HnenYdZIyQitU/3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sH0/GQFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sH0/GQFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AFEC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788958233;
	bh=/3/paFCI+X6yBtTSKOAM+2DVEWBchSaIPdRl4nkABSc=;
	h=To:Subject:From:Date:From;
	b=sH0/GQFeb/gJR9wEs2HFRAqAxP/XS4ye5GpbtrbVC0DBpgUv6cSCtsxxebH9JL7tE
	 kNGTSSdq563kUjseS+NmLn7G1eU725IQCqbY3VSeTUINqS5o3l6nj+DgT458Woh+8a
	 Ink/Rk0doqF6YEeK41eBzOo/+beai4+Vse2SsBLfUnies7ES6NJ5tMUvwcQ7RoZALX
	 vAiBnvKmSKcALGkevfVTWpM523OUXZJOGnUoMXDKkATZvodpLwqd981z3NptzsbKmY
	 70cFskd04QTWslntwoMJBr5grP5CSanXFbAKl2Pv2bQW9AcIvST5qkxH+WHKWzGjbN
	 DrBvMM9c2btSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBF4C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178895823370.32297.8423969868887962955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 133541c42657973818b810095b3fc55ef37fca01afcff955f6c0bd3d3ded4eb1
Date: Wed, 09 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788958233
