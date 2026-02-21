Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C84D1F419F
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771688094; cv=none; b=hGxwwe8D1c7wWTZd5vDSpT9bUiPprIv0WJBeUR5Z74oDH3IuIFHoViZwqnqeEPGeIyFaH/GRC3fTiQTyX5uXhmqgMQHqbi7SVn1l8ewk7EvYTvCKPwctbhRoi8yFNSkWeXiidCoXV9/m2Prp/Wz59mzXyBIif0XHtPhYfpsgCo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771688094; c=relaxed/simple;
	bh=KMQ+cCOli0rYN1y0UXrm/lT7/hNb0vnIhkAW7YFge1Q=;
	h=To:Subject:From:Message-Id:Date; b=F+RHAifKbz2VY4hLeJM0NfzVnCOumgaJ1IIiyBHHTvbURxsTeXwJeIv0pb/ywq0xiP1Oti+9dUrpwKqmNzy05Ka+kqpQwHDDO/RBN41fm0TSeip7xewmpkpmghAjGh9XELfFa52BNpGCXHH06dQvyWBKs56VWwJaEoCThW1gnHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRhYa6iN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRhYa6iN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72F0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771688093;
	bh=KMQ+cCOli0rYN1y0UXrm/lT7/hNb0vnIhkAW7YFge1Q=;
	h=To:Subject:From:Date:From;
	b=hRhYa6iNeLPsl2mcl4qLVA+LHjM/3P6wDGrdj6zMN8E+8h6T83evlk35zqr0KLac3
	 CTFb+xTkR5nOVJQEKTAK036zia/rbVaAP1V8WG3TV5zoU6MWcBc786y9YJOGRkZxaF
	 z+9ehqvyeLHIB8krFWlgPjAfR8RvBiLdHZFQ/13OwUtCD6sts8tvEMPiqY8dVQ/nLN
	 WooQKAliQyAksul4h3NR68bloh6neC/x8KmWvWhB8Xog7c+IhNRybXGhH9CaaF5u93
	 Wm1NZBA8pdfkF0uBC5TXeu0/FQTkT6a7sdH9tjoD2w6uwuObNofxNyPDHDIS21wB30
	 I0TXF5CfiF41w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92029C5AD7B
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177168809358.18291.10842647765400589618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 191fad3b867e6bf85a3bd04fffa0bcc16e7ff2032b669dbce202ea8d6eebb65d
Date: Sat, 21 Feb 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771688093
