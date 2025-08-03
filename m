Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B871FDA9E
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754254193; cv=none; b=ZeNFZVJdKdU/yPqnXoZrjF/gI9SSsKz/v5W52N8O+94r6QWinMYGijUtrVdGJuU2rFJxkslt/H6RSh5t6/mxs7P4k17YeyuWETiHc4gj6uo9Gid5FjUBlXx8jnB3SoX6ykdjkAsVHjK5IFIvWFffDYA/v48QRZvZb029NdNXYzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754254193; c=relaxed/simple;
	bh=fsgtB8CZzi9KoElVYyF7IHlQKkCx7aLq/2GshHH+2vc=;
	h=To:Subject:From:Message-Id:Date; b=bal92ZEhcP3GZan/31WW0UoAm77qVee7tGgik21cX+7dgUzLifC48v+t2OB7rnR1UFou7gEV/BXeE8p/W9QKaE8QV+Y3Scz2utfxkqf+uW31BGVPdAjyiXBSTBfhQcGWvbhQ8BAsaoyspGmzBK5HUTP9c1FE8Omc5+6y//0QWvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oL+vl0YM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oL+vl0YM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3668C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754254193;
	bh=fsgtB8CZzi9KoElVYyF7IHlQKkCx7aLq/2GshHH+2vc=;
	h=To:Subject:From:Date:From;
	b=oL+vl0YMmuELtxTZTouTiZNpYEfy01nB9PlZ/9nEGEoxac8Co++mvneKL4IPuEq6X
	 SgOWYuvvyalgpO6z5bZuUUIbCwNbPUIxdpLpHpdEM/lkOt3s2UkVWvKbiIQpoyDIPO
	 W0x7avPF2gtQLtG+R4D0XOnhbeCBxEOv0QrBNZlNKslDkCzOvVedTb9/NUvprF6Fhk
	 tfFRa6eANYxQf4uNIawPLxAh/q1S6qj5tPmhCAGsoypIcMC9rbJK7I4EKJXrpvjgZD
	 bFZFrXS2pbj1qcx3CTQfCEfJ2iylQ2gc6eECxtM2/DZXEB2TAsShpTpxdMBdxEhyub
	 brEdHYwRK1CyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A3EC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175425419357.13485.8560318294084831449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 867381ad599729d6b8a0beabf6ba563d812a42d98ca5f2b3c1efacffa0e5fd41
Date: Sun, 03 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754254193
