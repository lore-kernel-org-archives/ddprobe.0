Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC862DC792
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782325654; cv=none; b=kOVKI0J5Napx6PqGvLCtonKXHyV5T8XCxKX/ow0NJ42fLSQ/5BVdxmzGx85KLneI1HlgLDFiQthQJNZ9xWpsydwaEQtnQth/O6qKKWtvnW3sXoeByEXzk7CXD0RERLnpsQRU03e3R8yimkCdbu4KgBa4fUGF0o6JH6D2EqSev2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782325654; c=relaxed/simple;
	bh=whiN5GB570HCha9r/K8pPfUN04VyNqfvygdSso0Vc+0=;
	h=To:Subject:From:Message-Id:Date; b=j3EDQ/s+t15pAbVqVrPPFkYl/inumsj6z/mLKuTHpKdNDuo53XOJssAdhh4/xDpRJkBeNxNUatKM2yQABVkWSmyRnpbOlAOmrruLRVLQb3728QYBDu2mAH4BYLP+T6Hn4IGioKLLkW4PyYPhOY+h1m18QwXgPOZg0sl4y1bOLE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIqjVuXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIqjVuXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E19C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782325653;
	bh=whiN5GB570HCha9r/K8pPfUN04VyNqfvygdSso0Vc+0=;
	h=To:Subject:From:Date:From;
	b=BIqjVuXq7Z5wVkYdR4oqt4IOscH1gB9FZ+rDIYiSa5lv/4irexPSK2OSKIsexygWS
	 Hp2BslAli/coKnC8OqECdwgF/cSpSFUEP+mlCZPpL6NyHLBKjTfEjxznnvvOcsgFjg
	 KdEHM0oZcio87bCIrMMLT99V30tLz9CKQfv04aHH91K0k3QGvI6ELfNQe1ljYmJMId
	 LZpQZQkIUgYZgTqLTlfSFiuBarVkoY37ZFiNbbVpp20x2fBbtkm1INkzNjuw3pSJb4
	 8AdCyCphOo5dWaGiYE9Ys6TDud/obfD/yOFjl11lKV/Vl2G8DsbKA88kfnz40gPfBM
	 lbk/3BvlFN82A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB810CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178232565369.21174.14909852762957557541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e8fcdfeb6ecea746666c955d05a240f5ec87fec3cb4454d99aee9916208feb
Date: Wed, 24 Jun 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782325653
