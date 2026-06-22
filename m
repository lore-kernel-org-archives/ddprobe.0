Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6874D3A544D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 10:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782123394; cv=none; b=EYg6G6JNkznMXXJSokMG6FiQg99FvnkuWA+/IlhpebH9WfaQTkAQBQrQIFOjGH/AAuBtdCoo05/2NoTNQxJGlXZM4jzU4IHIVxuGK68WeLApdnrOyuVRIwCT4965smywXTcHvgwPbrmXW8CEOyLrL35GLBtLeETG9ou2/LIi54k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782123394; c=relaxed/simple;
	bh=FlDiuJukwM8Wi06mPB7MwH/lWrfuju4GwSkwruytNak=;
	h=To:Subject:From:Message-Id:Date; b=PEOxiK1k2pHGOlAt/bTZzu7xutQPmrzVO2/SFuHpc2O5zlTxLVeRIR7U67orC5RGTVVSQwm5uIy6UzhbaoLrg9nuqiIcTGwxZ6k6p4c0qSQxBNBcHW6VmlKUPxw6dH1Y6Ln1iO6brFA9DZ1K2Q7l8y9J0qCgxsrRsqpw5LeNb4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxJLKdU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxJLKdU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 14C36C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 10:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782123394;
	bh=FlDiuJukwM8Wi06mPB7MwH/lWrfuju4GwSkwruytNak=;
	h=To:Subject:From:Date:From;
	b=DxJLKdU+wWuVDEYwjmGGQnvTN/aBsqdIueiqk0drbble4+Hd1dNphE10B0tvwMLqb
	 B+hHo0j5mqaAqKmGJkLjxb9WIf9zfYROU3+X6QSUDmTfDaKURlZVSN4Uipl7JKJl0o
	 ncbv/UzRD8K6EooW5U35hLsgJGKIaepRrCwedU5br/32c7eWtkl2K5OG9mY/SmEy9E
	 KhpLVR6Ttj9/SdajvfvF6AvWeJVaS9LFhTTAMTdfKBJRC2wYKybMGx5NNdVrCDIb7R
	 ynehYZbLUKe+Ibho5nlnfSKY6bK/Bt+15+ZT4Q5NYmBX24YwHXb7Ia2mlxk+nrG5yz
	 Adlz+1Yptzhvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3932CDB476
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 10:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178212339378.14887.15846872404167065359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c1c03e073b952ec53a8ec657591b4f91e74e514332504a9f690d4df556d277
Date: Mon, 22 Jun 2026 10:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782123393
