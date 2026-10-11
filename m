Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5381C2324
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791696634; cv=none; b=grDlXv6LDgLaLxyVq1fJbfnMaKH2F1qDUBIahXoorhPdNe2JqSVVhzBJQ0s+qX3ewNwzNNjCK908HCmoZKmBNGRQdxaZUaMmbNOTSsbO4G2+YzjWKqVtYdGofvzZXY6VohWd3IiJUvc7pfx7IJpJq944ohLJsGaM2jfs28yB/JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791696634; c=relaxed/simple;
	bh=FLcFCqAydlsPNKr96RC3jKEMxRKuS8d3TWa6NQ6woxA=;
	h=To:Subject:From:Message-Id:Date; b=WiVWmWsyZeKaY7VkgyJedhy49D77zHc5WecPQ2UATeGt1/KvnWWJWlwhkEiotda78dXujGwOPVAVhuhrvZSpIsueXsqrzhtzZibDXANwhS8GD/SPdPGqUxJllxcLMy/h+o2txasino39Xpt/GLL5XKKiBSKI8AdVJHoDN/g6LWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pf0Oalwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pf0Oalwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D847FC2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791696633;
	bh=FLcFCqAydlsPNKr96RC3jKEMxRKuS8d3TWa6NQ6woxA=;
	h=To:Subject:From:Date:From;
	b=Pf0OalwuRnmkoNAyD+zCbh2IAfhU2kah1YOEcEwHJku6bbLsCWnwrtE24qp/sNM5t
	 dqrXhwsNs5/PHE/0WKclHM//EAq7FOfwdVupf2uswvu5q62CudPVmFt+iSDvCT++Gg
	 z8tuyJdVeo8WEXnTMbWCaURm1gGA2bVjfV7JzCI8POkW+yBZ7rTAkOLjMPHcpEH+xr
	 WolTjQ06341/mmzDwWAx0HtHFbwEfQxllDO+kGXaZanHlBY8taCuCR9AFEDK5kuEno
	 yzfP/Wg0s9PRLHDt+jVA/Xn1PNShdQLpuSdArTGn62PWdOUqbN1TA65jI4p3cIaUqo
	 kNnam+t5Zi24g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE3CCA9EC9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179169663368.22885.16546063770227346410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31e5d0bf2c8c8d405fa97d4dab0ae3926b6210b92205bce51972bb3981d11ee
Date: Sun, 11 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791696633
