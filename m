Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F27B1DA58
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 20:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716843263; cv=none; b=K+QhgeDxN8fu9+CZiJI4lf/eHzT/AFV8I68urCy7M0Fs9rqLXOuCXEwwvNgqS8+mQSYONeM9J3/55rhjdksFvRg7hhuykWv8LYX9AzuXwlF05Re0xHpnwWkvFKYbz8sYDxfchb66/KzSF1t9iZe11BSVPBuLE+QJeTGRDMcgWq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716843263; c=relaxed/simple;
	bh=Syk9VKkzFA8SLSSQNMWYhlhbqBt9l4mth/NdLuiA0kU=;
	h=To:Subject:From:Message-Id:Date; b=PrAV/jxekvz8C69AhnfqVwflwQRSPc+YYopTT7pbeoru06cyphKEFRVORoC37lK/ddmbQZRFctFFaeMROoTrGjs+egCHCLfPe+Fm7+NlDJytp2csxJlet5ETupoHwsRYhInCdwOuTHuwW825Puh6pYf0WjIxT9ySZxacBagyWQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQHbtJZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQHbtJZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2392C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 20:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716843262;
	bh=Syk9VKkzFA8SLSSQNMWYhlhbqBt9l4mth/NdLuiA0kU=;
	h=To:Subject:From:Date:From;
	b=HQHbtJZyWEVyZQMW+bwvYnljLvTHVMBKmDHxmBB9/AzRg1T3fozjPedWiXrVJn8gx
	 d+7d3UMafSa8SCY1zgp11v+orgAGoRi6acZlB6WsBp4ukOAP7AaouOTntSkNraNfFY
	 JhHHn3XD5oifdRu18tbjyC5lGEqwZU7mzSi4AbIcp04i4lqVzplIHYKvi4lbaN8H0P
	 aQn9vhIYT6+hxLCnU30XJDOZ60Ju+4pJGygGUamfspTfdJzXgw0OrnhTkUmPLw4CRl
	 aagZESHsZF6l3nn/RM0mhSJwQAzZj2lNfjKsbw5mFzNMKi0z6/JTOol3RIDWTWaJ3l
	 svZbh8vyrQZhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC63FC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 20:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171684326279.25654.5482176219907032085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5d95043e14dba954a1a52cca97c4dc3e33c550a530ad30767cf99eb8e606f8
Date: Mon, 27 May 2024 20:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716843262
