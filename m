Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF7213777E
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777638453; cv=none; b=ge2LR0OmR4lBKr4OgfqOPTPOHkxJVVcBriPeHS/iYwoSVelWmkker6vxXAiPMxg4bx8BkaWCDCsus9exlYjvI0L6Hap4W+AFQ0iRdyS9Cd+/TfJC5IW3w95/Hbmex3aV1d1vgpZeSIGssfXSzLLZXJUKpDPSNp1KL0jnjkuBfig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777638453; c=relaxed/simple;
	bh=+8KUzr5OEXREg79prxSy3KQyG3lmQtZfjITPkDPSpls=;
	h=To:Subject:From:Message-Id:Date; b=LbQVhhcMWSuEq9Ec1Ogo3Oxn9o5j03GoAdT788V7xxa06VWIWyHS8y8bHx0b+EdUJ0XbllRKjAnpVIK6dgCiaT2U/Fquq56I9ph0oxUkWrTzqN3pgO/+ndeaiR/0R4ZroIRAFVIiY33hh14S15wGEFKnhFbnxVXXF31IzvkFpkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMOufx3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMOufx3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E54C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777638453;
	bh=+8KUzr5OEXREg79prxSy3KQyG3lmQtZfjITPkDPSpls=;
	h=To:Subject:From:Date:From;
	b=rMOufx3GM4Sa65z0df//en3cF/nmo9IFKvp97cb9yhDHGDAcsKbqrJiCaMGS9NKSh
	 BrJ0OdwYo0f2UdlKM1XfZ05hlyibkhD3kDbBIwVJkcPeyG/GN3Uv/DDzc0te6AFsf7
	 Q5CH+Ph+48YL/CWMunOxRqlv6AGPzwhf37YLxJmu/U9ZVm4RGa6qwSbuw/mv9thYnq
	 Z76hP1cjCyOnwxbDdgO6/RvWhlVPDSekFTIUrPh7ioJa2IwYRZpiEw2MZ3eq2jBq0k
	 Qi9exEV78f1wxcpnF4N8ZcUSVMxuBUt8CKMZ7lRFQSo5xR+GvJYTuSfRxEN19OM6I4
	 NKlqmyycqwWGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A00CD3424
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177763845368.7405.223200358244251952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcd927886235327521ecad7027121b30c7708d57dcc655848cca17d0fa5ff38a
Date: Fri, 01 May 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777638453
