Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EE0EEAB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759582794; cv=none; b=h3VqlA2C93MBf//+GFL7rjRnNJ2QPhXCx0qMPIAgiCbmEE2yiqYBdifzNO4KdKwcszsU6zFD/Hu8m8EbxYsJoMf8Q/vO565wcXiasSVDI8FoV0siGoGBPHDCQyXS0tYdJShQpuF0s1lxKbYE4VdOv/Rj26f6DmaRZHj8cpmui0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759582794; c=relaxed/simple;
	bh=gJ5AnKh8HBttqmfOnXUncCwEC5wvuAHi7Vigheqv1kI=;
	h=To:Subject:From:Message-Id:Date; b=KhJxIY/3OEpZqRjQ+NGy6vk2MAV1XSOTRvm7vzLrozap/puF0iaPPEjhClidNjuRDHBLf3YaMeyBNJ3C4dyp2xn5KvREsWbl9S/A/KSw6UihODN4jY8qOPdmGoP1UPZvouOnxIQRA6STmLVUj9ZWHMpLp6g8KneTmAr0aSumqYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSPVRRxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSPVRRxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3543C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759582793;
	bh=gJ5AnKh8HBttqmfOnXUncCwEC5wvuAHi7Vigheqv1kI=;
	h=To:Subject:From:Date:From;
	b=ZSPVRRxGI0gr/GLINXYRicsliEWmdG3TTy93SsPK1etxEEsktJisA10oWJFaPmXNW
	 TEqGegqNULcNKUjQ/hg9yjdGvCsSuPS23ZRhVpD3B7lXRuVweKO/qWrd6b4SkN97Lx
	 OPfzvVGtuppYnSJiDIK3XIYM0nkK2Pu1vlgDHwuENvUlvjLzJ+6W5f76vKFwT6t1hx
	 lpnoM+l1aF843OAnLJiEpebZ7PVjgpauSBydOms6bSAQoTnqQ1DtYS8WenwMh0vZJp
	 AHextHgUAqtgjDev39/RGwBAmOgJHMgiDVZbOFLIT68E9IFgqZmcU80jqFv4IeDgnD
	 YjP4X1pULYJyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95022CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175958279358.7533.12298794095861961521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1daf03eff3d5c044b23fff632c4b36111a28939a609a6647dbed7d78cf396676
Date: Sat, 04 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759582793
