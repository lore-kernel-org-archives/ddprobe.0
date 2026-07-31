Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CB93112AB
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785513634; cv=none; b=GtRsCOSe9I13/wGp4kya+3fThsv2O9PofiuLjn1Z0MnrJiYcc38+7/Tk0mYyLUDkmy6zLxAjFP9EooiSDZIGlEnelxgXM/m1doDkoiivfJKhEY1dcEVbumGQj7h9IsUQx2fzujs+1Kxc2qD5E8qCpY270nk9VpbQdGkl03atfR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785513634; c=relaxed/simple;
	bh=n878mqj2GkoLIA/jB6IZCFOVfayYlHrpaeSb5bJOHwQ=;
	h=To:Subject:From:Message-Id:Date; b=hm7pfQV+DCW+96LqffPqWXMztVwes/gvzniGwHyJrjiOOv2WuBQVFTH7pnH/I0UTP5m1tAw1pNhxe1iFtknHJaT/Qf0Vh9edpCk6QoLuALbxQL8myK4HYoX6NxOogdg3mOTH7+qKyUIuPwvbmTRYmCk4lA7KF/3nrMKqmHythIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqigtKB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqigtKB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A4FC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785513633;
	bh=n878mqj2GkoLIA/jB6IZCFOVfayYlHrpaeSb5bJOHwQ=;
	h=To:Subject:From:Date:From;
	b=JqigtKB+2YHSbjX+YNebPakhk9utYdMM9bDPobKZoTfDk2XWrnjOY4fswQJYjHrpu
	 8G0P8XTSYNkOfrnqccieYFOS+kKPpLngcIer8+7ZV0YwkMqRC0IdaUpOzeTcHCijHE
	 q/+CEaUFSwjHm7jBWIPZyZ1qA8uR4IfnTQ6CBNhw06IC2FAvgK9bwPStrI2yGSdU7D
	 sAwmonV7skbMTvYog4vZoPDBP1eylBcM0cv5N27BA52dQaadbGN3OVJjZY/T8l5JqJ
	 jrpqFrKkSmcr61/i0xcVvohXhgEDHc4/9NL7xqx+7+QWQhIGRcUcW4Dn2R6Yk8+fRs
	 gOWAwKQIKrvBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65D3C5516F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178551363373.26308.14433833545239872931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e4bd17bd906b2c382851f1228549d78bd77b8a8c81658c27223077a980c2cb5
Date: Fri, 31 Jul 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785513633
