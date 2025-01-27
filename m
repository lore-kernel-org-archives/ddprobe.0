Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C3725A63C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737941754; cv=none; b=Gyrz5Il9omx9JU2BK8Ls67CLPhGUDJupShyE/4idYKW1egSDgz5qmIMY3ahNt92IR+qR+OLuPO6oYBM0Lh15zTNcH9EQ3/hKQnq83W21+P2JHou7+2tQSYfMaXw8A/dzzXJ9DS3c3RoqYGBuwB4bjsnzadkG0o8Hj7YyF4YBBgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737941754; c=relaxed/simple;
	bh=pUc9F2VgLOkElHB0by+YhcPmtBHCcg7ARbDgoV3T6Gs=;
	h=To:Subject:From:Message-Id:Date; b=L/aDEWnuLDJytcci3/SCUZn6meaUcsiknPNwNYW+iFZiF7LkwVCyr4HjduMAKqMkbhzdut+w5VNIh/xWl8F3b5sdov7AF3sM5rlFFRN8YcndIVM6J4f9VsOH3LhqZd5iIKw8ezWCPb4k2vjoF+pongGnv82SSO56zwJfoX8lLCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LG1KhaZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LG1KhaZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB45BC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737941753;
	bh=pUc9F2VgLOkElHB0by+YhcPmtBHCcg7ARbDgoV3T6Gs=;
	h=To:Subject:From:Date:From;
	b=LG1KhaZA5W3I0QlrYUY/32qEqyogR+1je8yi6xmbupI1WuCBl2qWuxV1IIM4rGDRJ
	 X+0N8hcnkHgU9EgHRWbb3FF4UB2PaCDhoOn/NQEU457HpL0QoraKhcJIyXI/oFKIZr
	 xAyOEh8vcIO1ztT3GTd9TZMJg+w85N/zy2uGNdcVkxrtqA49vsxu9JNEkZLB5tXoa2
	 vQF7WSIDYmVkaGyLgDNlTQ/5WseLJIUqopwAbkHAn1Z92MSr/gvBcAN8hrOx2P+KW2
	 lfMU/SlwEtYaS9yf3tjWuD95r7baWAb6OBderFTTv/p8Nw1xKLxgx0K0tqqgkcm4yW
	 pDKusp32JNssw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9831AC0218D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173794175358.16208.11982629504071809358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69bddd428bfdbe4107cf5e300693461332b44fda83fd088a964c9987aa075064
Date: Mon, 27 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737941753
