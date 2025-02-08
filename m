Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42515522F
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739004355; cv=none; b=f/at7ZZTUrygq7vyFGwlRf29+7qKzidOvM/wbNbXw+odRGo+YvJxDYlNe0vCHuDZwmDTfJ1VtouS8qHDZt3xlZw0aX914woY3dg/Dq2zLjQv42+qLl4q4ADCTfNlM2EmdDswi1vcLFLq2YIyU/1VFgxrJCAWNDCmczku4R5Dav4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739004355; c=relaxed/simple;
	bh=yHxXbc3VPYTTqnOwrKOZ+DS478TlHb/9MHPX1vjypRI=;
	h=To:Subject:From:Message-Id:Date; b=WGYJSe8XfeR2Wh3fLM6kGTNYyxl00NfV3fDWkwPe6l9ZlfZ+VLVpbZYuRcNtMjD8wLxfgcUj1mNjZK8DHrcmT5VJ8A6QV9tCOHvsWWHWjcccnZJcB4IR0mJ1rc7RzweVIA4nHxXBHnvKNTtJhEq4uKCZM6i5lbX0sLCFpo4sPdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQZa1Yzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQZa1Yzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CD1C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739004353;
	bh=yHxXbc3VPYTTqnOwrKOZ+DS478TlHb/9MHPX1vjypRI=;
	h=To:Subject:From:Date:From;
	b=dQZa1Yzw5VwASAumaYNR6/XCOrcbt4UJBU34cauwWMcodQc9GnT8cd3dGOgq1CP38
	 Jd1pzyyU+5YTrzp+Gva6MY8cJruzS5AdazHMvil/uoq5ipgOmpMuh12oNToFTn9cJb
	 TX4iz3BD2LtOz/9xvZL3Kl+NdCJF2IR1QtsUUMYi6tyfoQv19FyXy5oejEwGZWZfj/
	 QK8lgqGXkdU1gIBS0XFzyQ5eLdA7E8f2U/x0jX9HmT1tRFqe4W37XpSNLP2RDvuIh/
	 0Px3iy/tcUX8HWHMf3Vdab6EunAJHAk6tFQqbe3H672TatifCIMbj2iVl6pZOx35nq
	 VwnOZMbzoy6Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF83C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173900435362.24265.12533988417983985958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1bb56252d6ab645ac152432c29f3a097d0b0744b7385730e1dcbeb16bf5ba16
Date: Sat, 08 Feb 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739004353
