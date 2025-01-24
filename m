Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5032E224CC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737679554; cv=none; b=t0LWwBF2/VBHAYSOWNzhhujlgDBX5NDiE1v339Psjb+VprDwKN5On02bpOGKwBOmoUzNYn9Q1lBeGGtbaZeg6ugXG7JLaaJWO6tcEuc5KwlTlUY/w6kL4dzsfY+hriaFNf5gvo/On0pgAjL5GrBltfgYYR0aXSn+P2LGMnPeDrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737679554; c=relaxed/simple;
	bh=g0GJmfBk/feM2MrQHJYVPbidwFoWR6+cOpI3EabWGTA=;
	h=To:Subject:From:Message-Id:Date; b=TT4ja/KnsLrf/RadgUi9GxLAzDT0qVN4Pbs8QmFR8oOCJG8cuWrru4HumyTclV7bWQzCD/+fH677UM6QK/8ez9Q6uHwdm4Wl22EBnS2atPgGufhlckHzMmAoHRZvz9irTPrsfCSUSmRMWEax2C+yhfnUlcAlVZ6OJKLlNBc7tuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QI3ki97Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QI3ki97Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5C0C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737679553;
	bh=g0GJmfBk/feM2MrQHJYVPbidwFoWR6+cOpI3EabWGTA=;
	h=To:Subject:From:Date:From;
	b=QI3ki97Zk/Y8EPlpyB0kwuGfkHz9muO0XX+mC5VAkVjcbtfu5DOBQcMYKOtxJL9tw
	 ITF5VV3R3rqd1Mo6THfSpO/7SEQjL/SbkvFnVrz7coC/Z9v82a6ZgvASQW4V1EeP3q
	 4EAUV7sowxv7ecmQkWm2MCWF1vGXOqo0XMrFsKQ3ozKvIzYU2UmYiPI7o9+wxqvEJu
	 4L++WnLD6+pRKw51hWFLk3RVQP0SeaziiqeAd0Uw+CVLuh6Ouaf3APcLbpWMXvNirQ
	 Yh9JMaSxNwMMwqU4fhJoqmNkBmUbIb8FB5Cor199ayrH6/KMAd6hG3b4ZFeQKH6nms
	 xXpbKYycYTMDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8E7C02182
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173767955361.5339.11368477863596880198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d6a730052495c4c9279b98626b023afa3bade04a1b239e36c615a8d39720610
Date: Fri, 24 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737679553
