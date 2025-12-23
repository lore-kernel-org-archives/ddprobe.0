Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109FE2BEC5E
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766498034; cv=none; b=sImvTN6jN5VYjINDMFv1imSuSEewGjtk7GKLrXMnyr28yFMsGeWep4VZZhn+5oHPeo3sDEpgTbxlZzcl+xN0rI4gTQ4JpFWDy1EbQrJ2Rgq4kDHBVBSAMJzjP/5J1ajXAXXGJ6QUORCpleaHI0NQlxjiaCp//pODt6So8LZ1MAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766498034; c=relaxed/simple;
	bh=eiyyHNb1ge0Fx1KdK9YHA1wOrtVBklmSpW9fkU/viQM=;
	h=To:Subject:From:Message-Id:Date; b=qUo/W556XnLBqrJtqnbjCo/V6vjxwx8+CjQ7zewrCSySRsztAChaY6Tf2Qgy/HWlwXvqtSJvx/bxuIus2uSJgNrIKxJePEpdQs1K5KYQKfL9BATzJ9kie+oLYQVLhkBLChYyOxn7Q2ozFH7BW03S2MmokoyIZc8l1MIgCfcOE0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjeyT9Mg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjeyT9Mg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E042C116D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766498033;
	bh=eiyyHNb1ge0Fx1KdK9YHA1wOrtVBklmSpW9fkU/viQM=;
	h=To:Subject:From:Date:From;
	b=PjeyT9MgRbdejqH8nyYgoCAOYdD+zG4qdOMbNj1IsUU0p5TR+OItb5IRtNGPrnzb0
	 tfLPBFUgvOMOaRf6Qwe7HZkSrt0Uc+kl+wi68YzzhjCAK+UZ8N18431avF6a21DHvI
	 bWX/0nc2/onFz8bYIAmuYBL/t8zWhxw3jmQGwdYuOghU7VolBZb2UQKQlvTVjpH89J
	 wYCWcHl+sovL9ZX01t8wUg+TBzUVlSUMSbeY8FcUCTD2mBEXk+PJVEmNMhO4x21lS2
	 V0RSDwNUcIVK2lmda7DMdVg19nDVAhvHUjYfatfkFD2QBCqr1kt0EU+k13iwVA9yoj
	 HvsqSFubosRQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90673E6F08F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176649803358.24332.5082191364147452129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df2f8b65a8af9f741835c93553e761a2deef2c5c0862fde5d4f5e44455feaf6
Date: Tue, 23 Dec 2025 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766498033
