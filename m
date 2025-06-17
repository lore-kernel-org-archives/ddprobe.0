Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289391FC0F0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750152595; cv=none; b=QkqPeJNvcnVcY9Gc3pNtwa0fPaDzeYJVxQaxNMzxOjaSkIGSWkTJujqdvzDR05k3lXJL5ggIVhl49K058Z9UaIrDI4vvC9DXAGxzprZCWRvQc9HWAATEbkJ+61IXEA4p0ZXE7dDmVd+JxtvovQo60HpYLWD3rpOGhfr2yfFuOxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750152595; c=relaxed/simple;
	bh=FcsUisjKlWFV+Zrk872m3x4SBq7zhtLgSaLykaHH9R8=;
	h=To:Subject:From:Message-Id:Date; b=e3ewGGc8aIAe1VkOimnwmgIG3MrB0JDY69enI04drvdHgthkvY1kzGrOKzmfbNT/ZvBfAvhDxAHqiWDkXoBV+fsXlDeCQsnIF/NPy/+EsEilNRZAIiKhk3UIMtNinK7D61DPDyUmHi/OqzWIdtP2yTQAj4Jqt3YOZS1UBDcQr00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdB5Dl8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdB5Dl8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAD7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750152593;
	bh=FcsUisjKlWFV+Zrk872m3x4SBq7zhtLgSaLykaHH9R8=;
	h=To:Subject:From:Date:From;
	b=NdB5Dl8qdcEZerqwH0sdOW7lj38lSXWXkGb/+uLN5KZ2aIzBGWO7v644MVcLU7ffM
	 PP5ccfqq50PMOkCdusUVtblYKMhyXr7oR0FW5aVpZApMr/0zjWIAVabp5IzFaTw75v
	 P92NUKV2DZx9FNNBuKD2PjslyCn+mvVgz1lMwoIRlUcsLOsq/3UrTwxil40HdjFcA+
	 qPHahYR4UVZWe4mqviYOYVDVKP0eiOrFdmmNAkVZznKIwui4nI3Tw23TJJd58NDnU4
	 ElW9/jkElR6eX2pvZemDjyxeCn+j3TDo+xr+SkKzXa3hA/vk/pRZTC5JJ0wH8px25J
	 4RZ8jIQvL23BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99308C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175015259361.9374.13123868007128969645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec31e84fe2f998b6223fa272e0af61b0146cdc4e11aa8d42426f3f90ae56c0b7
Date: Tue, 17 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750152593
