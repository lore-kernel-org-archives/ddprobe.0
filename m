Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E64421A13
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 10:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782902914; cv=none; b=RPAaP9YFD76rKG7U+ieKI13xKz9cGWXXJJlT8mlEDuDF30KVRsCSMNPhF4ks+gn3sdh/4BEh/Jm9SxwFBpRWqs55FLhwyE5Y1Am14dXZUtIX+b98skePn6d5Oi2L39U2uI9kaHGYxlQ4pknVlj1unc25PxK5XA6efTb50Zmn1vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782902914; c=relaxed/simple;
	bh=WTX1o4PRcv3J/cj/latYruZ2VBeQ+Z8a1e6vK1XEpuI=;
	h=To:Subject:From:Message-Id:Date; b=Mz+KAk0Sa/JenlyCRQ7vmigy99lVCJiHjtU5HanizWrsp1/DIkn/oS43jfnARxoUlpGwWaa5PLUBiTWXqSVyv6Sf8rh8xwBLyphaD2/x9qmDRnLaLqWLvLf4JWttcxFJHJrN9aCJeDt6SGmog98p/71dkAOFgmEccrU99SsdcqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZiue7eM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZiue7eM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F3FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782902913;
	bh=WTX1o4PRcv3J/cj/latYruZ2VBeQ+Z8a1e6vK1XEpuI=;
	h=To:Subject:From:Date:From;
	b=dZiue7eMbUgQQhID9CJ+zYDx1PDeAi4Z5AWiU9O5/tFthkdx4I1wMfR+Wsz6A0yzX
	 qOG5bJQa3s9Z0RxL+HvgHWUs8Y5ZUSrOCrSYGRbl7HlAN+etAhAHfZbVDtKyxc+ToJ
	 zztGVkmM5hGBy3x5kpfMCt9jyPRHrphjFsvToKLkXm5aN8/7HqNksbnV94c+7npREh
	 que4z6DGAJgPGmUVA84z7nrPmIqlLw3kcv2ijau9mbjUNEee2abjUY2SFBReK9ldhT
	 EtmdK/EYmF2TNypeKO+/PqW01zTLTQhi4nhYSo2o5uNVIu/6zrtRd43VIBU+yBxs5a
	 jZTq5LrKC3fmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA300C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178290291368.19576.6140030953453782577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eb9661bfa1bec390520ac4995499a3d7b46ee00cbce95009917c5700ec1621c
Date: Wed, 01 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782902913
