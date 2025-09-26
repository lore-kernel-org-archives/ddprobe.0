Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F4B2D3EFD
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758881394; cv=none; b=UR4aLdNKPYx2MwmwXOGNW19HDmE4puIwK8qCeGCimk5KgANFPE3Mkx6ncnl8OtekNHgoicih7Zk3B22HC2wPt1IIfYCZIoZ0EFliEVXeEjWj9gsorz27ftpQ0MKZfq+xAdGPx1b+tVefp0ydGw4qNhgQ+jkPwFvp4BBvqZF0JHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758881394; c=relaxed/simple;
	bh=C0F28FAO3sq2oQOzlZa91NWK8WiIbAVriPIDrvRD3hs=;
	h=To:Subject:From:Message-Id:Date; b=l0f3tgiLSnrgZ1uhTMKihOMwcRZaffACHU4cP+sQI3Ji6tdFpRezMgvkC0c3NB4qerDBJZjDa1KggPH7AJXlqvCKFo/YJmcZKk390SjFLjFSTG5g+cfw9CDmIGjXfrrHh7fYQhNlw4f5EpInzPyddNKTpQFiB3EZWTZlF5/NslE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ao2ypu5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ao2ypu5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03A5C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758881393;
	bh=C0F28FAO3sq2oQOzlZa91NWK8WiIbAVriPIDrvRD3hs=;
	h=To:Subject:From:Date:From;
	b=ao2ypu5MU8y8w9qtBefSWgX7Bd26yVfDB+NQyta5mfeHvPwk+eZBqrgJ6+4v4tzCk
	 n5A33KzvJUOQFW9RVueR9J8xfcz09W6Yc6WG2+VrN/BGMKN2eySEZUK0TAygQrLJ+m
	 fTbH+2eIO3AMt1/SaXSXR22b/zu8BAHguSWyk/l1tAX9VSvYsq4GvGF3tz04SMDzDI
	 WFU3wioJttR76otkx2wpM9+LW9VCH9QOYrs7pF6e33mLhJZnNm75ma7cjdNsov1pjW
	 NqwhSsDFwL96/gDKYFXZnP3JpWLiR1ERN6PfhyWgi7mOV7HuU9jGaf2NR0BR+JK8n0
	 1cVoKuaBd69Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9009BCAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175888139358.15397.11122500584851676117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16394026459ec1e6ebf9638c02d21c4306ba9d805c1e333226a006bb229fc8d8
Date: Fri, 26 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758881393
