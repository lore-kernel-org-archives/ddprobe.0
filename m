Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B14B2343C0
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751947794; cv=none; b=Vq+RlDebnyWNdGW/q8x80RytoPbmIZMvdpB40nxBv3OgJFdx8R5VTBf12q50rwLSvIZDlaJKJzXOoxVHkJpBSXZ8J4+kPwniRBBAy8LD4In4GYyoJmeLwIKuxNZogHWWayhy3e1yxgXkDnQPPWYBIoCS/lZuU1w3mvu4vJ8nKWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751947794; c=relaxed/simple;
	bh=+OtCeB2ljoHi/BFB+VZ8Yl5607hjFvq8PgmlGrr/UJs=;
	h=To:Subject:From:Message-Id:Date; b=OBas1wJxEYfhNJgGD5ovJKQuR/4LmEbmrR7AyG2n9TAEVH9KbzLEW/2n+ZjtsGis/OP2fJ73q6v/Z/bP5jrJ3ngsSNqKcFbddA8fLpc8+UzBFq422bCjwjUFVUYjD17KrXh9sNJA1u/gW/cT0jgSRCdtms6NG8z/skXPAZY5pFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJPU8OZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJPU8OZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CBBC4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751947793;
	bh=+OtCeB2ljoHi/BFB+VZ8Yl5607hjFvq8PgmlGrr/UJs=;
	h=To:Subject:From:Date:From;
	b=rJPU8OZYjxKB+j7/j8i3jybT3Qe8vx+f3bJR8GeuJHWYnNYum/E1hXYEwLR9Oh85K
	 wDPK8JM/Qn5yzCHLopJIcoN5TMO3SRTRssle6/DCYrXQD4nibOsrjQXmN7JZiNpBZZ
	 5GTp/BfT+46ArZ/3NVG+5JKVN9TSw5jBpNp5ue4n1xvqfLSu4ht3fpw1CIpZSeNJHU
	 JWTiSY3dP2Va7weyA+T+fCdKpqjcxYwN/K9rpzPVG+xKmZosrxizc+nupV6qphG5WB
	 5oV6YhYUnltEq5LTtBcfapwmAGlXctQNvtwzZNvMDhVPuC2qtjhPEsjJteM543kOJN
	 Cxr5BWJSs+L3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9195DC71130
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175194779357.25922.7219809187137941296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92161836f10f05d41b666ecaf4bd5d97bca12479866a9c6cf9cf89a7be2641bd
Date: Tue, 08 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751947793
