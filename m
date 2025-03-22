Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5D014386D
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742683795; cv=none; b=FX0ZMai5mPyq6UIev9iVUYSASwX8FvAFXAPHmt7Y4BkShrfZi7KaXDL8SP10qJOBiNEYOal8HRAjxAqnvfma/9tRogOse+8jR/K2gZf1lT3RyWnC9PCdQVQyiL87keuHZMIcWtqEGGJTAlrZ0E6AoV6hSRHAjb1sASyyf+SFsyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742683795; c=relaxed/simple;
	bh=H0gqwm1JPEpL4xw9yLfMUgu9kv1OBbx0JtOC1FZLffQ=;
	h=To:Subject:From:Message-Id:Date; b=k71yQAb6OCkiVA8giC1dfVQH9yG2wL/vdv3aKyLADqBywfjW/bXllPJDlhu8p8Koc31+jQ9HXF7qB9upuI2eE2nTgr9GCPz7HnCh/iKnbvSm3SPhCQx+T384l0c4oUKpsf74AtxknxYJyy5YycGjKYIBzI3jyG7XRf8hxi4oOvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9bG+FeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9bG+FeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E63C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742683793;
	bh=H0gqwm1JPEpL4xw9yLfMUgu9kv1OBbx0JtOC1FZLffQ=;
	h=To:Subject:From:Date:From;
	b=Z9bG+FeUM52NevEd51VbGEmoSgea3NPj8ZEoFXZ28KRVw9qhUsjLp3PFyu30y2d9d
	 X44QA5aGWRulcqQHOfQ343tQCe+18kmzH1LdRKsdKUAi64qsEmkMcu9VtChehYYAcv
	 gOWkCN7ipT7AbHZYBES9B84jxgw6rUCTLFqQRi3B3pNfW0d+JUbkuZUAYNn38XubrD
	 vjN+x62KpxB319rn7epWtUxf6WKdTE9sJZlQWMeqyGW6KV1VDzvS6tjScrVyTJbUXW
	 LvLsWEiJoarVEEqbrRSMBo8jZyrIryuCDjuopj8SwHleDA+idIpNgdvOy57mDJKCZQ
	 Pw+SB09NsV53Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CDAC3600B
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174268379365.29294.7968076661391388053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3dbd361a03a06eb896fc67d6091cc28b846e1e47b7cb398db1d74ded3e2d5a5
Date: Sat, 22 Mar 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742683793
