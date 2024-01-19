Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6264F214
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705700897; cv=none; b=sBzHUzNKM2Fstxu4rTi2M4Un8cwu0McLzM4MEtm1xzu1w39APZ+83BiuEwVVMWRPAEAoDvzK5SCod5dYo7D5KpawTRM02ZA/E4dlOOawza3gcjZCn1cpVueQuUIQuCSpZSJXBd9xSieJMv1e42woDY3OzZJTRM9//cifwMrG21g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705700897; c=relaxed/simple;
	bh=JzZKomnTCVAFH7LenAVyY9g/8WnkwonFGZSYwrRMASQ=;
	h=To:Subject:From:Message-Id:Date; b=HLATKWvS2UFGQXkaKsPk0sItFFnzBI+Q7nhi9Ay7IeWSsXVnt0OjJn2+cKhjhgsF/EwyKDa6jdRS0tCmjoaH13ga8UC+wJNZsau5L7pDJDhVQaS0j5SYrLqpjSS20uKfcErkxQgX7MpvehNmBnTw56gnm+I+vF7ICutYM0n2H+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdnia+Ss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdnia+Ss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7785AC433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705700896;
	bh=JzZKomnTCVAFH7LenAVyY9g/8WnkwonFGZSYwrRMASQ=;
	h=To:Subject:From:Date:From;
	b=qdnia+SsurcziQTOPyZ5tFKV7y8n0iannysiDJmbC+gxIL60T+ciSqwd+3v8l4OLw
	 1AQ1N+8Gdmav1iwt/AsRkJCYWEwQB3IWRfPjVhQf+iLhJ8yib2Ci3YjTtyZQ9uL+es
	 +Aj2A39ObW4n4AjQiM1F14EOJV8YS8ZAwuGVrzoy92z2+orpjahoOcFtzAB+8vJoYF
	 W9C2troXyFL5M2VOXLvqXeEJX5E2n4EevncQrjODsnKjY7nODP6lsK7a56nQoQrtHf
	 1BuKJBVQnq7h/2DfGlMDzxN9NdKDARA+iX1brJVq9lwHGYBxq1gsuiorPnpqFIoIH6
	 yBJzK+HKOGlAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC89C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170570089636.4653.5200714998302320864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c46c1c276f42bb5621221e53b06646eb765c3df895dd00c98149a33036eac83
Date: Fri, 19 Jan 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705700896
