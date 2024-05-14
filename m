Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C23365
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 00:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715646743; cv=none; b=VI+1zcLqzW8uufqUS5pF/AlGIl+Cp4NpoKjeWlCGUu4BaEHa1pI10OIIfsyfZZBU12Hrj1Y3xZnWQ6CMZX28tg9xmt6mjj1GxX0/m3PtoSpnGmA61/x/QIDrgQnNpHC80M59rK2vde+DNujBqKkqsZZt8f/1lzHpL/dRthT6roc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715646743; c=relaxed/simple;
	bh=utr/JAxH2oLDJGsKr+cnDD50SXR5yYyaI6NnAjrHjSk=;
	h=To:Subject:From:Message-Id:Date; b=LG34lFAscwvs9xDVKj8vTsZ9XS+5AH/qmjl4gtLCvBDWmMAWLlvzr/YViwZiLgZhJ28g288NLZ/MJfquxXCSoGhyKhHxwpYYcJ2+M9vunJlxTVJvHzAb83MWp2tyGxN2ti+uAhUX18jSRxcshodYf/HutktjF2DtFil2MOHWok8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQ2yJ3sq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQ2yJ3sq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA985C113CC
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 00:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715646743;
	bh=utr/JAxH2oLDJGsKr+cnDD50SXR5yYyaI6NnAjrHjSk=;
	h=To:Subject:From:Date:From;
	b=dQ2yJ3sqEhb8a1gdzT8REOvjNge0GvM53rAvMPUxw7/EiHe5fLevsHVJtyRYXUA3t
	 L4VdW7VGLptxkVtvgQ3gVDJf0+iQ7pKMfX3kl5bbdEM0w+KGHLeePB3XnEpGXC1Y3p
	 hBJGqnCL8H59Jei30mSSoZW3X9xDgQGE3aR4+lkZ2RbY4Sxp2wg9MZV6+b7WD3aMk4
	 WOlX/chFJYbRPOdrp2scEPuMghTpcBj3Nghf0mvv+mragv0glOrRhAVUgnbSkxcNHW
	 ZS3txnKwmBedWiCOuQkCPExWUrq5YTvapINy0fYa2pEP/tQaSDznkIof8xV4tnCqP+
	 5zBXTNKKiOvIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3A9CC25B79
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 00:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171564674279.10872.1737293885852065751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ff316fb88f42ad2c921150152c39a19dd7d33b96c0f73c94280ce4b33cb9c6
Date: Tue, 14 May 2024 00:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715646742
