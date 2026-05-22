Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304E237AA9E
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 12:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779452554; cv=none; b=TfALaYwxjSasEcyPJOjPPWPZvdYsq1eSY259uI3d02iUNnSUmoxMOlbNkJ3w7eOY/RD3eqlXZmnJujCZImdPkBI8o/N3Y7b+T31lidfKRk0CIKNprTJYHSp89PrtbVCtWIxeA5E4UuoOB0DHph9A/HqH6/8KQc395LHtrDWaWug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779452554; c=relaxed/simple;
	bh=SlSS4PmyahBhbyIRT+01OK+sqCezBi9OS9ZSOZrsy4k=;
	h=To:Subject:From:Message-Id:Date; b=iirCtAP/Rj/r0+XqbG4gP05mxbWOtcnqwCd3PVAJIMIsMN45wA6VXVTnjFf1v1X5tBLg/uAwfLCAabfzemaHJdq97IWJkk+xa/Cf14TluIMWApTiAAJNyBQOnQ4riIJSCkRIOj/lD1hftOnh21z5aJOiaYbYqyv/fqtF38zyWPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qel6PP75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qel6PP75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50FAC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 12:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779452553;
	bh=SlSS4PmyahBhbyIRT+01OK+sqCezBi9OS9ZSOZrsy4k=;
	h=To:Subject:From:Date:From;
	b=qel6PP75zbAHUY3FtgFfsJPVpHwCz+4/VcM/9G3O2q4aqTzS86G5uXG3P+/cGyMVc
	 kBhr86wP6oV6Hbwf8lHX3HndMNbA4+tCg3P8KZWVIxkx54u33zjRtIuQCoNbc1G2B+
	 TOV8nEo/ZspWNBErlVenj6yB2TH9P1AGtrN3usH5TdL3rhbhjQ4reZJ48up3izYLNY
	 A+WndCVRS+HWFKUz2GAGiTG95alBc0/JCOkhE9GWbPYxBZ0uw1JC0Ep+dq+JW2ZfYv
	 AfBuTEX0DY4sB/7BEXimCKtwhqO/o6CbvKzjzBunqMvGjsssdY2bLb4bg/2uKeVDPG
	 /QzsNVH5sb2vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9357CD5BB1
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 12:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177945255368.14648.10346115607390247709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c140bf254de908c6670783dffdcdcba05094bdd3e31875955d1193513e5cdb46
Date: Fri, 22 May 2026 12:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779452553
