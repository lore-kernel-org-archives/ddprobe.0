Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5E3152DE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 20:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714075943; cv=none; b=EsK05JqAhMCQwIcFM2khFCpYsK37SXSUSODH6Z7ePm0qQTZ1YEqRjGGzuljwSrXj5ZNKwwPiHYP/h+IA1T3ILCd8d3Lt/XwkJV71jD4fYD8frsfQiJQlCbtGirLzMi8nxR7/AWFDSNokPxENg3HsYJFqwD5kc2B1BUnSK+k7WPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714075943; c=relaxed/simple;
	bh=Q8+tac3JAeR+1BJPkvylE7F/ar9K+gdIG9Gm5p162jM=;
	h=To:Subject:From:Message-Id:Date; b=qksrtGVGBqqrXF6LS1C56VRJVU79eYkVxLFZcgUqmbykCh0nLUWnKxtQvvfrLcfFefyIVE0S+pLUbGqm7W9H7JzLXhBh4dJDCZ/LA4861x+kgt5fepqo0FEvQ6DeVzowLKtRNWBA8T2CcHxiSrjbnRR3agM5P/Alaev7KJaFohY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/pmvXxA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/pmvXxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2537C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 20:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714075942;
	bh=Q8+tac3JAeR+1BJPkvylE7F/ar9K+gdIG9Gm5p162jM=;
	h=To:Subject:From:Date:From;
	b=Q/pmvXxAmKxaiE1Lzu30H2xMu5pS3Y/+Q8+Qh9DTWRYVW3BNuBhH//XAm75Cj6vfz
	 Z/o9RnKxOQf2wCnwMiu9U7SnNQp8q4S7RWY8QaNhpvu4Ev2xEsVHkiDCVXdxgwqmxn
	 SSjLXXpJc9IkQWj7raVx6M+Xf5buiSg/kNKvxK/kXRCLNXBpnkxYARGNm8VkAwYCmW
	 pIpngPVX1mcqBSuD7cRn40ZLmoUa1RRgdKSkaPNUxaSFy9+INFGzrJc4WhO6MS9sVf
	 iGfp8sOMElwzeghqQ/wQ+7fuBNkl9/Jd+PM4kEHK5hCVkAHJoVYNTS1/1xFEwRQxyV
	 72VOqPQ16SgTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3CCC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 20:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171407594277.8816.8787705491788833656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7114172996b2edc4019ace1f4ce28bd8267df116fda9af5c86eb3ffa50ed6d85
Date: Thu, 25 Apr 2024 20:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714075942
