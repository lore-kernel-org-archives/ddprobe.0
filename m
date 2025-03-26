Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAEEA55
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742952594; cv=none; b=TJwMmcOsoSRhYx/mQymW/vvlW49X/MbzIR1uoon08IDrdLXUrYk6b/A0VfauE4j7qtj3D0Gxkmm8TNpjD59Ni9cgN8X6DFSa7bHEUUiLD6JXx+Fbh+NIQmQySbrFWgfXaozMMMrUfW+VKPXrsTejnlG0U4JFBWHyeJfSg+R+Xdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742952594; c=relaxed/simple;
	bh=86z0J0fiW8hLFYIPpge9G+p1NujRraujkSBFcgXykjY=;
	h=To:Subject:From:Message-Id:Date; b=W8+b8GbdD/qYvrkBF4RohNqgVm+ONP3N1x0wX5UJ0Gn5ZskGn5OTvqOvKhVIPqYfJCu5lJIQ494dWhJHZfVA8tOix4kwUAQSabIB4N+/w/lNyY+2eaIWX4W9TQVcoeo6GnR2jWIppV3+MfqNTww6sxjm+60PObmYRYWxQhfpMyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mobl68AG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mobl68AG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD558C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742952593;
	bh=86z0J0fiW8hLFYIPpge9G+p1NujRraujkSBFcgXykjY=;
	h=To:Subject:From:Date:From;
	b=mobl68AGbl0Z1+X7/HuxO/syWYDlAM+8iMcuWVBM8H8f0o3tqIYlJOMxpdWjYN9TG
	 +F3fGREoqw7A38ZKMX46o8XsXv23CgGRLKxrF766fxRZF82LNvzv6xlKZEd7oE2+Zx
	 98SZeQxDxOVoFobHdm5Y0v44AOX62eBDQFZD+g98P5T7GC1sLfRr9KhQn82ImD496h
	 meC7mMd8IK0TNyZouFRIg97Kk6TuW6Qvot+yB+nIfRml2Nt/OXOTpq2rzNqe34/ynj
	 vDjO9E+l2J6yPUVdvVnmd7fQxla4wRiXh3hUtfQIlsh4Ax4X0hewvdJ7kp8xU4Pc5V
	 VJtdbjsNElFLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A95C3600C
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174295259366.26103.14010872677575494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bcab3818e53be5eff2932a883aed8bb366042b0d3219c36f44601ffa74ae70c
Date: Wed, 26 Mar 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742952593
