Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488F961FE9
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 18:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718476703; cv=none; b=b5+GeHIZW5MV31kzXQ8SgcGOqq1MXekguDss+KGBuHeMgARkJMU1crLiSq44nt8wMTFON2ZVQMM5vUg+Wb9f7/285UM2hJ3Esq5F31+A96SMQWEQNgu1q79tXMeVlMNs5wfUi9gow2O+9z2/acVDhu19o2/YPi501pU4Oau8V+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718476703; c=relaxed/simple;
	bh=Mk5ggeHv1mK9WJrYlWBrQjl1IwD6zvsthm81DYAvLf8=;
	h=To:Subject:From:Message-Id:Date; b=iwd+1wo6n+MDh3M6dkAyOyvkiwnPsFExVg/A1R5CdkTub22UoCBtOxWUOmtRTzJYKP+97AwqlCOqxn9KkU90H1rlrK47MXPCOAGejXWN5df9wfeX7P/laPA7VXxAPyusmbqpnt8/PVrRc/+EJMEiqhiLZQ/YBCDn5hRfFG1ZN2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8Zwd1Dv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8Zwd1Dv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DACC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 18:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718476702;
	bh=Mk5ggeHv1mK9WJrYlWBrQjl1IwD6zvsthm81DYAvLf8=;
	h=To:Subject:From:Date:From;
	b=W8Zwd1DvzSVd8al4PbgSQxWeEYGxPIQRzzWzUbDglDWl52YtsCersgIoI8CeSRIrQ
	 gO3uzlY1wMEaZQrbDMbtbEOszCB8NeFWpc33INxWJkn+NGkWlZi8f8HrprNS7SqyQb
	 ZcMoO6E2a/KnYekTTw8W2nUEsvD4mQoM5q4WR7kTIw6ghNR8+e3B0BkKCphtkTLyul
	 n3NxXOlhFTYcsaSu8+9pvjo+s8Q8Dsk4gJzuZS5T3vU6+T9YXXcZPGr3PWwb8U9yfv
	 1hQ6BjZaImcRt+IRaBHCgnLSuIa9tYbaCf1pB2UEgeAIaPwk1G81mplxvT5z9C8bGV
	 NP7wTuGC24IeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6653C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 18:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171847670280.15117.13344975555426053402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fb107b145b518f7582f62d2f7b43e4012b236da52093cf3458a4e8c2ccef2c7
Date: Sat, 15 Jun 2024 18:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718476702
