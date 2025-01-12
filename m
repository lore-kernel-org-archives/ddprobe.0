Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298F029D19
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736715954; cv=none; b=XX/6/hjo1IyF7kOC0fJfZXZP+mFs8R3zTOZ/exUJr0jyR7rzl4+s/7h1ibs5KLSK1vszhZxAmayFNnMnIbLtp6VR0oDHdHNpurkrx8+O10dQFB3N5DmW+2iVKZiVo71q+wgC/lxG4Rg65sc/FHwXZiSN1UX2rb4o3a1ZBdV201E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736715954; c=relaxed/simple;
	bh=M2MATE/DtuYaLMrFLaW2YmOGx+jSAdIt9E5o3SpRSDY=;
	h=To:Subject:From:Message-Id:Date; b=qlDOfJiUxgl4Ye8HNU5V9exIS5UccliN91Yf+hX11SM5Tqod6PLUBkPX58BGhz/pC5HQMP++27V77+H47Jv8YIBqEeZ9jxgzeoGripBKW+yF5L6o3GSt5PgzBehpbXO166IwPdIEcDIIRNPoW/Z3Aft/GQSKFQ/vqTXKOFiC/q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8ooQ7cz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8ooQ7cz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33FFC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736715953;
	bh=M2MATE/DtuYaLMrFLaW2YmOGx+jSAdIt9E5o3SpRSDY=;
	h=To:Subject:From:Date:From;
	b=S8ooQ7czXqJs1zuUnlzgQAV+/QdZQ6uHvn70ewhOyuvKAfTPIL19B/Bim6rin6ort
	 Le3r4J/xoWTFRcKSrY+evlNisbVm5jWOVMCxVHW1dBby9sK/ERonTY7iZzgLRuPfNa
	 zGFm2F1zprRZbWH4YTOcqmfIC3STlXWQwuRdb6H1qjEStl48997JYS2aMLsKRY4SCm
	 yYqbbBJsCvwiiDLe8X5M1w6KTrM3X5LkqU2aVQ3a0lMU8QzWpui+2AXLHGPtIusAJt
	 Zi+7zh+wuiF5n7Rfpv0PebKCDGvw2GQGfvehMrv9J1LMbKCNNF1TRibAqzZOXenqlU
	 DEmI/I1SDT0rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900E4E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173671595358.31104.12375859368715961801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b9f961a80fc3707dab3919cd370f9c54ee865f7823d643ab08e1f3f7a4e9d5
Date: Sun, 12 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736715953
