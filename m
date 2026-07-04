Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC2E38F935
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 07:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783151915; cv=none; b=p+e+md1i0hJCJRpv26lUYIbEw+5bW+njrTQewGrxyjBQCgxujg57zhaDoc6sFvyuaKJl2n0iunCYse+U5pK5mdEjogkfjW9M8r6W38h6KsVusmHe8LuBv/Kh5neVn1enwgawZgbIyF1aJ/H09UbwX4xlLAz9WEgy20dm5lrTpXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783151915; c=relaxed/simple;
	bh=MvbpELOuJ2ozOsQM80lf4LgcsSnLuTVSMnJxjDGTW7w=;
	h=To:Subject:From:Message-Id:Date; b=fg4SrJIQPH4nEQkBlx+zJrmebuJc4rleXqreBOHAqvwtlnzZxCReNIPjiL3UzPAw7bSfNycrwY7A1fQfZDs6QIfHg+207qAIiaaRqIimkxfsrT6R8uTQmlXAYLvrluQck958+UiP+mVUJHIhQN2ujXiE/o9Kn1XLbhA7GD03Yxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obS/zaa/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obS/zaa/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B3EC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783151913;
	bh=MvbpELOuJ2ozOsQM80lf4LgcsSnLuTVSMnJxjDGTW7w=;
	h=To:Subject:From:Date:From;
	b=obS/zaa/SFhDTxJdmeZ9FsNpM/bRCLkq9aBd6akN6K9YKWsGczs8xwY4NFfIADSqF
	 q8Z4++UbyjNusCcjFV/WxHg+lw+MPHvRnObLJcvdZK24N8Nb0644OZAJQ/f27zGtiS
	 EaXLEy2+qt7NbCoNAO+jT8c/9UykdcOioHiNyYcLGi+ObTbAWwK7/K7EXb7NOWY+SO
	 VKHQF8cS5YapJgRM/rywO4+T52rmTRI+8B+JH5KLSyS3LPVwi/W95SOiMhJJanmZFp
	 QKdCwUV5uBwWElyGRjkSO6vKMIK0L94kavBPGxxdioNcIYMz2jk2pBMzHdGWyy4Q1A
	 Z3S7S887Aq6Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81F9C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178315191368.14726.5368352389487284446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 006273b5eb437f4d4391d1410ac6889b637e1f7a03459efdc4e7a634b64e99da
Date: Sat, 04 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783151913
