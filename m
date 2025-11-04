Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BAE1E47A5
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762237794; cv=none; b=hhGnyLYs2RHSegdYMfuDHaJAcFY0E7NFy9RBK27785J+6tzOdBFeXhrOo51uYoWcYtd6zc4r0S+/9gA/efyOHjbv1Uk71BxMra2YarlmGcBx6IgUeEBVmTsz7UwZqL8+92lqDROMmLBU8tpnkgEN2oVk4283qtTy8BM5R61JJZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762237794; c=relaxed/simple;
	bh=XqC8MamOGWILxuvEATX6/F6hOcJ+q59a0C8C8kxu6Dc=;
	h=To:Subject:From:Message-Id:Date; b=oZMjrG9GYlALxawQBelbFEsZOkkyr4DnYNoM2RHSeZzc+TiFOmYkcAHQAuTdG/d035rfsb84e2Y2eazf3+44bPsLf6YgTQ+j0/2A+oHZxaejLMuEJwszNqwlQI9CUi0bWUdzSStduihHGreb0YcFz4Y61r/ZSCz00J9NNSaAyVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgDUBch3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgDUBch3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E91C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762237793;
	bh=XqC8MamOGWILxuvEATX6/F6hOcJ+q59a0C8C8kxu6Dc=;
	h=To:Subject:From:Date:From;
	b=RgDUBch3ykc7oxpKdnkYeOjRfLfkLARgfmkpe//FRG+VMmCeuaf0taAYuyPiUajzB
	 3RIhG/VgpnkQkeixCWZ4fgFXkGC6nXmKyIriLQj6z4AQKKUqIkI4oZ3aw4q+xBa59f
	 eqjW92reIt1GY6ZuRO9MergcVL2yJ4x5to2t2ebQ55rtNzow7eQ8axz+IwVrpHLSvp
	 k5A8bl4YdUNkEXFG1nFdfuEaFpxdqvk09T7LFagEbvx5wxWoebyNaurWF9DjHbim06
	 6Z1VHIzXq699gLFBV/eCxJ3B/FeqJp5/dqF+lHnJPRSaat/yQKb7BsAV6XoGST9V7E
	 DdPlcCyvyzsEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C60CCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176223779360.32135.13485510299234026839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1386a01b2153ec238a6a408592c438d9cedea73b07bb322d3edb5cbee7da8f4c
Date: Tue, 04 Nov 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762237793
