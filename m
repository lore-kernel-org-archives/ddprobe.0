Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D8F126C05
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729630554; cv=none; b=rJETDukY6uEozkq7eDTGGkHE5v+pSUEYniXST/Pf/AQDP0pHx8htbmpr0vaU8TfxHo2ixTsNUVxXCmHrEJmJAHZqnW3rxgTs2oSzUPBYBelMUB2wd+NSWDbedbgWHQ8OKaMGBwGs/BOsOHdK6mG8osEQGMpzu0KQiLqxvO+te/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729630554; c=relaxed/simple;
	bh=61deVvZLimc2iq8imltvo224H98h8NNsEMMmL+79SGY=;
	h=To:Subject:From:Message-Id:Date; b=MQplYIjnj/Z6dOhMb4zoHcVTiTxnGS0lxp7AxvPeVe7IHkNd3aioFNj/up/Q+7OCPQxYXro7kN1Ugo9RkQijyRlyngiQy2PZU3CIm9xo9iXDl3rtNUs1vAbiYZUGNgNyJuDAYij6ZFTK38FG/IDvhwUjidpVSkwISf6TVvG+JUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OirvqVIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OirvqVIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B757CC4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729630553;
	bh=61deVvZLimc2iq8imltvo224H98h8NNsEMMmL+79SGY=;
	h=To:Subject:From:Date:From;
	b=OirvqVIc0FHjJ9fwr4uhyUoSoj2TX6ObpNis2G6cUAo/jx6n87646CZzwRxXopP7Y
	 7kXBKgPOj2UnqOcpuHCTrJcOGv9jZSamCJrEjj0j8ZmbryPz3JxwgaPxhu2tww4iVg
	 4NK44uyOogKC4a4qL8KvGvr7DDnr01PIfNaxZPYfgGJiJc1bbaUc7gfG/jZBAvVwEs
	 bSy2RvKnFBaW/IFwWMZjXKswy4Ips5GfNWLzGSFQ6aDf+YMTLNclgSPm+9fQkq8E5k
	 aSlHF5Lf2GPTC6rB6FbJYmmWSTAp1OXJodOK9KqI6uQ3ZEyC0qUrCtgYXfHkOIHmjb
	 qJBXR9/XiqePw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0149CDD0F4
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172963055363.26431.10449603429223066731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34bd870352da2bb5b61ca779af830cc74557e5b3fe202c99ba16f13ad060bb5d
Date: Tue, 22 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729630553
