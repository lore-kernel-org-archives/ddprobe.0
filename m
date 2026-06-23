Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4919D3624D7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 14:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782224194; cv=none; b=hi6a9dYgh3CBM0+tJR5/6phj5HVwZ+rhXfBTsjaKElk8yrxVF8pXqoih6UlCY1tSSlwn9K30Nf2mKWSIvSlbQ+eNbrQFctMs4G+gDTk4fLs8W8843gGZgdgh7AarADj35Ljz9/prPeIhrZ483MFHBhuhoTWr6I/wzJqchc5mKVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782224194; c=relaxed/simple;
	bh=RYn9s4VKIr0WYp+yNIGoKESWaB1ey1h53PIgLwQz8vk=;
	h=To:Subject:From:Message-Id:Date; b=qA6QTc2PDtoxhOYppeV+qv2qlYTgEiuhR/esU99lxiig8+aTUQID+1dQRq2EUJLKu3A4nQFEPvS+dpFxX50zBKNUnTG+cSCAtVFGsQq1GrwthvHrmBv3PwwLgYz80OxNGc3dfalLl6TCKMZ0YuwyIkJEneQiQwzAmttrGD1rzQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9/xn7g0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9/xn7g0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95D5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 14:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782224193;
	bh=RYn9s4VKIr0WYp+yNIGoKESWaB1ey1h53PIgLwQz8vk=;
	h=To:Subject:From:Date:From;
	b=E9/xn7g0HXslcX6tDx3oeHAqlB132S1L9jqgTOlqHGI+nsHNGMA1qluAVnZQ5qux/
	 Q4nBluIKQFfKifBplk2SzOb9riseAufXtTLFMJrg6B558WLHda6Bk0TJd3kwrlX511
	 6e3cbU4CG4MxQV4fmDfv6bMmkFAtMODS9c4mnfX0Whd6gp3pC+iyY471C6zhlzKIk0
	 2dSQ+niPrl9aTlhumQv/5ISLkzYeRpPkle/nMOBvAqYf4M/s+9m6cBcfe3MKFUpg5X
	 7gJYD6bDwiFcozCuI7AI48nMdVQE4625OdTGprEErHQx2diMU4n6Dgmdt9F1N7VqEX
	 VEM5SppMEgrxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A41CDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 14:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178222419368.10463.10653056031770466749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 034501532bc1aa3732c2801ca5f6562cb93cb9553b04f420a9571603e12441b1
Date: Tue, 23 Jun 2026 14:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782224193
