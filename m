Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B80282F1C
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788526834; cv=none; b=HC/OLLtd2BLGLFV4Mx2mY5XvJqvViRMLraHxwqnHMW9V/5wih4t9Tblp4DU5xaLoukHkCsYcrRhmWUwJ64My+t2FE41Nx0T1qmaKz9qyWMnuxft9luHkf24FlPotwiGedt+nzeDgQodJcr6mv9en9BLx+y1JuKDOOn6T1WTiaAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788526834; c=relaxed/simple;
	bh=40LtceOJxbNWRJ7ivfCHpS92hn1SgTrzZjcjh5/HGF8=;
	h=To:Subject:From:Message-Id:Date; b=PyU21xqymE37xa9XI/r0+rUp9DKA+e8TUtTMQT0iDo36HqHuFeyBK5TWA1m8owEQg0uXnsFnFpb5RoGIX6Nd2bMWOBm6sNVBzY92Bh2ZTH9v9QZUkketCBG/upcQUrb/ULzsurmBTuVzLdZWGDTsvSnl35KEGyf/8ClosmHTIoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mip64GSB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mip64GSB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7A0C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788526833;
	bh=40LtceOJxbNWRJ7ivfCHpS92hn1SgTrzZjcjh5/HGF8=;
	h=To:Subject:From:Date:From;
	b=mip64GSBdiQAV9d0dvdea5rzuaISy+e4xH8tL6kcgmIRGv4mk2DIkMRgQGB+TPd8R
	 kJ9Y8SaKJ1nokY5euJgo2FH5Rpei+N2Qj0zNLhsmiuf/iAwk3KQCosEcg2jcsZ6kHt
	 1XsoqEeKGzXtHwPOn7slR0ZCXaLFa3DGgsXv5COz+eNlTzGnWT/GdA6VOil/6ztuKo
	 FpmdbR7tuSlEKA+ewE53YjsKZkRF4uEUwPwFIMRwkmgIXLlKOPbV/kjB/F1gftli6X
	 DZGC7xnGpWn26jXPFUNh0Ug/5n/Zd4OJItZZy54iAGdsB+V3RvJfysmT9+92S3mPJL
	 /5iv/1rx2GoYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0D2C624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178852683369.31275.14486812732548789216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9425ee60cff936cd8eb3a6989896272811f087b2ffaaad17ed9636ec750179c
Date: Fri, 04 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788526833
