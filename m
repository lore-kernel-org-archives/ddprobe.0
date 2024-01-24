Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 011CA1350FE
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706131097; cv=none; b=i+fl/c2oDolPrqJqUSQn6iVSAI8Ukzt5hMyGOmyBaSNrAbrkUQ8zVmf9mmM87OqEIJ9WFf0+u770tUBnuu4mG7C5LGVHWq3AwTlsvES0fbd6VB5S9oKt7p6O7cxtX0BRCcgL0p7+OevJVcbzinyXXZLpN0Tv79yMLbSS2aUCEzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706131097; c=relaxed/simple;
	bh=4GGEK6C4yoOzzB3BJ9dIAGIZvw5B3Efv7ZweVmfsDrg=;
	h=To:Subject:From:Message-Id:Date; b=SgEIu/BLAFXLAg77+kWMmWn3lfAUx6QLbXkV9guvrgtvljZEVk84ypQyLamQbUI8JLRgKFCMvBY+98mHUhA6ODk6zByuK/IfxfACjLCJbZmfZUVxg9DUvYjS/TOfhIhYOKZanoOcPUVY2eepBXWLciQpNqRHX9KJwE3LEUNmHTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4+W1zcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4+W1zcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76321C433C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706131096;
	bh=4GGEK6C4yoOzzB3BJ9dIAGIZvw5B3Efv7ZweVmfsDrg=;
	h=To:Subject:From:Date:From;
	b=W4+W1zcHvudzHe2whRxpN2N/lXu0QpOAp3UHXXejaKFUDpfX9MON1U6oqNstuutW7
	 DMONO9F5NiMI7GqEESXvnTSGf/eDNwzDem/ZTDX98o+K55YyWm0nKfhOftfuwChqyD
	 nJ4hxWp6Ao9PJv/2/jJJTR44V/3D2gKAdKfo9msHa5pSv4dWhMhhtiFxaGFFx+ZNIr
	 5fx3seuyYZnSrDVAEpPpJWIuBWp/FHIC60wiy7PGWKeShHB2PRkeK7GbUwhfJX/UJj
	 lBXbd0eOQF1oHmySgZCvlnFg5eiAcXD+w8EW2FcevP2g5VGVPoh3X/AkGMotpNkWWL
	 R0G848nVTTU8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C158C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170613109637.8782.17209396567305074539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b880e393d52346ccb70fff597fff4dd3cd748ed502ce17f49f4c2dc2b148d01
Date: Wed, 24 Jan 2024 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706131096
