Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114DC213E62
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736538954; cv=none; b=m67vRAqUnPnVOszmCmc5wcCA4FcBipAChFmAlP9ZIXiDT8OEJlZCdV3oQneNU2U1YJpWwGndAtESwTeaKscslmZhq9OX3pZ2JOxatvG9mJMKV3iOGt2RnVMkIHXr6D/jG08u1bJfX+x3MY0lFq5Lo2hga5U8duTvabEOParE5kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736538954; c=relaxed/simple;
	bh=3rixolsMw6XsEp0F03fcZ02JJ0VQzOLhpfaaVNv8hKo=;
	h=To:Subject:From:Message-Id:Date; b=GBwb98hc4i6/lwtjh18KORLBuzIEcQ9JiGYTnXDK8cE3et6hoOL+LkaHLQBUCmc2TQ27NE0MJu/d3/Rjk6D+rgUGOcH+55wECXzY6SYCdfNGBIukrjb76UJKNA6w/k8y58aKtUMC/XA1cmRIurbKavqc8hB4TqyMYyRJiNsxJaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lg5XzSG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lg5XzSG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B06C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736538953;
	bh=3rixolsMw6XsEp0F03fcZ02JJ0VQzOLhpfaaVNv8hKo=;
	h=To:Subject:From:Date:From;
	b=lg5XzSG9AW8bfh2DAy2yJj3iHa0ORkMKhcyhgVZXQrbbMRVqslMk3oDmeoUOBwp6F
	 3wXok1MYF/+3SjPTTbbaddVJKUuu3hBjI5VcKpnmdbB8ZJo21D9Pr2mH39x8uaoIvp
	 drpFW1XRM8353aLAZv6s2KuCB3WP+XPifWvEjZOqMJ1kYIR+De9/Fcl5pQHWl1LLr8
	 optg/S4PE6xGNxQHkwy/hbHV86HoGYwMCkAJwdMArnWy9FGZDzPPIwaG3pzrsdxfEi
	 joQbmLc1kYifjHmfiDQn9qW9zvEtu8BaPaXySaY7zUKFxCj3d7d0EBuRwaH9pX5s5r
	 bMDYcyosO3JzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940FAE7719C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173653895359.25845.1078965011014977396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23e5df9ce9f756d8781d0f03ecae1dd4235fd9bd04c002c57cd1d33442974a18
Date: Fri, 10 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736538953
