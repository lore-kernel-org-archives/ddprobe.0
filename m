Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393B230567A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 07:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779090034; cv=none; b=eMzFLjMXA/pJTxJxKvrRJkMdgxFmtLCTi5oO4Mbif/lwS/0B41uT94+PGZSnB55HDCL0M1BiWz5sDlbNiViTkXv1lmGEBgotw9osZWB/udvoCJ8bQGj7FK8Y/ckQeZkPR305PVa5y2q7sNcsEtiUXYrsPoIdDauTx+wsAX1RAEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779090034; c=relaxed/simple;
	bh=eM8SKrdKT6twgIepAyxkss6sXvKhK5axGljan1qKpRI=;
	h=To:Subject:From:Message-Id:Date; b=SIYZSe24Q6K0lF5kRRo018ECoQlkI8rXVlQBOUptW72sivkYUFfSNv4OnETLX7O1HehGUyupfl8qJ6wTzu47pFpy1ELG757qn3i5TEmjFzqIXGR653GXqm0gGNTNQis3iHIIPrCdtHVxwCzf0zA9xkgu6exfNZQN8Atr4O+xP2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YS1ihE3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YS1ihE3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6EDC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779090033;
	bh=eM8SKrdKT6twgIepAyxkss6sXvKhK5axGljan1qKpRI=;
	h=To:Subject:From:Date:From;
	b=YS1ihE3VMYFBlDuqVKgJiPM03CBtrYPxXk50WjYFuIuvZ1/CZ5so9fW5q/VSMt84W
	 sCLfjbLxK46PYCWV8egPu6w8dfhSe0sw8OzZh9sUK+hkqxvlFnrP/yRmFVCec0bqNc
	 QLqmQKSYn8xd+zp+HOUPdppWnIljhiZEnvroKnKj+pUKrZyLQ9BA1pF7VdReETFx9t
	 Fdro5tnzRV/YcXNwfaLBPfgWTB0vURujbJIabahGrnWVN7uZ8aU0NEh+l1L5ywXT3X
	 YMhMjcvWjK41s00r+9U/c37xajvqAubXArgLQebys9v5y5f5dzpqW5WzjP+f1KkGH/
	 kUE+oSgJlZ9Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC547CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177909003369.31430.15538652175923627600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2360ac46a36b474ac6b563f6ca337fa38b59c49b3f55212db726a611238b2790
Date: Mon, 18 May 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779090033
