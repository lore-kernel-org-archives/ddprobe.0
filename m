Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5378F15ECF2
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 13:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716816263; cv=none; b=LTYUHLnp/szJjYiX05ZJsYDiHwkXVDv2N99Ns8rAyBAKPsAu6vxKKTP3Qa0nhmQonJjawTQ3fBxKrDKpma2ZC4v/ZQxDvF8//+FpCt59H4jBIc8ELmlfIcphI2U2TG0EpyFaaqkDDty2LgXTZ2yQ1eqB3MXZaN9tRg7jVZjnOz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716816263; c=relaxed/simple;
	bh=iYSigCjMQh5jElemC9B27vibbe6UavWMU/OPe3TBuoI=;
	h=To:Subject:From:Message-Id:Date; b=d0p1s5872gfZS9ZQx+EifdI07yK91BCrIIADnYcl1SmuuFGbzCdVtWSQCXqJon285N8t/uNC4MTzIOT4X+VH798q4w38VsLXQbCLJWCo8oWjRF5iWeC5q/0yDrhJjq3UZ+0AF0opyX96ewFMkwjXhzSbO7sV+rGHvLAwkmR6RHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNSybiOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNSybiOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BB8C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 13:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716816262;
	bh=iYSigCjMQh5jElemC9B27vibbe6UavWMU/OPe3TBuoI=;
	h=To:Subject:From:Date:From;
	b=qNSybiOTpgH8RG+wXU+RfuTjOMD1YRvdfLz2sGnT+1DJFDpbP+t3xkDxNQpKRUiYD
	 8Oi1Wz6g3xgzaeGFWV7safD0ozNK20VT32N9RiWXtutWG51t7PeS6ZZ2mut+uFF7Cl
	 8HOg0Q9b+QKjD9Xiqr4MieFleXuVURBunUqBjuNIqFTNbzAakyHWZYTWwK9UtbPlj1
	 U1vfEiMDqmbQfxj8f+JPR+OCbALlsrnJX/MaaI8kApNYai8jQgvm7NomVJSYJCqkjf
	 UcIfRmGMgExSHf6l8wlPaxGBOP84TifDsMtuRqm67tx8uaL+9JOsEil9G7nbOj0of1
	 KwI3CizhF6vxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2971C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 13:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171681626277.8659.8116021366552320019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5581a1f07f32695a69316be6a473544eff557e4e14900d077c9f35ffd39db492
Date: Mon, 27 May 2024 13:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716816262
