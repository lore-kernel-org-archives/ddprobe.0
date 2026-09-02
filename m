Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FD4466B5E
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788358234; cv=none; b=R76cYwKSQyhj0Gj9XnlOMp++ntJ13HYezPHyBHj9yi06SBLCnHDlkIoOt+pxSMfnGRbQomOncQ7vWSjlQk0d31DasFVZj/ifIiJCC29MbqPsSlAM6brEV1NUp9BvFNajOpZfGRCQJCpIkkhQAskDjWvsTRj1W9cQ3VKA/R/YFNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788358234; c=relaxed/simple;
	bh=FW0Ld7xki3tkM2eTUe8by0rxuAfNNXIMbFssx1v8KLw=;
	h=To:Subject:From:Message-Id:Date; b=eKVnxni0f1APDVOczUAR57P7iVMZBh1IaB04fm8jtY5Yjq4Cp+0s2PmZkD4Bo2bKKFM5S9muHC2foCeAKMBzKkTYtGabvgVBj8cjMjbYfVPP8a0IPtp03VTr+IfTt5gcK5dvnTsCSmetItTkKsWo2Df12cPs00GLGDwvg3UrxUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GK3S3g3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GK3S3g3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0B9C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788358233;
	bh=FW0Ld7xki3tkM2eTUe8by0rxuAfNNXIMbFssx1v8KLw=;
	h=To:Subject:From:Date:From;
	b=GK3S3g3b0hPMe/zIDNIp6TUkEU0kB5ocw5j/jHt26PXOSGpeROCH84XQ5r1kWocOp
	 FPpYxTgt9DxHGdkVd7dX7Ne/spIQ9CQJ+evQWi7S2+5xpunIAuUOrLBqrKeyu5W7yO
	 1S4H9zeEnSekxVCQpUw54vlXzXSDgKxFz47+kbJgYD4/Ld8/I0V4BEs/GA7YwMPTKL
	 9xrKSYyvhCwacA2n2vqAnoRafKaLbjBV8nUCa2w01n6lY2Lyb4jo8SUUAMgZjgr/Ja
	 YJoZSHSWMwrSbzn/a+muGAyowDekfAkORczM3t9BUIeszonGgDWWG+uaQo+Ws83k8B
	 JkY3/Zzq5+r+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB376C624D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178835823369.572.18182141229825446666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dabcf49db101d0abc97968bfab6e1de9ec7db77df61a49f7e82cf43617095de2
Date: Wed, 02 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788358233
