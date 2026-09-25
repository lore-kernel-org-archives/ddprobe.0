Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549EC497B6C
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790340034; cv=none; b=j+0dUiYN2/7amQDFRXJhycl6SnXfRiwDVb+PYsXqbburPdPF1p8l/J8a4UThyiFmsTY8SgfQiHmVF6ZmR1VQYvh95HblIH+G+nYJoQgXxQYEioRgpDp7pfjOYGyraOAgvjXDWfPaZ97E0bWpsaLbGACERcAUSYkzcvK+mc5z+jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790340034; c=relaxed/simple;
	bh=ct9kn/VHAhaiusLYYJmc+0YpBEYxyUSRtjP9ori7jxA=;
	h=To:Subject:From:Message-Id:Date; b=PN+xGmnltoU8fYoelglbY0z+HhcNuE4OkKRex/6uLGUT1FgLIrCn2Xi/EDDanZEG3EiYNExzkKaEF43KNg4LHlA8F1LRbJYiP7LXdhU1dWlMSGvszZplNE0cH7O9wNScOJdRZJzsA9kP8IUnP33q+VFtTHJGs/4vJTlgXLI+PKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obpw9gdS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obpw9gdS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8E3C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790340033;
	bh=ct9kn/VHAhaiusLYYJmc+0YpBEYxyUSRtjP9ori7jxA=;
	h=To:Subject:From:Date:From;
	b=obpw9gdSBRx20hMJCO4VB0v4sTxZLWsS2Qf6sr1hOaTpL89ABhToy5Tglfh4c5ijn
	 d6h9cIorVttSFcdyrcuzn6ht/iOKO2aB9qGzTDTD4kduw3gxoHzEFUSOOY+Ft9Iu6P
	 P632Q4d5WeMdTF28QNhBjlnitY91PnmxSjZ0RUyucxce0mK1ZAqizcmHK7CdftP/ar
	 u2JeBqTXXnveAgGk9p1VzFZlvQbIEKDK8igUfNu65NTMrra1rfEdXSrs8N47L+dR5Q
	 8LJmhrN24lMEgJZdChEQTqAe+O1EvvIpokX/IE3Y0uE+1eZaKKnu0XgdYsF6buJmht
	 8m+rk4kjBEWrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE1FC9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179034003369.13251.579670496944208093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ff559f250b959c62a372eeeca38f0162f413dec02f255144e8e4f8cd73fc49
Date: Fri, 25 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790340033
