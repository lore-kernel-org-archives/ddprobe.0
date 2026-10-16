Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B18440633
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792141234; cv=none; b=tx4hIGxhbzOWwDlGs5dvi9YTPzwU8z7I3yw/krnnjTUGjst5NBl3YhWQMt9dl2OkVEZYxGscFbI++Fen4gt9XVu/8fTiBC5Zgy1llA/3AWetOab4EIaAN456RB7Kss9AB86YnpXVkZIJrTOluZ1Ou72Zto0/P3Nk3XPUelVHjGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792141234; c=relaxed/simple;
	bh=+lbRC7MkErZloB96B42mnw49NrCbSKx3+9sXNG5zrXo=;
	h=To:Subject:From:Message-Id:Date; b=tIRSAgcZLFvnLQSjMyBQ9VIaqfFjqQowC1G2MC5/HXl8A3jcT7UQN1L/lU6ql1DujZkWjmcfBgP66BkdbtedVo1yOjfbKM3VPY287Ubj0BA8TsRMtXwBsTMCOpJiC1jaYSWVRYYz8tA8q71vtQvbkbP2eP1c/BWmhs5ju+p97Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2TgFSTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2TgFSTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06FAC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792141233;
	bh=+lbRC7MkErZloB96B42mnw49NrCbSKx3+9sXNG5zrXo=;
	h=To:Subject:From:Date:From;
	b=W2TgFSTiQWPK95NVy/3Rar2V/jUjz4UEnOxRQVZw5FzKGuIVQteSVXm9VstLx4SDe
	 eUJPYW+K8M9nNkXo7uEazkw2Wujk9LZHMS/rZWPSZ8m8JvO1bPeEwxA7/Jgf/kx0EN
	 m5HO+JY8rRL/EGx5j9iWvhVpJODhXzKLvSsTShelne1RmZ496SHGcY/aHZwJCHvF63
	 Ev/1kh+HpBcyQXLLa7fm/d6IsBDxXVoProBLG5zXw26V1blvduBxOpZrbU1H7XK7BW
	 5p3OW244Vui05seq8M991EYIiOS19god2n48LtM2GVQqxKpV1tDHVJtzfxiQhtJ3pG
	 FU6cetzM1lADg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE09CCCA464
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179214123370.8411.5193764621523571678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94bb20bd1885f6ef1e2d5836190ea3f12c87d9ce18e74de10f376231b6d45e10
Date: Fri, 16 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792141233
