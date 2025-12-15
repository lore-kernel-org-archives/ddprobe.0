Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7637527FB3A
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 15:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765812774; cv=none; b=D8V4EkAPMqK2ia20XX/v1ff+3eEqcuSbRKcpdwFltM4d3GZt/McgcEASPuSk5Ng1J0QPOp7cx1qrbV2NOUR06Na0tMn59UdnxqoZgMIe/pcWVCChdb4Lhmp6LoQc0AnKiiVOtPDqJ3T8oZh4BVqv/n3jUfPZSSigsSW5qIcXZV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765812774; c=relaxed/simple;
	bh=BEyQ+hFBdzWvIp38Bsp/12/9SK10+eDLO5YeJQRv4ig=;
	h=To:Subject:From:Message-Id:Date; b=CpYtxqNMQrR22zJFhixpZYbhYcrPRdMjg7Bkn5th4J+0kf5URqK+nN32TxoaxBqLuonbqRLn1GixHym8i1TIOtG1zcMAdk+Lbg2z/rn0zH0yFMWFHHPsQ4Oc0FMwfBL9d64kCdFFXHtvUCOlWb5dzF+9Cx4o5aHvuWNU70XR4s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAd5zAg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAd5zAg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8DC6C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765812773;
	bh=BEyQ+hFBdzWvIp38Bsp/12/9SK10+eDLO5YeJQRv4ig=;
	h=To:Subject:From:Date:From;
	b=QAd5zAg5ibKFyhlA4J3NvwiSdtBQEDUzgZBjXpUin2pVvIpV0Rb+J0FfU9EUuh22U
	 bLk1Xi1dhpm2pNmAk4TsIiZJ2Jc6ity6Y2Iod5J21Na0Wq7BcqWudQAnMCoktrDEqm
	 dmtmZj5C6rkyotWy/9FWSQBRQ78zHNujJCOKwMWQkBQgmlgYLVZF/KZpXYxAsSmgW5
	 DUPu/NBUHuYp/LX6bTpGYKQSvmLJ+h/eQXskNCsxoJ1cXzjH/QqIVA8zOZK6YY5NKI
	 iV+C4hLf9TjYWOhytaHSvHVmtDxdSA8D2JmYcAoTfap3P0ACvcxf9+RTjucVkreEKf
	 i0uJpqtqVpAFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D685FD5B840
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176581277384.12427.9960706946561749659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ed8e5be93bfcad617f2e6ffd5113e5dc3c77d24b1f1bf92b3a03a1be7b843b
Date: Mon, 15 Dec 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765812773
