Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6679138E5C5
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791273634; cv=none; b=fgx0vbHfc3SdiYAbqupir1pLcsfU4rHjNQ+4NgRpENz/e6OJ0/u8TPDhtzBeZ1wgFGD1gjfBKEQD6Cg+2emR/apYqYqxZVZVwukS7KIBOhLyoH6NrSiPsGeHk4BVSzVraJu8/g3LgceKVrdI1uHnGMTYqrbsFGJ9o9Up1wUobNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791273634; c=relaxed/simple;
	bh=2m+Sab6S3sJHGL7ncKoQpbFeyW3gaa2NlNGMX8P09fo=;
	h=To:Subject:From:Message-Id:Date; b=lyvlPRgohq2NHxZX1Q//K4HXc7DPyZFdHmArZ20l3z9QeDtJwNidamI88WR6fb12XDPMaloFru/eEPHNtQy24/Y+ugf0XTvQnhcPxMsYxgMFgcFF8I3zBZLMYrCwpAb0FJ7JrkCXWcVZ21Sz12js/x0prYcuezX76K0JhTfR/GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0vWTBpQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0vWTBpQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CAAC4AF13
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791273633;
	bh=2m+Sab6S3sJHGL7ncKoQpbFeyW3gaa2NlNGMX8P09fo=;
	h=To:Subject:From:Date:From;
	b=N0vWTBpQZAmvm2vYD5/dhwSxHp3/ki/5p2nKnSzScfLmQAw68E9Gp6Wspyyo2WE6n
	 +/1vZs3kCuTjIWfPMFjuvD6bgeehVGuZfOzWdIIM7uf1k0Hr/JyFkshILmti063X2F
	 bwCGmxKFEakRLbwo8xbkA8I+GJ+m5vIyHK1G+Oa+CBQU9wfW1472auNxGZ6V1a8gez
	 mk4Kvi07fjUf4HOa7miFHisEsG5NBAql+Ou/O+zqF8c1gPH5LaDrWEgbsWxxI93W64
	 TQ9CWGB9X8FgvnwIi4svp57MXc4LjAyDKxAycRsJRVBlydqCL8LfOztEkm4yyg3K07
	 JLIEpzlRSPBVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B186ECA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179127363371.22272.5772030782049172440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94767cc7a153808df1b987eb2e1b52cb436e345e3e2f40cbeab924d03fff86ab
Date: Tue, 06 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791273633
