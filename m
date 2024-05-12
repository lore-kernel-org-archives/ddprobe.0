Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E68DC142
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 04:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715487143; cv=none; b=YAMlk2EoW2deNaLFmEmAMx5uFkcjwkH9YUusu3BJ9uT2iMudEESNN3tSinPOB6hvKQv5KAoBiJ3JX6j6+wWlXs1cizZKpF+qWG5qoNVcmUa0LRJY/7Ra/CgLCQCZyK0dClbRXoD17epZUiC0W6a6iU4jtixn+BROwuxONwid6ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715487143; c=relaxed/simple;
	bh=SRS0gSV7O/jdQlyfj2K/07Ru6x1WrWuw3efbT9eEjnc=;
	h=To:Subject:From:Message-Id:Date; b=hJ+dRfM9NXm52hcuq5J6zMt2jEhGkBlxUkkdZXEP5otzfGFhX/6PPpN/JdjafUZ/kazrdkEd+Ek+Yw9C04ysfFxu9Mb/9ce9d8MrsxuH7YYsI8M7YHQQHc1wR8OnmhIYaI8t6uXV6j0Cv12dGbzVGwnI7Esap1m+cXvFSwngXHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lt3T3aOz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lt3T3aOz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96C5C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 04:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715487142;
	bh=SRS0gSV7O/jdQlyfj2K/07Ru6x1WrWuw3efbT9eEjnc=;
	h=To:Subject:From:Date:From;
	b=lt3T3aOzkwomUOSWPTnuGW1raYprVAMm6qW8mw86u9GWc+VO+pd1p37Bvl+U3CCUY
	 YmHhKepctj6rAy0gApaOTllU/oqDvQi4hAM2J744ifnymz95sZF1hNm+5heLnUNbiX
	 ESS7faEHbPRFI77qCIX52An+DZKi73trr0qhU4hmnWinFaGXPctNsN6qw7ZH6PM274
	 p7mjj8nVGvXAuR5t7vz5YKQjBx0G/mX1S8dIsCuyWiwbA21XZ/HbQ/VjEGLfmxTeO7
	 vDyAiZ4uSYVZlIwlJvAxbht558VdA1ZcG956K1OIiNqgNE4CYTCPIn8qQJwpxQ0Vlr
	 dNE0NC1VfOviQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2126C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 04:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171548714277.20305.3214993747244084045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07f5e4769683f0db2e8f9579a92ee7e3ba70f4b633122c68baeb5ced31deb0ed
Date: Sun, 12 May 2024 04:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715487142
