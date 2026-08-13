Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4492840B6EF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786630234; cv=none; b=ocdM1vIoW1jOypbXHo8xQ5pz8XBMpk/a9yLhoQ1hMvdXb7K3WLZVMNsf2jLUEIwEFasTrgINtbzZrc4hPXQci2rUtcyDTQ6C6EyLa4HMmQJbbHIWf75+tsCuyCGz59TQPYGtff5UFDGUiCE1iT/OGbYiJfGNip4DTiKUyGFyGkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786630234; c=relaxed/simple;
	bh=d+HlLGJq4Ptuc2kfcGi11tQblKNRbP36HP09EwtYgJY=;
	h=To:Subject:From:Message-Id:Date; b=nRYV9roTR49ZDaE6QIpLBCsuFQ7oa3eMZiQHKfTywMmbBGTVp8fudEw3VC6X9hlhUJSoTaMlPNARa9IatfHBZlLB7jDYTwO01YbO3L1rpkjgglo9FP2fvBGMzPtyS2WezwqgUaNZKX5KfBsA+cipDHMyUKJ9o4n0DfqHkh7PKCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgpEg1mA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgpEg1mA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA53EC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786630233;
	bh=d+HlLGJq4Ptuc2kfcGi11tQblKNRbP36HP09EwtYgJY=;
	h=To:Subject:From:Date:From;
	b=GgpEg1mAPEy32z2VivkZJf6zixovBonVRRfg0J4pJltgNRr+oe/kktw2s07MJjXCn
	 1tKZSlKasyR1T0ipXdfQOxNmEqTOWi3hkC/A3DPqRCoMBTLG/AlfKCmuTrRqQF5lfN
	 C0UPGDvoJytOYAHg9nGPgF82vINIKjmO+E5PLTRTwgbCfvZ7ZSjtaK4YUERU/MAKYX
	 JM+NQQv/wNkp7qx5aPvxUN8LNR0NxD+I9Ay3tkuSx+3DNzSlUqGcH5FZqD143nI9Zz
	 YoK8GM6i4gP089Kjll8jnPVaWuFU/KI5wxw+Tss2lcDv0aH3ZhSNlHsHGaTXGNKRb9
	 EnCfidYMpc3Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EB8C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178663023368.12387.9889454919781410353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c587f0c9785f63d00352535ca798da8da92b71cefa2ac9e1915e29bf60bc8b4
Date: Thu, 13 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786630233
