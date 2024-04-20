Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6A0134A6
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 08:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713600623; cv=none; b=DxRS2/k7mW0Pj7gB2/xtgzZGVBql81A+PKBovK5esHWge/vIfgf9D6sLNESjUZDtFbR/0QubZnfyXYVPKDQE9TFexHTA+azjLdf+Bp3CEK2/0K4Srhn76wPGOs31Pt3B+CUuAQY6YN9vMlssK6UXDNwdFQuf75nmM+zScJBVEls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713600623; c=relaxed/simple;
	bh=AeHjMjuCDGBTg0/D+WIapWw6H+UBmhgJevb0RLpiEac=;
	h=To:Subject:From:Message-Id:Date; b=K5kOna1sB6y1QUBTqk5NnfruE/Bsb8TIK9ak7NbM5eMJWL8VkGC2ZRNjXtiUX3+PWqsvuJOipZmRyf1re5cvZIP0KQ8VqcL4TskCyA4oDB6ejtKLEpraRIxQrCGVSjcLag3/S0oDmBpsxGEHaQiLMy1PagcM9iaqniQCXHjLIZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0fuF+0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0fuF+0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CD5C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 08:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713600622;
	bh=AeHjMjuCDGBTg0/D+WIapWw6H+UBmhgJevb0RLpiEac=;
	h=To:Subject:From:Date:From;
	b=D0fuF+0N+PzgAc2Eka264on0LNcwTerPtzU26ysAABn6B4t/DX9pQJrtvUzuOesYo
	 9rDY+V15s0dWyO/yVHTAWEBuS7cSv57lMOHPhlpCN0VO4lEQBzrknICghxaC6E6E4O
	 tvhDc2ncfBiG7qiVLxOk84ab6Y7Q2Z7c3jNLpPqizsZp2xCM+WBZn5kx9rcONU4tPJ
	 g7JklnmUiK2hfIFwhnDa/CfURuMam9Jhv1qQDCCn52AK1UorhjSy70+rpD4QITWyK7
	 aZ7zrfgW2pThc4hlu44s5jEcTOc9OvhFW7YmrF88BO7odRj4VyDck12JB/puDdT14U
	 OHiksoDv0paMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1399C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 08:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171360062278.17759.17527727525584469906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e23ed071a98c0637d7b503282e9bb776591afe29ae880e72d472bf9cef76c03
Date: Sat, 20 Apr 2024 08:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713600622
