Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1854637C90F
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774797294; cv=none; b=IdfMLpB6RmZGDx0Q9MaqMd8k/i27wGEdhaEumcZE85GMzgR/EGYZGZhnzkZFLUf1p76MdcvoLIIbB0HxzN5RhWpFq2px8d4sIJ7/Yc66y13+yG9DOEVusC/tFpHv0FVuwsnMd41Ro5k8lbxx9waDlnQNDHj/RbEtVM7WEZLI+WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774797294; c=relaxed/simple;
	bh=wAk5Khlpa6Bv9lf9EZ6Nj7eyU5VlVrh0Drwg4Qlj66A=;
	h=To:Subject:From:Message-Id:Date; b=Osts82gIMohfC9fQD1cJ+TvvJn+pZFrvSFogDbifW1ni3/KsS1wiOE/q1CZNEF6A6CHeJF6x7FdJgcuCqH+Gkny1vQmZjAE7CN3XB5RC885BXaSnvDurRLrhbNXzdLZ5BeM1tfdvRNXFYBN4HefThqYBmIaX18Tjq6PhBTBwQP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X062TXGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X062TXGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8361C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774797293;
	bh=wAk5Khlpa6Bv9lf9EZ6Nj7eyU5VlVrh0Drwg4Qlj66A=;
	h=To:Subject:From:Date:From;
	b=X062TXGRC+STUEeWqjEZGaBprsF2Zq1F3IO2PdA4Bd564eYEmEImbMWn8OlaFtCk5
	 OqdK8TKfcoOIOO79AgswmcipGnMGH6V4QAK3J6jw5GWVdQS+gbrol3cpi1tL7+Oi7z
	 miBEQoImE+HfZiex6MB1D+wjkwwAT2zIYIvRnHeo5f3d/DlpUwWrpIoVitzv2ExWXH
	 H7iVR2wLSYk0wuTnYEytEvneuif4Ope0wglDC4vQN2GcuTZb8hdNuAPUfTzgK18nNU
	 u97Fo3IMO3PR5XLANxUvAmlXSTRbVFYe1drftgsZYD1fDP0m1yRuDxqAgVFH5QhtFG
	 3pIgNtxP0rehQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930C0F3D60E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177479729358.28896.196094627700598435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc3996915fe9459bc3f707de3f4fa63f1a4e4294e93e7031b6e5eee630dc7922
Date: Sun, 29 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774797293
