Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44253AA9F4
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 14:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778595634; cv=none; b=cG0c85ZsoLvCqAEM17JTpyp/++HTpu7C6t41AEwBplUTlz2fcrZ893LJ9pZ53JA6UdKK/n/U1gO5g2Df7xAg23mQcokSdVtWMiuW5sEt8MRaDF+qjKiblbntRq7smK+6QEw1iYzzw115tu/vhj/85DefoO0xauJp5veVxgHiwjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778595634; c=relaxed/simple;
	bh=AYgV1pQ5CrjgqBSLYf5PIbJEEVNcZq4fIf9B6Kauz4c=;
	h=To:Subject:From:Message-Id:Date; b=Smg/LHzg8CWmqzRNevoetmeDAahZfgJBPO/JMe1sea95EWYzMsHAQobSyj5SDpUsIeW5aJFdDZT9b/YBKiomYFxc6r9ptIYvLAHtXywUcgMs34EF7zADBgT29MZbK+vUg29AYp2NiNjoKL1CJXCp4udDDhybLo1OaTqdW5L3svg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhUsaS+J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhUsaS+J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72FDC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778595633;
	bh=AYgV1pQ5CrjgqBSLYf5PIbJEEVNcZq4fIf9B6Kauz4c=;
	h=To:Subject:From:Date:From;
	b=LhUsaS+J+OH1bePxDD3lqJPmCI2t+iF47QIjsk55k1kmqS7lmWJ11IW8hiRUStbtW
	 aDhlp9VRE5OdoLSSHMtjEi+kFcCHA01Y6fTdmYxiF+4YGhym2TpOfb6gaZrZSaLCp1
	 arNSSp2pVwFubMaAC585j6SFs7yirfSewen68j3cDKOmFEQtIZrNmAuREErvz2+4Tt
	 scB2SVum7YBe8+JzaJpLb1JkXXulf+7YBXGdQvVtjo3+XGIdCTDirUb+dveeAt58L4
	 XsmSJY3yxHbXFyZ2gqVKg/tsIQNziPedVjmKekZl05FbO/f9s4dYbnS/PO7D6Ju+by
	 ZKY3d53gOhCHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CBACD4F24
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177859563368.24243.3309923920206270132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff992f643b78ce5fa6acedd9ee2403b098c40c6dce4362f5d28c7933abf0a2ad
Date: Tue, 12 May 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778595633
