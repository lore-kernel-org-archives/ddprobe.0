Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492038C1F
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739022354; cv=none; b=JIHghyo16nBCjMK50Do023kegifbfddjFwDIOhmel3V2+W4e3U6p4fEVa4GfzKJ9aUQ5WGaD+AI23/qaM3sj3VPo6S3I9kqfdbftbubMMZhYS4Zmi/9xhZ1bjDl4nlPiOuF5o/Q6/fLsRg328yvnDqkrmIF/tinyyPgxKj9LL28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739022354; c=relaxed/simple;
	bh=sx8AIEr/XPvXnrTi5J4QKRwRzOQEMGvG4gmiqok+6rE=;
	h=To:Subject:From:Message-Id:Date; b=BY6/5Dowb7jna5yInQdstUcYQ3JXpuNcGZ7Pv9UEjlGDzrBhDJPAS3jmM1mlspvbqrB2K/ihpZa/u9vCsPbWMzuery8aMNfb1GtHmARlc5vQarxwMCZZj/ZdWGPHubQ6JkguoRl6NB/LF+Zr4vff1/zUXJRWmejB5QsZxKcC8x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FX0ugkL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FX0ugkL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F0BC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739022353;
	bh=sx8AIEr/XPvXnrTi5J4QKRwRzOQEMGvG4gmiqok+6rE=;
	h=To:Subject:From:Date:From;
	b=FX0ugkL6eTPZFiIpITDbi2d2Ji4LemquzQkE4LkHSBq4w0dQGxwhwPt3fUhJWzX8D
	 2sJL9jhz9/MjTUorRkeGVgCOt+RtPI4DbynB0RMaCgPlYJvCsEgjMa+j2igXQpQYzj
	 MbRWkAzbcMql1ugy8+kb7FXlJNhcr7o3DOSyPIB2j5cDrkg7PIU1K5dyazAJRIBuxy
	 WPqPJibqZvYepPOMStlza+DoPFJwzHtL+33uEhHow+VoHpp2ec5bRuiJivkHv6VrXx
	 biVfeMOOFkQcN5BKCfAQhneGoEEBQy4q4b7eBFzeUWhUwhbh9DuggbO9DKtD/KW2wA
	 oNLpRL9gJqIqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE94C0219E
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173902235360.30217.9019355403424562552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4be4ebdec5e98c1919aa6e10c058915011ad475e476b32786d1da7ee3b70bc7
Date: Sat, 08 Feb 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739022353
