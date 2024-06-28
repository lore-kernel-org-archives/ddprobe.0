Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7514578C9D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 21:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719611663; cv=none; b=TLhSMzUOFHelIzbp84T7Y9Qq2w8/QRb/AD+9Wt/x5HoHW1xhqI/RQ4ZqnW8UwSDKWh+5RinwHGR2iLF63csds0uyeuyHjD/DNclm76hH0WggX5aYtT1ka89LlWHhBRY+6sKDWY4HmM+M/WYjBmTHPeq4kpJCOf8wnpeu3wwCn5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719611663; c=relaxed/simple;
	bh=pwpE/ZfyGhdq8sg8N78vlZx8T2UxuLdGQmtchKMmGGk=;
	h=To:Subject:From:Message-Id:Date; b=Ekz46Yj2lMOMBiAgcl5qlCz+xKmfubX4PXrLJbg9L2MNZsP+ZvjfpRxJ4p5zi2UyQoRJeDcJuBOfOL1GN9JnPZMkd2zz9YBiYK1MKPu6yt2jDSywnglLFj1UhhVyF6i7RIVX4XPb1IH5j3Bezet20y1BwPmibAq0QNUgom/Xdy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORm/8oNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORm/8oNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 019C9C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 21:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719611663;
	bh=pwpE/ZfyGhdq8sg8N78vlZx8T2UxuLdGQmtchKMmGGk=;
	h=To:Subject:From:Date:From;
	b=ORm/8oNxrsO8gDV36SYLwOR2LDmuRBB+zs4fxt8YgsUUTUcjRWEEpVEz5jG3MQPnS
	 PyVZjE5DxeobBQIM6bLcrRM3w6fsul+V8hsiKiTavs4Dx0NEqSLYPRJAicIuZ5RPxi
	 xtt9LLdYXtL2l5HAoUpZT2x4Ydsw1KrQGo2ZEJm9kP66XSL6IdnPNF0pFpPsSEqeUy
	 ScF3KoqrBaZMTgVR0IgwbMp9O9oHfK84Zv6usus5EBpqVtrxCCAUPo2JaxaQ3eTjBT
	 KEsGniT3DfQUhIdhCFsYN0GGPBcBnAm7jIm0VC347fkZKiUXNaX9pTSRkx9RQMnsKU
	 Tmm0moTPjo79Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF0CBC30658
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 21:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171961166290.31383.9039415636863351328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c413afe9b5c0a44db2de6b9fb19a5b9d57eb3e7eb9746342269613ebc95f0d
Date: Fri, 28 Jun 2024 21:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719611662
