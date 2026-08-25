Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5370147D460
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787664634; cv=none; b=tUTzd1LJ4g/jqrIshx8HwdYaT5Dm0zveF/dQPsUK6j809gX+Ah7aNgvpuXA5jIZpGnjhb/Tdy+djPi+LC+oZqayPjWEIdcsUDSwGxH9v0EErJGkNTTmHnc+kkmIFbiTMapOMo/UK0XZbz7y3ZF+wukgZx0Kc5f8nt0F/aBqrYFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787664634; c=relaxed/simple;
	bh=npvGfkirFrpAj2n8khmubSwjajVWIavGLx1jwHN8iOA=;
	h=To:Subject:From:Message-Id:Date; b=d8CidjBcvdnAuL2wQ0qJ5QkvbYWPBECk6qkwmoNFFz2F+/KRiYacdLOfkqd4HbUVNBdSF27Ylr7R88N18GLIe18+jUBQQL3v3n+V9lfoXMOixNKUQAmpsMHeb6Lp7ByDqHtAYmZrwQh4VV0165MpVFMWTJ8Oi1sU+ciE0KGlc5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ux4q+iBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ux4q+iBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D46C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787664633;
	bh=npvGfkirFrpAj2n8khmubSwjajVWIavGLx1jwHN8iOA=;
	h=To:Subject:From:Date:From;
	b=Ux4q+iBGAyfReYpqRixDmT0TrZijjvyk0cMX5gtd9ohVkcHMTvlntscRbl10YRVzR
	 KpNIm3Y6AKMzOcIrwd3xPp0gPLy+H/Vq8NTarqKl/s4iEr2AiTZpXt0QZiZbw29KWe
	 yPbcDMnIoWEImCARirFTBlr4yivNEmcim/zrBeIIO9PxbK9es6T6DoP73HyJ684zB7
	 ykKIujEvPp+FYnDMYNtyovUclUvzqEzaYFUoL9PqKgg6bnt6umJjGExg9cMhJXCtw/
	 0kHm+smt72uUfPDEtkFicXCEX2lKHLhQMIiDXNoE2HyW00HCkyP58rrr6dT62y0kW7
	 Wfbkg4EMzZtUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF200C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178766463370.22699.5128250109602118522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1929feaf03a6f3fae2e38daea039aebe98d74eac1fd1c18c7840d916cbaf14ec
Date: Tue, 25 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787664633
