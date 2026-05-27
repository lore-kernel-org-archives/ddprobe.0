Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C18D36493E
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 20:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779915154; cv=none; b=uqDo+5QpRiNrRr707M7OlrlHFcxdGCCPE4aOgzjK8HOPKHwSZqUrFjf45cKX5KnPPbkxehq+Z8ZHsY9VBu09sv/4PSaw6M4mjdRmsOBIaEvGC1qV2hLBBhE8buHR+Oj9k85clw4PM/1tNF3GY6FMPG/hiycoORe3P6lwNdeT6HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779915154; c=relaxed/simple;
	bh=9VKfSoPZU1xG747uVWZM145OLvnqY3trLiqvvyRal2g=;
	h=To:Subject:From:Message-Id:Date; b=KyGzAgel2wLBZa/n2gT8nVbOQRJc9InwA6d6u8eZgCaXkJcLCJYsnD57ofn3svIyO0km/MrogBBm00QeBDPJeC/i/jITyxYBHa1n+APFUtOHgknM+R4DNr3vy0TFzwbZMUC4Ao3OEiN06HOS3O765enu7sUZRDIsBYwNvnmR7Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmHguhoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmHguhoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F064AC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 20:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779915154;
	bh=9VKfSoPZU1xG747uVWZM145OLvnqY3trLiqvvyRal2g=;
	h=To:Subject:From:Date:From;
	b=tmHguhoLbmvFVQnp+gPn09GpANYpAyfmV95V0irpJOfg7yjI9cmQcmq6329PoY5wb
	 OkBG9feU/HWFT6m3CnPDvxUoWE90fzp2ozUM9WwL76uay4DGVKNb80LXMz771T2Wgf
	 yIlbit9yGJqO7XUcMGziIm4mF6PvNUtfO1N4numUmh4cphR5ipadaH+5nP6zuLOh4l
	 kFnfOBpjh8n08ow8yUHdzDcNiXJ1xbja7SwMXLqeuRgjzUbP9xL3Z3DN3rTTs/zqFv
	 EvDbGKkmx6XaElBiI7MvpkpqgmeQgdimjxjEzzVYWT6HKrrcHksQp9mN437xs81biA
	 G2e9lrC5VdqGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE37CCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 20:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177991515382.26161.12401063463094049784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77d54a23707f3e92e9c0cd31e5bbd0f5eff0ad27b0cd4f273e4c93729b1ab67e
Date: Wed, 27 May 2026 20:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779915153
