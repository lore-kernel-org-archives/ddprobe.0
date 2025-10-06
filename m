Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36901192D68
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759791594; cv=none; b=Pe/DV3b6K/JzmnZ5TtefXI8X2JT7/94aajAr+bNgLO0uWjG6nZXTGbAny1IB2uaopifK1YR9QqyE5oFKIYiSrV/iuJ/u5HF77jDKMyxRqEZCtU8jwt/5BYGE57zrpMXr66dKD9kjHd7tpupnzPDyv/K2MpSSEoJPsHJ8tzRgUVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759791594; c=relaxed/simple;
	bh=SqUoHyECobhSBVWupFdO7m3Q5sf2Xk7NT8NjlxrEaQ8=;
	h=To:Subject:From:Message-Id:Date; b=Z+GvK3//g9ksu235JQWQKlkAapEtFVeCBrA2dEItvrJL4LqSyT/Mh/RdiKShsTSzxgouepWBIwVXCl0RMLsAmQ3w8yAomlGoVOFkN3LMrY0fMX3dLg2OYsW/8FPTfBmglx7mD5xAZi7PeoXnUuWZAg5K7RTcbBJjoA7TeUSMSkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVlbPCHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVlbPCHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F62C4CEF9
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759791593;
	bh=SqUoHyECobhSBVWupFdO7m3Q5sf2Xk7NT8NjlxrEaQ8=;
	h=To:Subject:From:Date:From;
	b=NVlbPCHVGQkPmQuo3D6HId3cIibXbwkg2IoYvHReBZfOQ+Lg/D4/XS38gE+cvwBOF
	 RqWhQvKZbAcD8aU2lhi2BGB+Kxx5Z9agZ3Ijudg793X9NnBSVl2QabqkJqzK0KhLWj
	 hNpvioEMEZPPd0VyFH5LSNqn9HwxrznXf7Gu+IGoTBkKzavz4Mlx6fOhc2g7/KCKUw
	 piUUr2X6X0kyLV8JfKtA0sxxJVdjwlKJNYbNvSk4a9yBx7x2pCoshmZuBZEfTWnIFA
	 ZczClXRNIDTdG01ARMM9MPiHYxpYamdXWI6j4Dx24hRtAlUWwpzcqO4HQHen3TgY7P
	 FRbNoA4xU1wNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD4DCCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175979159358.13154.16007901467220048463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21024af7bdb08e2e77e5396ef0773d4b2291a1e5cf4da307a01b5a0f9e4ba7f4
Date: Mon, 06 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759791593
