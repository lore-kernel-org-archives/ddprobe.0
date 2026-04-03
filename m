Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B071C68F
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 11:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775214934; cv=none; b=beDLfKTDn58gUG8hCbN3xKy6yph72uR2QovK43fsGB3MDeWQYirLAa9R8wzivKGrITV4Xcpv2mK3fShYz+J95K/Tnkr/MMKsi2gDc7n5u5Kuaf/f+jLu9AkUBBA+WafDMwDqFaSW9r2jXN3AXXBU37zB0HTmrmuoFAcKgVtF/VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775214934; c=relaxed/simple;
	bh=9unsK+IndlUJhg1LMtd1yYB9iiK4xBfUWZEQdKIJUqo=;
	h=To:Subject:From:Message-Id:Date; b=pLKa34ol4vxVItSD8tseUx1JLmF8NLz4O5+9nSW9wO9is158Pc6eqO1iGVkLSvjVRub17ZxeI0vesiImf1sXx/2ujtrCKgBbjOJhB0io/Y2206LDoUx689qe0/Mo9aTz2rlBLPx7zTeimPGwaoaPjfmRQm12FkjPprp0RABpmq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/mWx53i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/mWx53i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C099DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 11:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775214933;
	bh=9unsK+IndlUJhg1LMtd1yYB9iiK4xBfUWZEQdKIJUqo=;
	h=To:Subject:From:Date:From;
	b=k/mWx53i6gFuOi0Tuf16fr3nX1VAjAZCikAZ51xx1rlP2kh7fZi4+ErlGXYdV7tgD
	 811/lpAt5GCCF9pwzNxxksrOGC7wMUmrqO/D5+NglU6fcCnGJkfXiokOZsYRmQHQ37
	 U5kdvE4vYIur5iY90KlloviGizUnzk3ogbTDgo76pV1N1SSniFrQF2QXdxM/yz+qO5
	 bbiVH5KoZTGZV+x6H6GsZ86G81pq8j7s+lDVqZstnaTigQ9wrYC9gvEpzmRbuBqUD5
	 umO6As7/B4xaTiV7d7xFb2TFrlW5cBFhQUU2nw7GgxWigFkBvt35BBzFAirr6pMTxh
	 pILuqG36DiQyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DB1E7E371
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 11:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177521493369.12227.9766310827573578143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31d5f8bd207e5db78caefe66bc77454f347c0b77c3002420d52cb3d76fd960b4
Date: Fri, 03 Apr 2026 11:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775214933
