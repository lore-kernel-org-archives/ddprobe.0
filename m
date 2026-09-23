Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77B933B27FB
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 03:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790134835; cv=none; b=ek6A/7zwz+WN1KuQujilV23TzS5aEjkOlydAaquhRRCiH27BWRcPEZmE6i1ImLJ1+6M/xD+hUz8yazqTRMFbmePaZiV7Igz+zB8DmmYnheDJggY2QiJyC4XYKyDSa2cLIJGEyMr3gjcFbTURH6uri19Y3nmtY47nKcKkQ58cQ4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790134835; c=relaxed/simple;
	bh=00CKfSJQgp83/Mcw0oCt2p8lMktHgcQmiIq/ZlRq1pg=;
	h=To:Subject:From:Message-Id:Date; b=XYugF2cLfZDejV/EqLdft2aiOhIEPIXR+HCE/KC+FUvK7Ax4+Lsi4yrDhPeFwhv8a0BPtU3a+tZAvQQVEx7tq9IWBZiY6T0U99XMKdvWP8ueQpBTVcGbJinqi3GFoqoD4zFhu4ia0puC4go9YhqNNSfd9thEWdS09WiZAuQzYDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhHERPYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhHERPYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4613C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790134833;
	bh=00CKfSJQgp83/Mcw0oCt2p8lMktHgcQmiIq/ZlRq1pg=;
	h=To:Subject:From:Date:From;
	b=AhHERPYQ1fVjYDIFAJorUPR5zcQTeRJew8cka7rwlFDrtET2nfBgwonZPtsFhHPHT
	 BtgsT9cmcz2FRsYUHvz8QX8945SZWb+pyQcbWgKr2hbBaOGJOpnbhXGb4F43c8WS3y
	 cv35UgjdRn3L4B911Zw3SSM9mbJP/uvBFZOBrm43uayCLNEZUquXOfxHLPb8moy/qM
	 SpoM16Y1+TUuFhgmUdFTbid/PGK46Hp4BLZy9lSTOaCyY6AUooJQ6uBGfqty9GzKQ/
	 eHW2GXiLGlWAHybTdYNSD27ztzrArpGYMUOJ5M4KO1idmfHXRK/yyQF9SgVBpT24b0
	 PViQb6p235xTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFE4C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179013483371.16610.12642832792368214099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a7c897cc11e90893163ac112a375984e3e13a300afcaf8d09bcba3a3076d85
Date: Wed, 23 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790134833
