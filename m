Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B0D1D416C
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754395194; cv=none; b=bEV+xYYB/EROLw8nr/MtV9qlpvx+YO1oi9flnUA9LnIPRR3SDTcNcif0NZXwDSiAV/6AOCZj5Q46DZfxrgOdP1lmJ9VWh/S5VhS7OLTeJX2m+0WPkhf+fkindPSad9mpWuKtw2f7pqu5GS7CZQMib4tAj0tO2tYnRlbcdkKknOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754395194; c=relaxed/simple;
	bh=wE8gvE4zndjTiu2aodW+cvaN/mF5mhzuWFtzTc/MHnQ=;
	h=To:Subject:From:Message-Id:Date; b=BTL4HrtHOPY8e4qi3nZWVFAklbyidWyoN2hfANWvhFbGqSTO5onqosLh6+Uie6bzUlI8P5GWH4Rn3yIv5az8sALcuuQB0b4vNYGYe/hTBgWADYDs2DsgL+BlCCmCkgUM52Sqj8Vz1sKZW3eLw3pnDP74qZ6R7cecuArbVH5JHT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOBXI78Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOBXI78Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C60C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754395193;
	bh=wE8gvE4zndjTiu2aodW+cvaN/mF5mhzuWFtzTc/MHnQ=;
	h=To:Subject:From:Date:From;
	b=vOBXI78YlBxYnbf1S9gzkiSyVtiB72ES8N/YsKPN0FFCB7mH+aoVH/AmUuLxbFWvE
	 LXE7GGTLtC27w8jUELxl2XXsM26WJ0EJf38Ab9d/hZyBpz0r+ThCL1bq1L25TiTR8k
	 q/Y2R57M3cXVP4enwuc3wrdMkRoQ38SZXaUJuidC+EnROoog6ZP39do3WPHILFp3F9
	 JpTeHkGaEikvVIFleoxWPXCXLMwdazQpQnZ2T9oBczQVe4tjpIJYpEJsV76XTsbFjA
	 5lDl071jAasCG2KVt2C7DRph1aAkSstZIk+6a7mQf88peBMmE3a+fCxdutnZ9qUYPv
	 H3J8El+HWk5lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9458EC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175439519359.11423.13602303185256322481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45bebc200a929615a9b237ffbf2bb2c92ba0e79777f0d975200d314d631e0c58
Date: Tue, 05 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754395193
