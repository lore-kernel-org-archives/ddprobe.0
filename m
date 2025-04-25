Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF33258CF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745593794; cv=none; b=MDkJSh80ybN1xfRTjBPeXuyio9WFz4GtAKcLnLT8y42CIZliJjtCB1+vRdxLgRDC0KxiKkbnTC/WoRr8JuzfmZhjdPaEWEqO7zYE/8CWwBtHhL33Le7QkRS2kmkGqNpzBShWRDs8UQVk0Yae/ufAsvHAup+U1rsnO2i34sUnDVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745593794; c=relaxed/simple;
	bh=2KI+PrmyewuCUQiHrJ/pjSJ0PefL4mT8OmqvhguCaqg=;
	h=To:Subject:From:Message-Id:Date; b=lEWTon2TkESgJUTafaYgpTl4iFqPGN+w9jUs5RN9uCMt5r9FWDFYFbaZ9FI9GBc0NFvOnFxODWcHcUcVMnJbqW7EprS5wrT1HY4xsFWr/yjBanNhvuECGraYAYhgS1GT4Vn8sX4bmltBKdfNh+ZBexVGrNPGAuMdsMZAnJQ7U8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dqz8O6gO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dqz8O6gO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB45C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745593793;
	bh=2KI+PrmyewuCUQiHrJ/pjSJ0PefL4mT8OmqvhguCaqg=;
	h=To:Subject:From:Date:From;
	b=Dqz8O6gOm5jyokZq9zkc/7KVFAzhYIJF2WOs7iwYsqdEm5zWvBeN2jknZVEcfdmwz
	 qJLYFSYRt5/F7yDCtxBNBPoLgKZ7hIBnrhxpXt0baBsEH2qaTGm3OCzZLBDO38ykW/
	 6lMj/y3SEgm6pWAuO389eihwkPbPag1BtTP6LZix0titXMDz2a7Qsb1f0wspFSuXIj
	 VgPyk8Vy3s47LNVOynMhNxhsnZpFLP6vHpctr1mwv1yxAI5p3eYxoudE0taibAg/Cd
	 rux2K6IK7UzdN7ijSplZPHJ720iS33yNllLIn+exWgzbuWGP6odk+8/b4scJsIIZTb
	 JLnQ6xZWny2bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB16C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174559379357.13442.4791085128186102242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494612a16f1f6fa5cd481eed2c746e8d96e049c1247976c8e280d7a37a7b4f1f
Date: Fri, 25 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745593793
