Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5EE3955EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 13:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788702034; cv=none; b=hQnLK0+9mdVdpxsz8k9DlLir63f1LTU+4Q43QXCKrLbE9cRXO9SB60ckbkrshOlgNSCs1Y5UGKommwx7sGtW+CFmgFEJQdLYlIEnWpIxv1NwA3m5E+ud0S/nB/LtUeeNPkpULTijal8SxanwXGF4/q0f/8yiLvXGzqci+7VjZx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788702034; c=relaxed/simple;
	bh=gJa/OfCWJwOZCsYRBFtuBoGuftIb8sqpPNhpZ5mlYqY=;
	h=To:Subject:From:Message-Id:Date; b=VNa8lkSV0ZDizRPzWnyzUE+hXkBd1u7wVsuA+R2xJUiFkCgyXWOpjux7qPmoczRNV+jO0t2k0c3igd/hVNG+VFsWEc27hMrrUPS8ejwkqKBMfPf/0SZzU32h5RkLnMb5tvY/VKZZ9ibG7vYe1AaNgOFaa3Ls8vRmxIVTNftuhDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYYHUgZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYYHUgZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2442C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788702033;
	bh=gJa/OfCWJwOZCsYRBFtuBoGuftIb8sqpPNhpZ5mlYqY=;
	h=To:Subject:From:Date:From;
	b=PYYHUgZ7UfDbN4NlhMapo0/C19lT1aAjGDTdCTfIxAMr4I/Tn0ArNlnc45P1TclEP
	 VxjWaRnIMpLwcZuE2DRNHP1YKB+NkrzxUZlqNPuAsUJZ4o1UulCLVqmZAUlVCGgvm2
	 DKTT5KEtLC+UjOsEyejDvzjy7EgrP1AaH3MZZW9UTBWR+zY8J8Q2vlDzAPlXCNLuTw
	 rXUiS3FPe0NLJlyuvOl54Ic5+CVsprrs+bgiWCDiiUAdWF+6Rf/KZgkUbJxLoqNypv
	 gSlIfdZaJ/XW6l+KEg0ka6GHcPcvihxD9Uk802joU6zMVND7t4LES0BABwtJCXC0eO
	 Y2JBW292eU6Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB68C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178870203369.25099.12039470215947469729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f437584890e2431963a05e1320e179516ab74f37433abf956eda0dd76d14c77
Date: Sun, 06 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788702033
