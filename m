Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D28639DBFF
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 10:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783765114; cv=none; b=WN4MegmFqoVYyV5WxzKPh1SvDpcPLqqNhpvBQMLfT7+ypt29sZ1UDKbFZQ/h5xz0OhTufehNQSH4WTmgtFLJBHBrLvoEStJk8h30ssFpzfEkcjjSm5fykxtFQFFOcJ9KLZDUvIgGdipvo8LZCNWgUlDnw/PbmDIu9gf1XEdC9eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783765114; c=relaxed/simple;
	bh=voFqMN1KN38WtNCprKg1xnxXEJuCop9HIkzCXcaw+Y0=;
	h=To:Subject:From:Message-Id:Date; b=EjOpwpVulZ/iErlv0l2+SB+rnptUnx3s2RHZ3lYIqM2AEblmt+z/Exm5DShG+fvBv+Z62E8ifWtXkLuU7sigl5XzYPhC1nhmq1QVVCEvSl7ZP2unVEYSHQ1FxoapnmDkHqoEr1LtN6c/8vlr21QPhx8+RVkAtCvQmfhmjn2ETy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uE6fcI7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uE6fcI7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3CBC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783765113;
	bh=voFqMN1KN38WtNCprKg1xnxXEJuCop9HIkzCXcaw+Y0=;
	h=To:Subject:From:Date:From;
	b=uE6fcI7b1UmiI/YRChSAgBXitlWDj/AZ/WFWdWeIChxvAL9X/2t96J+YcD7E7rXHu
	 4MWsY42FiCdU9SeWDGUfmw+8txTaQDCOUo2TrkDMR+Ai8bLwdRZA2mPrVtB9GojWo+
	 cyjcbnhCZiobAa7ugWWfFKcgTQ71Nlx+fy8Rr0y6eb9fp0sKW617yPv6PMlfPkD51J
	 vzNsxOxhNZcsxzkUjpeSIN4eaumRM6lISmQ5bNGjxy8jYG+0Ljc7Ve5zZICHpUiSIE
	 zaL4anpxLulTXzvfXvxQdADKDS+TqdlEp91canXeaLlJmwgftfJE55YDDXsEEqfhQV
	 pw9sxvH67JZ2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FE1C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178376511368.2357.6576800692535116726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14e5a03f0ffd5a86618e307fff339ebb79452da859d4bbd5033f66a7c4f63e1
Date: Sat, 11 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783765113
