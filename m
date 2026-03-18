Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142923EF0CF
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773863094; cv=none; b=nOTEweuve1Tp4FfexK6v/3/05BYaBCIybE+EMnv1UdWusjYaVIyeeoL0XOpIb9VHvtCu4N1IIb9sFA7tDRRocHI639JsUSMh5pq5rvvpgJH9NIEkwfW+obCpwnOL2IdqHWBt9U1lvHS4p+LAnHN3PzZpZD773Q2i3xL+kPfmXiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773863094; c=relaxed/simple;
	bh=xoGumWpGps09ANhp82MDGMxoVWYlfj3mImAHYEn2lqM=;
	h=To:Subject:From:Message-Id:Date; b=bY6bqqDtXCWV8Xbs+gxPHc00lEitRb2JpYvJeX2LdhRld6NDDsMVl+njBhiCO2RyDdMJmJVNDE+VeP7KReHaPbhmcTIMCvbMGt3MNe4jbX4sROuFCKxLKHmAVu4czvpgCHcD38kLSXnRi/OdSnpPU2O+Hp+MWf4PFqNvIdqACtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNS6RVXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNS6RVXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A197DC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773863093;
	bh=xoGumWpGps09ANhp82MDGMxoVWYlfj3mImAHYEn2lqM=;
	h=To:Subject:From:Date:From;
	b=KNS6RVXjNPnz/EGOjlcZ4LMiczEVF8SyIQKPpL13o48QhoEHkaHtjYvKJenEhEW15
	 7AkFitOuf7DmAQ+bYOaLDW6QR+MIoAsUAnILo2DRgXiP/ZdLqwQqDk9M/QpYNDcfvx
	 Iugg/4egKDPNg+65pUff7AlSCx5GqM3QBdagtKqoEZ8O+ik/wjlgyQyR9DUiK8ncnb
	 zK1pQoaF6P+bLMXBZru7q3w7bthzjY8bV7qB8VLOPU0myQckRxswRFZQeuE42SSt7R
	 3Cz+4nKObqIkMj1p5eTXc9v6SITmY+6icO1WgZBDs98ZREL0tLSnwyF3qTVkn8nsV2
	 PO8isdf50nsPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC85107760E
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177386309357.19631.6123594296509601070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 417618ff70ec28bb7ad16605ac677c5d8fb3a6476b42eacb575233d9be3f66dd
Date: Wed, 18 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773863093
