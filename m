Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8BB2ED151
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767468234; cv=none; b=Boj9RVhLgzePRiq1zqqyVEH83MCUzJH+TQN9roh9H/BbBKvHwxoVNzNvorKogMN8ksRU+3Q/gqZvIlU8Pa2mWa2orJNXJV/JPj77LMA4TRgaRrnnZRoUXv7NWby6aq/LReNRBJQ8F2rql6Fxn6rnDMIla7XNtiwSr+fl0kqgoYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767468234; c=relaxed/simple;
	bh=HxGtfrzHKHFafjHyERFBnhx4ZwkVCOO7cDW3nK4nPHA=;
	h=To:Subject:From:Message-Id:Date; b=mjI7xWn7X1FqWMoe4Tyt0mQ7PYNOn0B4NdB0fl5/IjjABKISHKs3Q2zNvFJgg/nZgDj55LPrCCHdAEPXwV2WYIub3pUX1fvW8g4lg2ZT4MnToagkCJie2pg5/q4yJbJz58yxGsxoM9T7joGYEQ/w6Iy0gE2jDgJvCnd7gv0Ks9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9OPs2Gn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9OPs2Gn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15D6C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767468233;
	bh=HxGtfrzHKHFafjHyERFBnhx4ZwkVCOO7cDW3nK4nPHA=;
	h=To:Subject:From:Date:From;
	b=n9OPs2Gn6JBgqWwOvzbSAu6TG+zz/edlbtcLQi/KwiR/enGOj9Ni78ERmK7zAstU7
	 hndmsAhWLt/EwyDJbNtBDMRb4HyBqAPdekSE24ohsPs+grwf27UgGFq8fMz8dm/Zly
	 6dmhiRNYc9uEhjmOcVMLzvURg3nxzjTTyW3zn4CMNy4rUn2UICJFWMbsUJBMzE7tQ4
	 TulfIZ9+hP9L5KsBvUW65+jxncu+B7wafBQreWWTxPKEij/2Lf2PoZ/u+xmbH5YJ0o
	 qfLnIgKTJ148CjE82V6nnUbBhND/YInbxBFEinn/UWyG3RBqHwIHlcupmb8LM92Z7f
	 JdRCie6VeCZEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CBEFC618A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176746823364.8306.13836446968363658579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd819bcade7c6df70c8df905c12b3590bde7b5d61158d167a473d23908d507d
Date: Sat, 03 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767468233
