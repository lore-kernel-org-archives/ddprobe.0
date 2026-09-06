Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5599C332614
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788678634; cv=none; b=UcWi7kiPy6kBjceLa+lTqLZicFmCr4R78h7C8teTgLzwvmeAx63TiIhjSZPjUezE4hgSo/vrjEugDN6bF+KiFEMOUva6UNyHVgWVP+oI7+pgqmLpHeB6TPZIqowgrDGghvLsTBtPEpKmRdxbfGi56yq5RWrwQX+pRij0e/gaP4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788678634; c=relaxed/simple;
	bh=zZMf6cv0+kUXHqeGGUs8k0dLzg1XpWJHz7vuRC45GOA=;
	h=To:Subject:From:Message-Id:Date; b=eLmGlR8Egnm0gf3pRW9EEnFTmTqz3EJvuUbCC6/fh43VvvEU9mebQ5dNdfPO6CBGjjFAu35vVBsVg1Sq63c2hFV0bJ/lN4q1usAgadL+Xa6tCyrqbYbBeAeQyZ9HJV4krc0ParE8TgcwkkNlkosQxJ4bY48/CaRAhUzQCGBT2I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/SS0vRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/SS0vRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE69C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788678633;
	bh=zZMf6cv0+kUXHqeGGUs8k0dLzg1XpWJHz7vuRC45GOA=;
	h=To:Subject:From:Date:From;
	b=l/SS0vRLggWKrzNmDGlrExFjfCJ3TAsy9vqs0S87mgtJZFgvUgLebRMXMc1cGVWm7
	 uFJuOPESbQRRLEVbReSC9akzASXJvDVphqAK6YQdLKS6lWuvuR52j9eWkB4W1qne8Z
	 7k2PA1HEj5T00c2efH2qX7GtgKZLfs5uE2qaT2PJWO5jwCXVGnQTD9jJ50nUBljecG
	 hCmO4WdP9lK1u/LLKuhdcaPeTojOcG1+rWzNAO3N54hw4ba71BGBaciFggvhpPbvfT
	 SV3B6Te/4uZF+XkcRcPKo3B+2GeGkiKYyNJ7HB/JztIQ5d+Ej27uPVb8OuxrfQ0R/d
	 x3PtJmOhduCdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A995BC79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178867863368.23117.16292784989753064725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6fd6543a3e949bdded199f16e8be1e1612d2f34f5201ddbe2b0730d6fb968b
Date: Sun, 06 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788678633
