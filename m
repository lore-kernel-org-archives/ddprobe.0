Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E4729B23A
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744373994; cv=none; b=MEqxFcXw0bt4YChH2lCGwEkN87CgXzd7KqQhBTJkVxLg5FqtbnEQSwrUyORxRM+8Qwnxdp7SWqL+Rr7H1rFnOsx+C5WnRqaGWVSHzowP94gftKOR2qEJrl4BopntcMdd44ITsaWm8Zp5plJBxPJRd9ey2qWL/0H65RYek+ibyxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744373994; c=relaxed/simple;
	bh=vVH+nCCXFy8BIyOPm8IfeSEOOIaAnPWeWsCHKyXRrZ8=;
	h=To:Subject:From:Message-Id:Date; b=N4ugrMN/TsphNbzJcbo4VBdmefVPO8/Y5ZXm7/J95DmVE/sZPwT4cCLpE8mM3N6bYByZ3nexJkLXquhR8y7GxsaV6uSbw66oJzgBJSqeLzXfNBLS6cXaTrlr0P/Dvwx2Qp7F6/pzL3Bn9gaTiMu8SOfdF1GmgUrRLXt3yPpT2Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXwmeOHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXwmeOHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0D1C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744373993;
	bh=vVH+nCCXFy8BIyOPm8IfeSEOOIaAnPWeWsCHKyXRrZ8=;
	h=To:Subject:From:Date:From;
	b=nXwmeOHiuhRj7O/3Xd9eC44YbUPaDHW1gRMe1LPIgP5ls8WGYy0Zv0R1R6Iopw8Ou
	 KT5Ro0Qls03tHcQ2VeFkfSu15BXYZUMgiqb/QVui43djJG9NJWP8IMNzSKhAGM+4Kk
	 gIJX4tfGBRKeCPum3tzNPwatELasS7Tcyab7iip7Wr6ilAo848JJFa0DyoF2SwbIro
	 0l//peifLjmRsszWjp4YIS7hEO4qsXmBq9oCLur6zBn6QLLuWRV7BDOh1MIkVPz4zX
	 /DEez1ZK3/iJlkQjV/NtT5ZAVl7OYswBkkRTNmDTLIgkjZjL1Wsf7u3yFEOU9UP2IT
	 yGAYH8D9GfznQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADD3C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174437399362.6696.3593177915339512528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fcfe0bbfa548c2f2c023d1a6cb645c13d3bb196b0625c834e273a7ab9915736
Date: Fri, 11 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744373993
