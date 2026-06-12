Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463E3369D67
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 14:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781274394; cv=none; b=ldTICuosBN8xHHa6NwUwcTGOIgdmpjK9DA6fkwmrg+AdJYDr4Z5pqr2Dq0t4Nco7VQKxi2EH7gtSXfeGoNvX7NP7NWLgSH8ruFUndBzF6VcfBty/AU2lev/aFnR86ZTvm4V4w/0I4mKbE/CqEAHhaF4/aWpJ9yc/WFopiKVSJhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781274394; c=relaxed/simple;
	bh=NyYSC3+HOy6oqjub5V20Yna7G7yHLVS846KYsYA8TAY=;
	h=To:Subject:From:Message-Id:Date; b=ABrttO3AvjISCXbprp/VCxrna7bbvUYL6TEcLBx2wZm188Ep6wSmU+81XO7C8dltv6JZbKAZCebIoGRZjV36GTUYI+SNmvlZpo2habNAr1b4d/QNbOM+84nG+z6uAmUrn14thcWVEp090/c3CfSLs395OzVoVpDm91Mdconxz6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0M1qVpi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0M1qVpi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68EEC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 14:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781274393;
	bh=NyYSC3+HOy6oqjub5V20Yna7G7yHLVS846KYsYA8TAY=;
	h=To:Subject:From:Date:From;
	b=G0M1qVpis4zqNjCk6EjgAkxx16LpnchNzgnaovCpGd3St/P9e4W8aikf+BIFdwOcM
	 v1CA0NRdAzkf7XKivK3aYkPctOZdNkhB8l7pV1Gxua8jXdbe4OlVA3A7VlVSq9K3iQ
	 p3nWK6geiR4T0WAZru0TNsZ1zkI18YrxchuxU2CTzPY4TWvrn/tvXL86XDi5t2IdO7
	 YfCIcFCMkQs0cfcXoc/sBmGaJPAkhHemmqRfHWviZm2qQDQumEanLv7++oCd8JzyUZ
	 7DtBI7Wb5WoZh1S1cLuBOfAHlpZJZVaJqMlwez+TNqvgMltBsmUMVhkltz0qhqtZ0p
	 Jc6+wrbtmsdZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B3FCD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 14:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178127439368.20347.6756095228817284734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f6faab29604489e80301a8cd139d5ea9c5e6b78a82992dc998ef9d791f44b33
Date: Fri, 12 Jun 2026 14:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781274393
