Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16106194A60
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752781794; cv=none; b=tOI85vrSaA24I45Kl5frZPZOXJt6ISHFCuSDd0DsLBEy/yI3flCX0ti2xhT+NlHy2opVC/4vf1PofVQRiZYr/9JJrGi9/+voBBIzHURHUTmQBrXH7guRTx+jHtLdwFSIzLJRlmOOS545Wx/X9qVmQhaxBBYTR9ed83dgonMrkrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752781794; c=relaxed/simple;
	bh=FHTnDxPVRmrGk+rpDKuiMRroaNqETunZsOw0sDoHdhU=;
	h=To:Subject:From:Message-Id:Date; b=EW3mZs74Yul5aEeDYfLlPHXNnieIjwZg4bv8cyzQbpOYjlner1KDOxKHPpWspNLjUsgV48tdQPnR0m29RxNny15+lWliszcofVCY6D1wxE+5scRU1z0qsjb3nfzlklat6oVbOg8pcxebGw3JW09MJ9LWnlfHZTcDf4WnP0ZYjUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jj+rxe1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jj+rxe1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB56C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752781793;
	bh=FHTnDxPVRmrGk+rpDKuiMRroaNqETunZsOw0sDoHdhU=;
	h=To:Subject:From:Date:From;
	b=Jj+rxe1Js/LVdl9vuAaRfYlv4d6ZEEGurDOr0EtVFA6xIp5Ro5qdZap3k2Urrw/Q/
	 NE8VuEprMvdhNmRFLt3omVHO8Hnciqv1vGQHM7dfcNxryUED+iWnyqzqlHwq6TE7ou
	 x7Xg9Oxzk2YwyWMSvKIuSOLa7d1NB/WNo0LCjssEJhP4G1dZwoPe4kyffTdnQtQrk3
	 oo1zOKpeb+/9JHjPDNI6y7NYNxHIyFYv2DBnGF4YH6ZINaeZaUgo1vLIlUnkNDLGPE
	 ZeaIEVkzY+k+FqDJDKL6DHkk7x5vmiLEgTLi05BxWN1IrwKaAr0UCagzDjWa/mWt99
	 rblm1v+9hmM3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED5FC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175278179357.19360.9696784581746107142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e7e5f4726d60da3cb8d64ade945b5daed27d25fdd1d7b9a807d44547984bf75
Date: Thu, 17 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752781793
