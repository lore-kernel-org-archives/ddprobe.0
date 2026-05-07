Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1DE5344DB0
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778189254; cv=none; b=naTtAAltFbeAiKYvkDKrwQ/ka8wTZqhF8faR+2c+NT02komvKYTKs/Mp8kidq9ADz9C9XZTR37jczmdcVA4u2D/6L3UEMaD+dFmlnDv8svlnWXcFOsBkQNeMYEnx42YLxzkR/SjB+uoCSiCrJbDLJfnmgE80nEbB5QU0CW3UUoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778189254; c=relaxed/simple;
	bh=tKGjBKX4EAHjRifj3UNemeg85qKPeAF1ScbTZLaXIRQ=;
	h=To:Subject:From:Message-Id:Date; b=i9za+kUzPxdj9jrL/TfulqGcglYFc8JNRxmsSTjrsOL+phVvpKskRrNsSMpoYwVRfxNHG9x8HyNuI5FtKAXa83KmW3jkRTwkfKj8qlmYkidx1VEJ0W6o0SQoPbctW3FKAchnGiFaCicpsSJuP86pakS9yDDlClAn2OYApX/ZYHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUqFiM4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUqFiM4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2AC5C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778189253;
	bh=tKGjBKX4EAHjRifj3UNemeg85qKPeAF1ScbTZLaXIRQ=;
	h=To:Subject:From:Date:From;
	b=WUqFiM4pAp2TKW3HSzg+cOQjM9ydkGOl0UvYHefoNHwX5HyyL6SmlIzAGISK7Xm59
	 LZJg3AL5mKgcFDJHt9pNOnIKXgWwVZM8/mBJkoOgCMustt4E59oaZfNTOW8ZoFQUTh
	 YqUvaoP2cX31PqYETrM3vXh+IqkHfardKofVyzVZUcR6wIqqAal1N0ELb5ckOc/wfP
	 AIt68ZadGcvcki3gE1viBYJ0ZQo6ku7w7sMdcBfVFoHd5YHg4nUjH8Khi32RWJGSGS
	 VB8F/YlRNNNWgaQQ5C3b+hXfcso6kQGGI5AJbIVVFi0L5g5bWoVSFjDu1YAhXGiNkW
	 UN8jRRJIFIb3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7EDCD37AA
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177818925368.7364.7343373816541519028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdaa0197474f708bf1b440aaacfd12e27fc2e39864eab6de5559ed36d6d2dc4d
Date: Thu, 07 May 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778189253
