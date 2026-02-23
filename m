Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01FE228C869
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771860294; cv=none; b=ZjgnO/pKtwVaYfXFjjYr++2RPMC3Nkd0W7u46SUoVAqTxxpyF5EFXEY8Q14s5HXywq2X/OOzDEQ1gtHi4TrnHHi/tudyGXbc74oriTkcfQxhQEtQgKNoOdXOhNbXn2P00vgI/hBjdcIfoHk5zCdQYBZQ6n7z3F3QWVupFn0SGS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771860294; c=relaxed/simple;
	bh=QEfQ5h0e3JM430PijKgsbh/JrSa0E3/6e1eMtq4+vEU=;
	h=To:Subject:From:Message-Id:Date; b=Gbzs/J+DF2ip7HSohVMg3OhtANqhNoQtGGwFJ0vWsCucScrJNREo7zymNYjEbMCEh1+w0PSLaYlhCUnOArLQ/pGGlU8rZ2BxOpNo51zLJtXrMiimiH5aOmo+9MycoKtSlqs76GxW+j0YX3oExkWHrdJXEjC6kdQwUTsN66hb9BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlnjvRoc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlnjvRoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E770C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771860293;
	bh=QEfQ5h0e3JM430PijKgsbh/JrSa0E3/6e1eMtq4+vEU=;
	h=To:Subject:From:Date:From;
	b=AlnjvRocNMv//dOVAxLlqF7KP4MDfkWW5RgWm1kFWx4fWsO08dKEZwximojHc4A1i
	 6n/i9kHKtcFP0LX+5ntbuX+/bw4ei27tqW1zZ0GX9WpHrGoJ4wJ2kc1tzE2pPRc+3B
	 f2f0atsdoqK3SnyKsvMGUV+7R0KVCsAkAhkLtPoqkFdz7bP7KBOvgZQaB3s5lVedEu
	 mIgTRlQYnBAWyLA5uIfGXT7MuFlDcSE4bO4VT01ApaqzS/B8WagFtlU3ErwyoiFsoE
	 2Zqo+5r6/HeTxSQleEyuwzM/xvc9uhj7pVq2cCUZRWBeayECR+Pf2DXS/C7DADJcHy
	 Spw7G2Ed59oPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F4EA4FD7
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177186029358.12890.7507832349317039487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee58ce734a960cd2f6a05a1daebb3586590bb7adb0041183060648e712fe8e8
Date: Mon, 23 Feb 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771860293
