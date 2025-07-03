Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C89C228CB0
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751522994; cv=none; b=X8S3neku/dY5tR+jYJkbR4Ih/8LmcaqBYpS22/6izYKcsZ380tOfehnnkRV0vP55mXY+e8ocykPl0z1KcZy4u2qaFgkLgrCc0KcUzLCZSCOd4eJMXdx4iLGpX1+IlDSYtkIONtuvHbzpp7l6Tu6SXd1PEj4BY+/A0SGw4Zq0Xvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751522994; c=relaxed/simple;
	bh=WevvMZH/f2G8BVOk8EWPfUpbaD1zcgZvBmaRNrTONTA=;
	h=To:Subject:From:Message-Id:Date; b=IRM6xr20SMMfxUdscOnLSUjkrPfCLdpsEq8Rca6Ct4ilQxS6Qi1Yy10pfF+PS06YpiQhNj0wzxKvquHtpeohbaFHtj/IbYO2dDVLollK/Lst25S9IrfNzApxProaEalk2G1LPvQbInVoz44gLrcKtejn8j5bzPAMS+m/mKAxHK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUoXzDAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUoXzDAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DF1C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751522993;
	bh=WevvMZH/f2G8BVOk8EWPfUpbaD1zcgZvBmaRNrTONTA=;
	h=To:Subject:From:Date:From;
	b=GUoXzDAgYaEDua7hLm0LbHmEfA80ZrJTdX0P32x/qpGcgPisHYBEU0+CRq3dW8yUf
	 B8hqEnbKv4TFpc6jmf086QPidiDPTcxQ0jxu/Mu0WJ/mcJ+BDHFu6AY35aDPbgUacK
	 iOGiQsymWDE55roGY2oF0ZXh0RjUsIpAovC0bWinyUF9j7PJ+rm8ajzfyzd2f2/1YJ
	 kj8erhnIokjtucqoG8/sCaxfEgqsQ5HffnpOaF1MDCVshmMyqAhc9ToGQ/59BNFakb
	 8b1DnzkFfGbabNEjWrSgnCccHKlFAY+LGeCHlrU85nu8Kmw2AFKnBL5dZdZd1bGrUU
	 UW93HRHMUQu1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90114C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175152299358.30278.15431033677381647060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e3252b67e8ebaf42c20c35f7bdeed068a5ec0ae8dbc1389b183dd3df5d7f32
Date: Thu, 03 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751522993
