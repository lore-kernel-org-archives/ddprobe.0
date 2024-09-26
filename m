Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CADC1AB6F9
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727339754; cv=none; b=ANTmPpwHDrjt58Ch2tR21js+Yrwc3bqvT9KC0b3rz2Mc925nxQCO7lro81mnhPNw8fC1RTs9Iv7bZ4Pxr8mloXWMH9dollJselEs1P960C47vPIqZon0tHGX/C09Ug0WxYsjVZmYmcaIJm2MxLkzptitOXLUJ+BkcHFHFxqiq+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727339754; c=relaxed/simple;
	bh=Jr0ZUWZ05qFNwOiz+/86U3/TmbUdfYiA9g14FDFYLB4=;
	h=To:Subject:From:Message-Id:Date; b=r/EfBYCwPh0hIt95OVaMtwvJqYQLemKPLxIgSQeWOqm9VqWpK3ptJgwbDbBQsoaSjL7hbEyrqNmCShX6rdeYnXebf6A1iYd3+V1q3g/3FxnYLsBddavLZVtC+EdX4B9BGeAMrLB7cz6dLGi5YWGZKZXna9mMncceNDlw1kgSKEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpBFjhdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpBFjhdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1334C4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727339753;
	bh=Jr0ZUWZ05qFNwOiz+/86U3/TmbUdfYiA9g14FDFYLB4=;
	h=To:Subject:From:Date:From;
	b=PpBFjhdbAvmAjcSFYN0tQD2SHpJ4GaODWpWsh2CQzfkCG2x6FZy3dADI8VVbsIogx
	 I9E5T2GiG/1/CDEg24iu249oNgVm5lsDIoAIohpOYlgQNy9NK1vIukJZbDb3tA6ybf
	 aYl1yeRL8MZHJBY/VWBWOepGmP7iJ1tlRMO6+0WTTZcsif8CtGY6JpzR45JW2UrPL8
	 vwzNGj7iZcudO/Si8tfLWofKBY2snM4E08hySkiuHeNJbjZZZ5b8S4IPfgKpDhfoiS
	 Civ31+TTJS97ZOTPNM4OohtSFQ/B1GR3RKEpmP2KDXKW0owfciFMiJFHtOC+DxCUi5
	 04h6W3Xu6Ct8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C58CCF9E9
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172733975359.22003.9129774087198384768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab0b6df0cc290fa7a4e14f275ae152420cd9d379682c5ef5cc62a4fa70751c9
Date: Thu, 26 Sep 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727339753
