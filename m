Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDC81DF723
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757916595; cv=none; b=oyyMWK9wdXIEH2GKA/Dc2T+xjZL8TI0zcKxPrs42v1jA1Eg104HIkZQzTSXPbHprojO05aOr0TG8CP5+lMfv0bUxtXwlNNcwFVDTyb6CdldJFUkHdb8aUctNuugqm7SLd0BkeP9US1mj4e9a/pGudrjyMkSoOIEUW4HPjeoOoww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757916595; c=relaxed/simple;
	bh=5sO4TeVvAbTrfKXzENlidDDLcCnHpjTizZq8Nd6QXkQ=;
	h=To:Subject:From:Message-Id:Date; b=omjcehw05ANwuhdniMOjKtdEF/00jF8uQjM654wcRSVUQ6hcarKma60CmNnO85ImryFd6Mgiet/O9rJ4kz4GJWXPkCkohkMZbmU1xX9gSIKEJkaz1pvKI4zcAnFk1tq20A8doJk0xu55ckpsT3C5Q/LfHGCBoi9LGaPkAsXQ+uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0auBu5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0auBu5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BFBC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757916593;
	bh=5sO4TeVvAbTrfKXzENlidDDLcCnHpjTizZq8Nd6QXkQ=;
	h=To:Subject:From:Date:From;
	b=C0auBu5MPW1ZBdKjWBBxVjNVlOQRABagd8laW+nKTy3ptXP1jyiq0Cp/+G7Yrwkgd
	 qMrRBxaxEGw70G3EwNBE8Vk+oDV9VJIVztegt3ewN6GCkZZlmIIDO3ISGj4hcog84y
	 QBbJsobjtrRu0vogXM5xT1GRqesGNBMn0vJg8Spv6V0S3nzUtdV+O4k4kFb3WiGe4S
	 IyAN6wc2UcrVt1dA9CuF70BC3n308yIIT65SNUtuCEeN/2kYwMk8yZHUf7b85anrlw
	 4abi4uNX8RHSIZ4uaWoA+djQa4CMuHXdX1lNBj19MBDpixsJQA3QRyqh97fS9N6+7z
	 JTk7d9zZ2NWSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91615CAC58E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175791659357.16147.1548302061310797183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92979a5e2b304b9f34ceba1a58279402ce31bc34522d722d00e11fc02fd78d88
Date: Mon, 15 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757916593
