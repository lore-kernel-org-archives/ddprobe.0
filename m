Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10ED63B27DC
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773309894; cv=none; b=Fgyp4KrLo/0g/iyZs0gL4NpEYCg3IPjIDnr7wQShLKlAj2SY7HDfbSh7kg5oW23YCU8Y2I251AYYEtvIH86d5fMMqabL36LvhjrvR2faAgR8hU3FhgejKB6YypILQ1l6Gh/pUxxKofU1FqhLsdsyL36rsI6wQRC7UX+ygUR9gCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773309894; c=relaxed/simple;
	bh=oYyAoHrc0b1NUB2XloJ193owFMMQtIQeWNGxwOP7OC8=;
	h=To:Subject:From:Message-Id:Date; b=gzj1fRLMV4M/Lmrp1Yshs5hF/astKvwljCCieKrWV7mOBm0fffEP0+bVk1G5GzmytDq4gQWT6MfG45Teg+3AcBc+R/KUIcMQApwPzKGpNQOWw0xPBcpC4J5Xzrwm0SC0Mge4+z88GL1DZHjiAGjTms+EwTGVK2MC7JT9hUFKFQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gngMdCbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gngMdCbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FE6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773309893;
	bh=oYyAoHrc0b1NUB2XloJ193owFMMQtIQeWNGxwOP7OC8=;
	h=To:Subject:From:Date:From;
	b=gngMdCbvLWDFyfp95Lzv7ABqXkvfk4zPIFyV2oF7/7U1b8WDnKLTqsmbMs7p2FQdW
	 4K6vkW+Sy4moRjWfR25AEx7HhcxFzBm5nvtYhIcXTsKbzjYXC0w1z72mjIuFDltmFe
	 VLYhnmu6+aCsm5BD/VfzF7qoU3s9NGWTghKRYwwTbP5wsmu389FQxS03kqC4fhxe7N
	 639Io6GDLfPMDMGAc7alPsGJG5uGOYZMLxBp1Wa5cezeHouryp7XkeSgNmTtPeL5gx
	 erTfVGNto/pr841HnpacSMpwX2+iy3o+xcIllhSEpFTu/0lraT2uO9UT6F9JgpD+8X
	 GPrNb64Ow2I4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9325DFED2F9
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177330989358.24807.4178494554167471461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab424264b87c7b61230f428a8ab08554da29c15c1291f91b7faee7b9aacac0fa
Date: Thu, 12 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773309893
