Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4376ECA52
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 17:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783876114; cv=none; b=jY+7WaTmoRBPK3mf31AK/F93BbnbyfqbLhqOE0M6NJiaqAj3SAJJHVkAEb/v7R7duLAWhne8jnt3yxl5GYmko8jknCtW4N1JXY0+6eYIY2bEXOp0BD0IQBL0qQWLf+9vQ1Mrim/cI4sBiYT6r2GIhbOg8VJsUqcLxLEv42XpeKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783876114; c=relaxed/simple;
	bh=lW3vfnMRyAyraCK8fMFqCnD8O9UwAYM7Ok7b/3xK3U8=;
	h=To:Subject:From:Message-Id:Date; b=CEMq9ir3dodAbTkYi8tq3HWRtKBTZfFLUvSOIs+8ljT/Z1kd64jRo1k0CHZhKdX9Jz/L5gboprSTpSPBwlMJm2h8lOoC3zlKULd+4yj3WNsHTywQR4LgoSDgql1r0SiTkAmgKWi4nEz5DN5belW4nqiVX7vutF5RnSb/rZHkbhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W499GeQP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W499GeQP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06FCC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783876113;
	bh=lW3vfnMRyAyraCK8fMFqCnD8O9UwAYM7Ok7b/3xK3U8=;
	h=To:Subject:From:Date:From;
	b=W499GeQPqdZDZ23lpHnmWOJx93qxumKXG7+XU3HJ9kG7xKwKpfT6vq2cq8Mm6OrEK
	 a1VGgqIycpRhsD//ywpNB2Nqh9U1NAmxgbinzPkf1qmWtOzqwVPQfk7OnpGQHIDBJx
	 bzRsbMz3DM1vfziSQpiKzeYtIfHr0MpXhLzrbs4ZRWFrnEUFWIJRO5Gip+qcNDC88i
	 EXA+nQYlF/oi/58h2kYY+VBN34bCD5i6Qi4fkxKHz/cLtZDp4jBvslV4di3btQheGW
	 0bZgRhOc4wUl3YritHdBSLG81jYqqNSttrQP/3lbJtt5lTNwIMAgqYiEqdtddkETIN
	 hGlr8EYg3+Law==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB2EC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178387611368.20310.11100034222599415054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3944d9c2d34559b107e8f2111abaaab1cd90169eddf801bb1690c9cdc12a1e8
Date: Sun, 12 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783876113
