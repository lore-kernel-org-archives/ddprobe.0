Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99163CFF57
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 13:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774358694; cv=none; b=injJeeK4thp9qAwqXCfJzVLfW023FiDS/wk+OJB6+56w+DUGMlHzic3pXeyTxK8zo+Moo4qWFntkrQwnwPTGbA/9hLpp4Xqewnz8Ck98pLJHy312PMQp9/B0eGVtGzXxzLb7187Yu5VPVQ0zfG1Lb4aKQJ72DU9uw6A72nZiT5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774358694; c=relaxed/simple;
	bh=4aST/ChaGrKNAVEWH5Ij/S6UI4pEXppfteTCGZcU59g=;
	h=To:Subject:From:Message-Id:Date; b=DslAiibHXoiuYzM7nVsHqP5kIxE6fiXV9lxpNYCC74c64M2N2+Otj/Ii3cinRpxs8WTiV7NFhnrlog2iGvwLe1agug3uOUNiYBY4h+zZR3iHpdP9RpoTtD+x+8xVDjDBNY9BWwneGW6qfkaOvgopYFL4uK7gzigE7iPSCrJARfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5Xi68wa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5Xi68wa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DAAC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774358694;
	bh=4aST/ChaGrKNAVEWH5Ij/S6UI4pEXppfteTCGZcU59g=;
	h=To:Subject:From:Date:From;
	b=t5Xi68wa76V/zq1GQdENvMtXqVz3Oe8pSJIL8JAFpOZNI5IkRINiiLHB1nteGWalX
	 0P0IsAYn4rbXl70ig/QcmciUUtrPQ0S+Zf1TfveVI0FIQp09yb86meGBB+YJr1LCUy
	 4/IJNW2pG5/NeUDTxBqhddlaOYKc/VuK9VewWkNOK5LNlU1fKTZdQ08pj8Fez1/JV5
	 fIsZv0TIWF80lvrdQ9GyM1Kv6HtLGEEPfyVX8uneavfEpAPpF9VpX2lrWwWtdSNT+p
	 o3/W2IjFkSdRRFm7m8gpJzHsOVXmt6YUJUfufLmoHdrE+CoJE4tc6aS7MiC/SQUsGB
	 X/QOqugCfYZVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94518F54AB0
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177435869358.25143.16174389092847461130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e8110a4a24b74204ec57aa0cb596ae4e32f45e0354b68eca43af56831a820b
Date: Tue, 24 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774358693
