Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1F0C127
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 12:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713615623; cv=none; b=KVyzJaQPxhaK2uWxXVp24Q4lOmtCuPw+klJvPdCYEB0CLOB4opQ3J4adNjsX7D8DGWIL7PcAEmZy+cWH0Vn1+HUCC4jAeZq/H8Nj1a25TYxSWC8WYc093DdetMy3Y5ungHytzWAobgMLFQiEAbjEC6iF7+uR8jq104cUdPQK5eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713615623; c=relaxed/simple;
	bh=1FJpL+7nKRdvIbD1Ebdof/lUxV68dWAesaL1Kw8iVmI=;
	h=To:Subject:From:Message-Id:Date; b=LWrvFHVjiL/8PQwsCSJBE8UCqsQxCrVEBU51P6A19QPVs8mT6QWQCWupkuxO85CnVQljAlDosmuv6C8LuHtZB1GZ/Fw4NAbRC14v5ANXOExlvud70yIJtl1J/8PppcclVWjCHw7NinT6FlzH7fWQCs6CVkWJ+OYESucmV+yLiCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBVnZCzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBVnZCzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE70C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 12:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713615622;
	bh=1FJpL+7nKRdvIbD1Ebdof/lUxV68dWAesaL1Kw8iVmI=;
	h=To:Subject:From:Date:From;
	b=UBVnZCzvxSa4gptbG6/MoidrOH3PN/93RsM44z8RXAVIK3crwLs7Ucurb3IYOqzzt
	 SKFlqqfgQkjy1qbHMV31Nuw5zKhUAMt36qOFDUVmy3IMx3hFCTveMw4s/rDEN7oHwe
	 ehKKeeK+03L4oHPbbIKEkZ63pwWeExNH7HwP5Z11J59Z9jF0h5chitOhG9IlR89rl8
	 Q+uGlJxY2Ui1NRcKL7qnza7rkPJOfQr3HL0bn1sbuGJl7jxcYlJt/MgKriwFLlSzuz
	 g3Ur8eqCnciNJ/EQtIgiY7uiNq7vp+mWqEta4nO0ABxGlR4jPlcTc03jjCTd5aCwFy
	 umQk342Z2+eRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBDDC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 12:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171361562276.4764.2954227383287184944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf359d479a3c4fb0f863c959292bcdaede3dbc715e3f0e0717818c3b82f6733a
Date: Sat, 20 Apr 2024 12:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713615622
