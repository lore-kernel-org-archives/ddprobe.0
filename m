Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A65221FC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757444994; cv=none; b=iY7jHLIumNIl8tuqyq5j/KzF4XELLxkr/lEuIkAc4gCNwNcqZJ009tUFcVFfl1ieAoIHTSHpkeZjFyBH8dA/RWCzrkE56XG0FnhJvDGlHqQT4073CzMCizfDVDIzXvop2ZgF3OuTvbZvie5+Ij6dbfHAZsH5P/nOL180hFUeP+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757444994; c=relaxed/simple;
	bh=Cb8puyVte1hgGukifRm36yQS3NF5IzOBAbjxcgDm5KM=;
	h=To:Subject:From:Message-Id:Date; b=jQ3PZ4df7Fo+Mv4S5fi14ZWqgCk/w806ZW9bbxreqI+9EWoTVxSNcb7E6NGbjKqk8FJq+HeAuuYrgWDI7DNInbQdcr3ZuGngHhDvvTvWzlZQpXDszqn2ay6uR1di/b+32Hed4BdmZ9/SM06iDOC2S9roixivKPAI70nyS9Cfnb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ydh2b5tP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ydh2b5tP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13FFC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757444993;
	bh=Cb8puyVte1hgGukifRm36yQS3NF5IzOBAbjxcgDm5KM=;
	h=To:Subject:From:Date:From;
	b=Ydh2b5tPCit7wLVVvYYbWtc9SfOo+spJpyEnzO4goL+zMHaA2FXZl0UBuyxJ3JKBo
	 Df/EOxQYj2FCc7c42AV4Yam6PFseIzFTp+0m6gPRpfSgTanhLk7S36+oGulgdUKcM1
	 HUJIqaZALcp+FajuMApAZx2fzE9l6LfcV17tgSRDTlZAvOsrotc5V+5MmmPhjUdr4G
	 VwLVEBXRYc1+cDnn6GwQFwub7wc/R9vHj4J2eqNRdepf4qHILOQpdsEPH4s3AYmL0U
	 1bhW0HjDRfEbXc8olUhHzr0NlE97TjGPxutUd45teveOPSTDzMO94dsqLjGswlWB9n
	 KwKCGishK1X6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F94BCA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175744499358.31064.12893527729989560462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7514db20fdb97543a87de97c47ed3027272ab8d954388b1d6c176a9d054f24
Date: Tue, 09 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757444993
