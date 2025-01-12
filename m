Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7616FB0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736712954; cv=none; b=OjVgRkbJ+AVxSiTH1djj2T+EEEZckcf64jT7F9cefd/D3XXryNF+Jfx714CjDXP7kMpeYO0e4PivVE15Nb8e3qFfWjbBe87JYutxosTJqNs4Yo7LomYhJlsFMFpA4wy1fF4UY/YlNlEIkzpuKw3GlLnbaigA1VxFj957X2OPBUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736712954; c=relaxed/simple;
	bh=IzxTQcBpNaHyyw53ToODI6QSkrVZEcrr9KoTNErX+sc=;
	h=To:Subject:From:Message-Id:Date; b=YT5bw6KgGckQtb4pJMeOKqWMImNiLglh0LcpCnZW2i67eFrmFuec3nYsVAFNwYYbCB2wkAYxw4RX+W05LVdnUit5SWX3nuygQYzCehy6f+RPDQHpi5RDshBYqg1uaCbdL3ZiCB3yA88H4UaoRjhzRL2244DN4MifUI7zKuQ01jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsnnZlIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsnnZlIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62D2C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736712953;
	bh=IzxTQcBpNaHyyw53ToODI6QSkrVZEcrr9KoTNErX+sc=;
	h=To:Subject:From:Date:From;
	b=TsnnZlIyP7Uj+WsGsyd9yWtmr/HtVdv47C8MUOJIrHGmHUZFO3E69e3bg08TDEZ2A
	 ALP1dHXei9n4QYDcmFBtdxnzaEyGH/Ii8BCB6T/R9l/p6LprtZ2qKP7ji5piLyYRGg
	 dVKN/3ikpbVicd5lXA+NAz+3A/Bq6/8zBdrNaqY7kQr/UGIhUAQAe2jDFj/ceVOKxi
	 nEHeDgBjausrrEb+0wSt3OqztuI6ghXvSvwfeCi87uYW4d5gyvfQhSDCHfnY5YJvoO
	 a+c7gs2H/VJPdyAw7y18JLx14iDmvIyaUfjN2mNNnQhRnvp8/HqedeRQIBLg+oUk6j
	 BZis0bX0wgCsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970D4E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173671295358.9050.9031802952465001805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e4d1852e1a2e79746a62853255b4adbf96103cdb008d66f15d759e1f4dd837
Date: Sun, 12 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736712953
