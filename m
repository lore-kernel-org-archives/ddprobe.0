Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 011EF1A7250
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725368154; cv=none; b=csRWzxvBYaWawdr9kW1ksTAeyF/CfuynJef5JMf69uEv1LciDp6U1EJk5FejXr8cyt4IWu2lPi82t1itk/O3LBdpUIfflH59pN1nss1nCdr/cJAdjlDC2UHnTBB76qRyfypc8Q0z/yRkgRJbJTG1KHLplZ8/9tEuroEaeNUvs0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725368154; c=relaxed/simple;
	bh=2PNXrWOY+QB/RcARBwWlNX+DHdu1srxPI0pLdv7rbZI=;
	h=To:Subject:From:Message-Id:Date; b=O30heOdl9UMThThIJ4ZWlcEshHXOfJSP4V6+gs0N3qur3uo3v8dvN/5EpGniafx5mBAWr5f86clVbZgleX8xoQWdjbX/t7CCWKIHTF2PGgMiPHocfgvYiMvUMasMqcjqzWC2jdmXmFucQgZQPdORIjUWzjZ2rWBzaZMkU4LCCmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UF/wMIXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UF/wMIXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A80C4CEC8
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725368153;
	bh=2PNXrWOY+QB/RcARBwWlNX+DHdu1srxPI0pLdv7rbZI=;
	h=To:Subject:From:Date:From;
	b=UF/wMIXIeBc4+HR660ihecUIB8OFPj1BDcPcT7ICZ0+QbNOS9tOmhtuEVmHCQzIdo
	 eWADXF07TdwshQp2S/lL66X+hyfKwYsKiz9NKRBq8+7PB74hstyMoHbIAOR4vPQnVk
	 3LltrponsJVGqyz5v9wELk4mRH0d6h6o3vSrOO0OqOSpPQd4yjCPu3XZwdYADCF6O2
	 m1CVzEUeH2cxD1xz1wGpoUHGQv/BjEJimpefv71Ii1vNBZE7db8SXg6T6h+3VMEjND
	 ryCmS6PHmD6Bj03vpooN35iSvs9gLYFKys2iJDt/7LhwD1KPrDgSbi75ZvvN/tkfSE
	 CB4WD60lvlgbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A82CD342D
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172536815358.7378.17591122963108879414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4057d6afa8a6622dda965deeaffbfbb9a53faefefb3b710a596ae9f29c0c34c
Date: Tue, 03 Sep 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725368153
