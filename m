Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC262ECE8E
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750959594; cv=none; b=abe2+2V05pLS2CBU3x1rR3mzKvNf67oLFCHS5O6AkpkPrIacmF3e+ohMg6e8+utlfbhXwiyS7NbBaVAOMlP5Xu2i4aHauKJufC8daFCU7M1qjKdBkCdgZ/e6Obq2D4DG5apSdcXdP41X484iljK0zCOokBx2vFPTqZQ5sVJC9MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750959594; c=relaxed/simple;
	bh=IQKcPpU6YLVwKxz3oEb9SQWHKKe4di7LPVvo6lt8jlY=;
	h=To:Subject:From:Message-Id:Date; b=r4QJmdcbL4i0mDUF0iOa2EAWlGilbLoei/po/v5giEClzfF5wclvxfqrPMjxjS4f2/2ix6k62lc33h+Hn5SaJX40FMallwBQadpTM66Nq6I2pSgBCecSsjGYrV6ZwwnILjCzN/emSlJRCpaO59dSjpCQajSWWt6zdWtwwpGpjAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=No9C0+sa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="No9C0+sa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4569C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750959593;
	bh=IQKcPpU6YLVwKxz3oEb9SQWHKKe4di7LPVvo6lt8jlY=;
	h=To:Subject:From:Date:From;
	b=No9C0+saZ1JjQRj7O54T1/ahnMbCDWwRAxE0NL0f8YWJlA2V7ly5dxTA+akPw2Q7h
	 QTIe9nGrRe9WhRel5iZ/DXGY+SShhiD0X9yddl7qjzoz6glfk/mIo2ZQVwaQWiokkG
	 sTGvw86XdYgTWhrJfbwrdurwlzoH+fdlb4uCjuLIrrSxxbIHzmzRcUUek+JZULA0XE
	 bfZU+yfpp2PrZslK3yD4lPxL3hcsYPZs4L+AUbtV3QfJFU6nGjvl4PJkfyWiPD2u+8
	 a0cFKl8z2nNpNhrAXBQr267l3vz4cKpIqBzyvmBavTbvdw3pE0LjCd2uFGem1CbSZ2
	 91NkvDMw6NL/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A06C7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175095959358.32374.17990061001253027866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4683a5945df84d31ea68895d00c84977b10ab815fceb524a7487f9107c629b20
Date: Thu, 26 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750959593
