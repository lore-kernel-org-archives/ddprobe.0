Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE441A6807
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 02:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783045714; cv=none; b=VMxmdnTex/J6XWt5RPhxyZeI7eBkb+cDT+WDAcfIug01sAOx59sNL4DakFMHFsWcGH+Onmmmc99CVN3ZrZhwJd6Om4G+UAeUKW1RS6YchWRHddXm9jnrlYmXHcxfwBQICF0EjOzJhTAnRwPA5+RPgCWkiec3/G34cQdCltwZm1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783045714; c=relaxed/simple;
	bh=NWXubj4W93p3KJesSvB8FoMsTC97wFY8rxVWDLrXjYI=;
	h=To:Subject:From:Message-Id:Date; b=GoZShlJiPMA2MMiCpzbN/FYCHyjOVbvHdKWwbSMK6MWNmv8o4fhSDMK8o6aycbde/WnWxMJgVtFMcpVCi+LfXZoHa3UXE+SthlfGOtoBePNcp20mJ2TVwZGVD99Mg+IcJg0MA7T8a5L6aTyOeocZrRuhJGuutzwbtzqZaTKS9KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdOr3QON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdOr3QON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C8CC19425
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783045713;
	bh=NWXubj4W93p3KJesSvB8FoMsTC97wFY8rxVWDLrXjYI=;
	h=To:Subject:From:Date:From;
	b=gdOr3QONHkUMEhBawunZV4S8D4ss5YDNlzKdCjLGNPsdShOM/63HddwxQDsi2Ouj1
	 WYNJiQhmj/CxjL+ejNEmojnB3ImmWkr3+UggxF4+uBGJ1NqfNgqab3rJxN/hBeLd+J
	 NOR9nKso6LfMjhQiBlOpG+o3b3XCWB9UJBdeAVuP43NB7Eh36G8dPre0U9sxIBvIni
	 GoyH3rDS101+sB9Zc3m7M1gPBDUPfbVomtsgkuKixkecKez+1l32n6LJIey/+YdjBT
	 8cq7nHC1gK51HEvaa53whF7A5Aal3DyHwt6ICroi02sWzIIXwDRBDxY6qLplV7ZPoO
	 4aF5OAonNKXOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF584C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178304571370.7341.3572086988291641017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87937d9f533e50f9c385bf22fafd5dcea9bb0b097b3e5c4350171ec320319ced
Date: Fri, 03 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783045713
