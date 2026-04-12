Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F87231836
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775992054; cv=none; b=A0g3ckWYHGlRMKhBaqWG65Gpz0fNtB6yPOpaG54x6NHcdlhApI3pbMz2RKDewACh4vraummNt1NF434X8LtPrikiR6rAXC5wq60Cr945bfakhpBWTSGDhzEW2sL5TK8Y3BSDjXBlkDSgIz0BmrGM8ayZJCnuHyAKgUThb45Qxok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775992054; c=relaxed/simple;
	bh=x2dMiUmzc8SLl8Lhj/xeWecaF3sfKQ7v8inOouQ9XZo=;
	h=To:Subject:From:Message-Id:Date; b=WJEzMza0y+tS2oDJyWKq2IUqxbrUj0VLacI2MkUPodO692U8iPAEUceluVaG3tfMWuqNk33UEGKewf7pLEcpFKxSJcA4YcpbEYGs8tcC4QAncKfQN9ARykcoi8pY3g0BERS8z1CmqfscM7TEdfFDGfG2FZ2o1bhkrndjVFzBcfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oU9WBfPU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oU9WBfPU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF29AC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775992053;
	bh=x2dMiUmzc8SLl8Lhj/xeWecaF3sfKQ7v8inOouQ9XZo=;
	h=To:Subject:From:Date:From;
	b=oU9WBfPUTpiXOupOr5lUXwWhI+oGEO9W4Q8We9qveF/oZTDD/nkdo5pCatpHMATGa
	 hbA2uTyLgEov1doPtbirTpc4m3Q6nKwPJxR6KU8GkFOf+au5Kqd4r7Pz/9JZ2TFrOU
	 AVjhLCdKfBQA94821C+kUb533kswj12JJLNs+PRwNjSd2dSU+4s0vwRBCUY4PkVDAT
	 GYUpq4JYCOEnVBuDylOE0EWvJown0xx/smw+LpWvGGugOLAG58Ky8kOZQPQONeUuKN
	 FnQ8uVLHGjhy/NucCjc4PwqViof1GWEzv/qXHhAuXbGKAAnMBqaTcO+ovvxOZUgeT8
	 Dq2XE0JbD1BdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC18E937E1
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177599205368.6389.492721078844744922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 118ee9f77e7ad9af2bd6a3c9c24df8497d5bbc997be128fec86f725fc585fac7
Date: Sun, 12 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775992053
