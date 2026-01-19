Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1930B289811
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768805634; cv=none; b=p4IFSptrJyU/5/KUABSY7pKZ8Muv2ktYbdDv2h0l45B8lZnoo9zuKH9KUpQC6eusiVaYTjoHDWdaSlEIBbKhuP2/biQ523XTXnFnwLC8mh4/Wbc8Hrfnmf8TNk+PJlKGTb0rNfNqDrUvjXEdoeG2iA8kWJwIVk6MsaFIT4bE/vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768805634; c=relaxed/simple;
	bh=SzompOBDHNkPSZHsO0W8ibgiUN7N+6JyCQNq06/vgcA=;
	h=To:Subject:From:Message-Id:Date; b=AaWX8ChTz2/wdA7Klb6EZ9p6Of7LMGICKOIm/kuhVhNq/jC3Bt+eyO0SrlDVa9PRO8XTsQyRejahTyCl+8KfUgddjGwjqQyREW5YwVubG2iAd9Kv3/AhJPFHFBX1RahjC4r4jCjiKLfBnygCPxrFsFfoQZXY7rb4DlWhHqkSwZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRBE+UuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRBE+UuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2DEC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768805633;
	bh=SzompOBDHNkPSZHsO0W8ibgiUN7N+6JyCQNq06/vgcA=;
	h=To:Subject:From:Date:From;
	b=JRBE+UuH9ZUfqo/19kWFFjaLpRD14QUxCqBnBYKBpw517JM3+L8KZ29xhuOmMX/c0
	 sGx8QJWNAV0wIPrOExNOSKXQLGCkKcSDnHy909hmFcshnkB4HV761tikzqs+jW6RRL
	 h1u+FvlrhK3oQ2Em3OR4MrqedR7UUW26g+tsvFt1wwXWu0pGfBanF1KwYVwMY6Jstt
	 Ve3NRSGSXqH760sXy8dpda9gNZkhEr7kjEtL3BCWFtGlLlk48nWNmQ9zPVV04kxTr0
	 VtsIpOXQbd/2jvxcNuhR6wszAYEwlSAAZiRAtkTYRnrCOBOKDxpjUjNSM3sQVS59Md
	 8UUN/4ldD0QIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBF3CA5FF1
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176880563363.7478.5588872168802364026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b16182b10c6062e872262e4603062462f85aea7f49d5a22763d4a8a885fb06
Date: Mon, 19 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768805633
