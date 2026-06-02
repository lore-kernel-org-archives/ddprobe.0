Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2193615A86D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 01:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780364074; cv=none; b=RTpLx/bkT6xZJcSnQyn/1sF8LTrQzgWza8I/uSRBN+6Dxx9M27rhyN9G0JMF0PkIQXDizHoQMsHd7Ss1lAG6Ugu87n1DCZMl7woSLHe+BHy++VuoTYrOhP/O9GBM1uuJDWs+hYcfhFftpyhLWV7RJkKeciz1FdsLsdgfyaRBGdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780364074; c=relaxed/simple;
	bh=9WVro47qDLK9lufrWDZk1sXowYRGEMnEt0YTjtb1Cw0=;
	h=To:Subject:From:Message-Id:Date; b=IXAzEINXf4kvFpDcN7oFC1FTWqx3jSnA686aIWp38lXYMx54+X+WqlqvOiyJr8BgEjTVw+Zo6NpZeVFLvfWlHQcGDA+z78PIGUDWnKEiVgI6dhDhQN70dUiNnb7uD7NT18j20EtS/bZxMobZR9RPVjNe0p4y7lzZ0Ve0KRwRZGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tviSYn0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tviSYn0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77A1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 01:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780364073;
	bh=9WVro47qDLK9lufrWDZk1sXowYRGEMnEt0YTjtb1Cw0=;
	h=To:Subject:From:Date:From;
	b=tviSYn0gjWwNn85k+BpAL024PNomx9Pp3zkj3YQpuVBKo486gixxc2J02eMCUYQ4+
	 xiADLu9LA6mpEZK1kjMHCMbvF5NSWKIqpoLKrVsPhE6d8Dcz/RKGydXsyy3IbKStuK
	 nCy2GhdBO2fZhrUzrBPro9mb0hiy8T+udEKaa2VF2LMEmtBI8esOXJEZx6aOuXY53H
	 DpEuZDr6nESV8UJ4ZXPPY8nzL2RFnqsNvDjFACDIwmWlsySHl6tSsdZmKA1IJtwdtu
	 j9NStBe+LNvaUoZdAUEIhpg//mpM923nPYNp1RyUn+VYL3BtEzmXq5DrCc1LMvSYWR
	 J5pCCb5laZ87g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D8ACD6E56
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 01:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178036407368.29185.12841380664180221037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d7c5b9a40bc6714e32b7988396d2a59973b410540803656c518ed6f38e12481
Date: Tue, 02 Jun 2026 01:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780364073
