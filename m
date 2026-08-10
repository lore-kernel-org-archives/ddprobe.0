Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF4F3B3C01
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786401634; cv=none; b=rfiwszwhQXmPaPeTsALXoMYoeDyxFIU++7nKR0P3pCmC//gcbSSbwoEujA+8w8bRDvyON3CMg93xMK7E2tqP6ml47cJ6Jt24noAJe7hvVCWFd/KGXXdy7Nq9aw8gQ6L4AMnPo3Iz0UHsJIgI0bVwtbfJOu0hRgo+3XYweWidqj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786401634; c=relaxed/simple;
	bh=NKrIhTmlO7q2zbO2KBEvrVuNyVJP2jsx60bgWT82ib4=;
	h=To:Subject:From:Message-Id:Date; b=oodZlNWzYGfap8yHNM7+kRjzHgHjukxTgwfgHQ0HqWBCe3RPP0enw9lxb7CCU1r6fx8YMKAh+9WkmQAnZ3plmPdX8EkKEZWG+7DZF2xrHllWel4JgiIyVWUlLx3BT/AS23qY1uN2bp56TBO2zRn+hAEi+kNP5csPiZ3I/Gdr5mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8upq+d4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8upq+d4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9BDDC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786401633;
	bh=NKrIhTmlO7q2zbO2KBEvrVuNyVJP2jsx60bgWT82ib4=;
	h=To:Subject:From:Date:From;
	b=M8upq+d49Y1j5DnobiJ3RL7yesDFK4QX3Is49cYPfAuhGNzFzkpAL3mW0eV5SUoZx
	 HJgsw/Ury91Whi9aTRZdr3t4kKxZiiGo43gG/oNkzfWNqn+TsKWrCUDdbsW+iPxXEz
	 Jl0ocI6aWeHd8mfJ65dSQwMBU5iXD9cQXrjPiKjMFqDYi7X/z2JBfrL17ZVLPpMMwG
	 Rny/ymASzkjo5aK8eS7zbFw75HuKtMF8C3rNOPQL0MT3odyOchK5dkTz20ovETsVCS
	 Q162GXhVg3igN/SHGJMRnhcFxtj1RgrSXqiMrO48R6I4KUYYzHcVygGpgk8mNZKX13
	 mUUe3FpKqg6iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EBCC5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178640163368.20059.3780561695323341861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c2ac7fe0aa7e0d9efe598c48c6a86d6861703f82e2772b3dac24f4bb45d361b
Date: Mon, 10 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786401633
