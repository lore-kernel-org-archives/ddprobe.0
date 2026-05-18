Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304C63E51FC
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 09:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779095434; cv=none; b=m2NlF6QLrCddhJIVGsXj9WTSmhEscRA9GdDdD5480r3w4QainFoAVIMnzh4rTZEVZAsMQDXne/ENAF+gJcEpe7FylFjdzA5UyQ50pL4vyPoCjYi3YOLeGX7L3/AIA5e594QquBhrkCKtCWp7h4VN3JTaST08XLCCLU7Ib1iExYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779095434; c=relaxed/simple;
	bh=a1e0DmwSZZPXDAbcvnyZL4SL5l5RnofxeCs+K4aSnWY=;
	h=To:Subject:From:Message-Id:Date; b=sYnw86psHYKzKtJnrNw1Hg8LQRoA/60F94ilR9LtCue1LFN5Ie0/JYZsgGbQURNvku3dA2CgMlIRMc/omcqX764bazHUoStTQsvZNRHyVnRurByXt+FkVca3M33eWPF9HyxVCxd6wHnlNOjemZL5jptBrfGkYPdshArjBdjI5Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbwZ5R8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbwZ5R8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A67C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779095433;
	bh=a1e0DmwSZZPXDAbcvnyZL4SL5l5RnofxeCs+K4aSnWY=;
	h=To:Subject:From:Date:From;
	b=KbwZ5R8LLqTGSxGdNKC0KoHnlGSOEs5NZTdh/qg4npzrIkIrXHEoaLW3Ya1IbDAn+
	 IAoET6iBtFNSzN921Qg92WRlam+b+0phxLg3Vpz5/zVRk/5RuF7Uh2Ir/U3W8tVzOV
	 k+yq06PMo0xhkIZIIxLO8b7EoTOchXrcsJ/0TWO+cWtJsHDwd4T8Bn9h46UeVYTbaj
	 dHPIBKjlMEKcO6s7R6iDoS0duvmdjp4mQpDGDo3No3hk+HixEKyurA9gw9PGwWhqJr
	 WHArwu24McZomNsNi2Rhw9VkcELeZXj/ClYQwhVzOtBDCjh4dSClcIR94CeYf+4gCA
	 i9B1JAiznSWFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B481BCD4F52
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177909543372.11911.15113115528368981585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b101b9a3485391d5032624753cf07aa79b21a957f983703450444fff9a96ea
Date: Mon, 18 May 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779095433
