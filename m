Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2403126C3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762244394; cv=none; b=NrKjbtFBvb7NuxStdee/FxcJiJrg5QUJm3xGbZI94Ky0NQip9Lmw5hHtzaDUQ8GywIhD/2CBISJi1KcMgMOjtKNYQ7wSR9XkPKKG2+Om3M+pUcrNiF9GgJS9n/sdNf/yDO64VV5mggY1Zpi5iMwY/roIF7VwLL/cPZfkl1IVM2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762244394; c=relaxed/simple;
	bh=l3DxOot2U/BIR7Lq3lDzh2UAsszINU5+WXf17AvMys8=;
	h=To:Subject:From:Message-Id:Date; b=GYiS75UsuDgb0TuumzlGzwm1apxIlxzYmmRPFpr234Ngalc1u4Oa9QQlu79f9Y6/QfW7z2Pyz+I1wyQVOQAGwgQ3GRvrTRyByYcDFXC/pTGeUEGrcveEAUwUIzhEVdGOUNd4PK8I2mX7k1mvDk+WaDkYGM7QNiT4/3dpGgwzoCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtwvWBlP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtwvWBlP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CF9C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762244393;
	bh=l3DxOot2U/BIR7Lq3lDzh2UAsszINU5+WXf17AvMys8=;
	h=To:Subject:From:Date:From;
	b=NtwvWBlPHgVg/LHKdxd8Xfszg+pL6gR0OImNMnKkE6YAeTEX5xbhlQBmABdqPSNiu
	 LYqbshM3JPOyYZSS6GNvF+CgzruUi1t7TiD8VjXbl2i1DMmLVA/jIFWmZjhd7OYd/W
	 qCZAbEoXbNu9yvbsb9c/l0DfMFkw36W8MQYBBA8+VIsT3ofkpq5zilZrBf2jM5+61X
	 4025J7yAIQ4youS7OxGN4Ih4T3Uq0Sj2aavldcXiywWVNKJ4n3QvX8KjNaV/zmdd2q
	 FcLvBmJwwPh7xTkQ7smki3pI7jcc5cn8FrYh1hGhdIl63VuFQ68eNzQ60E15mhljfy
	 ocv0ZSG/uNLOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937DDCCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176224439359.8875.18252494850764729542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94376c1e7a9a3a0d988e9b59306d2d82f8ce638622129dd8c154663f8f0db5cf
Date: Tue, 04 Nov 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762244393
