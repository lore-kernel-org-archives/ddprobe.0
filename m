Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC4616F85E
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 09:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732268755; cv=none; b=Gg2VH8ECZsgErOt9nLXWD9aXMWPQE129ZbopI+WrYMg+MCUENeucAGsSIpzNgQDZeq60oPWdGyyL0wrIpDNCxjrlQVP2IaUkhqDXZzZdvVI8vs6nZP5qjMEvZF8KUC06w6e+0AYMwdLNEdB8kcnLr0xxCvx1U+I92xOcYvV8qxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732268755; c=relaxed/simple;
	bh=hPdemm75FDaUbqmYmtzPEGdxMYXLFymyL+SHrFHNbyM=;
	h=To:Subject:From:Message-Id:Date; b=f1imYeIHRLFwftZzD3tPfG48V0qbdWGdvncUcewuhVfga0J5W53xwKyC4ZJjUf8JgLQPARrLFSaLYTl7/qddajzeRddixkhDm7+RZhWOviKCDorJ6AHjWJ9IfeNkmipnLTJjzysiyAOmKB/kQShhP219NINjCLBXtwKNVSmepJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B55hfgYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B55hfgYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6886C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732268754;
	bh=hPdemm75FDaUbqmYmtzPEGdxMYXLFymyL+SHrFHNbyM=;
	h=To:Subject:From:Date:From;
	b=B55hfgYFBKXB162msnLynmnmez4LLWEsX8VRRTaGR1apV6siwjPXdp9AIfg6+oPK9
	 mOuVvtRuSGoqUDfh78v/BmM0ZWkiXmxEDJc6k4DwDm4rjm4QdDexRHAXQGE/t9TCjr
	 EC+eWF9uDR75uQ3pcTngcmV7sEPgayQk2GiBTDFTTPmkJiJ7hv15N/xCWcWY1FV+u5
	 bZPHTNso1sUmYvssRnt3HcMDq51ttM0eu3GeOJwKSz2rMke2ePyc2TmWuZpKJ708Z1
	 RH8sQvAFMP0SK5qhBzVMbUdTzQqwA98IZVbH8KDUiRm5T4JCGMlQp8hXi4568Hksd5
	 lOONRKb3TIGKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFF3D6ED3E
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173226875363.30947.16232378391455981002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c591db8365a80ff0ce611605a79ee9a0f72944ed791be2a1e07b367155f58e6
Date: Fri, 22 Nov 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732268753
