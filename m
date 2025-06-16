Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB26520C03E
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750107593; cv=none; b=dvvoUrhruVJHkb7DWlpfVQiTlRevBfoabER5Cjx9eLgvZtY9TMIazlMBIv6Z2UipqNxMQZMexQ12kILXe3fHgdzT1GeYkSRSF+ty9Oxygvy2V2i4bq1gBCXY9aRhd4xCHJK6H0gku4CJSb6dV2BWQ28OjMfViYFyY6v8tzyjr5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750107593; c=relaxed/simple;
	bh=NstBM0iMoGUwRF6pNOg8a0HAB5r36AIehgtYIiciYyQ=;
	h=To:Subject:From:Message-Id:Date; b=JRpIlt+LpxmjUgt4n9mGUUpzK99saqJLnL7BlM2p35JvRxbGRjFR3z4uM4rmqByCAOa04PMm+Nv0gxjaUcQngIPvNiZ1Iyyd6kJjK2ZI2ue8KYYUXpTPQZ+Q/8DdX7L7e6ijewnuYCDKIq2dr/id5+FOdFEojJNXds5YqS86oKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCbmpDxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCbmpDxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D5CC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750107593;
	bh=NstBM0iMoGUwRF6pNOg8a0HAB5r36AIehgtYIiciYyQ=;
	h=To:Subject:From:Date:From;
	b=TCbmpDxSOQy3mDEemipxdnzW8aldX03nYviSIajX+P9vhGRI41wljROYFWdS/mHuH
	 SrlT2l9y88gS36WK/jSojabAZYhP8zX/eoaYPND3d2V0cx3S+GcBQv77bVPl8edVGx
	 a3Zsr+gR9iWEhWGaHT+KsTXV7QD1gco0v4k9h1V2BSBcr3bh72nYVv5YU7n4rD7FGH
	 hcAcQZctQ+5gSg9/lTpFTV2x+Lv3S9Kmwl63yBGnaRUf5DIdcVQQRDH8INd0/9cakw
	 47cLE3zw9RhnMYpEMTOm0Hl7js/peaYxR2FY/R/fcEibC2oJ8zgcYL2MzdhSYzDkXG
	 7up7uSk7S8cEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC3C71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175010759358.10542.5343587284940774577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b762ddd5419123bab7f265ddd1ce1ecc1f7a20d546059482a5f5e89d4a7ce3a8
Date: Mon, 16 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750107593
