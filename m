Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286E1391518
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773732894; cv=none; b=IU2dIIHZDQ5D3GBXExhCc6S2qzOdqEYBVTjRV2RDQDEjZxLyqQ2q3F0praNhIcRs7bYdjPyitBOovfOFo9O7Iddxgy/eU3EabrzvLCY47AWUBnCfn9WFNV6SPuTD4f6rdPmt184akgdoAZnMiprPwxJx4fGqQUn98eFvl+PZ7P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773732894; c=relaxed/simple;
	bh=mge2qXQPg0OfmCTdzs4597QHE1ASCFF/l67jSSaLFtM=;
	h=To:Subject:From:Message-Id:Date; b=PhA4FdzXwDbFDHX0yOQEAWGEN2OcuzEhQ/yleaMksS2rlrDpVP/iFQmPWlJ08zpQplXc+3bRM4+hTax5DTwuryT3FcoA1PWCPL4ZUouauu5f+aKIhxHS+M1Vl6CvjuLXHWCzse3d7abFuRKPJlow6fKIBmMpvZSoUc+viSp4khg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMCHyu89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMCHyu89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D717C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773732893;
	bh=mge2qXQPg0OfmCTdzs4597QHE1ASCFF/l67jSSaLFtM=;
	h=To:Subject:From:Date:From;
	b=lMCHyu89J3emZvu0SnivuuC8Qr7qZtQaMIIG8OI3O5jB9ztaXSSILDq8v4u2A0C7f
	 nuAdrvpmHesEhjQuqS9G9IM3JHasGbS6PQW2uIWC5Wi/SmzyGe4jNbA4qRRZ+ro5nl
	 OuYmdM0CDU1tRfAVusMUaFK/epxiLGJCC8jhtdMQmo3eFGOX+HHecBdudLspLfUtRG
	 lcg8N9aflCbgLAMhvk2KPzYimaioTjCAPzx64tonSerKfHYFbVM2sa5ovi2VCZGt7h
	 S7851oYHz2OwrdlWTo1fEgmUAm95rNLr/cWOkACcWHYjigQHWjU6swUfuBXJgP+xpd
	 5R6ufydOihemw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F518F3380B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177373289357.7970.16701465607791927908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c578e47867bb9da08e23962a93b6415db5102b6bb8dd2a22251372b41b8704
Date: Tue, 17 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773732893
