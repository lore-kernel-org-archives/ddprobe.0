Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CF55680
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729175754; cv=none; b=hQ87upG2FO3lxiJ2Pkmel9SA6vn5eGwcrBfhaEFQa5HIZ4MltI6yMk6lFg/+5KgzV5npO148iJa8MFtAjSHhAtjhraNtU4HpqxrtUNb2GWK1dDAycYMyzQ24ZVczVZ4IPsGJe6F/N9ynIzrRNVd7QpHRmobZFK6AG1tzJ++/uVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729175754; c=relaxed/simple;
	bh=KOjylspsTXE0r2kfeS+wj/kWwiWty1cryirp3CRmtO8=;
	h=To:Subject:From:Message-Id:Date; b=C2lTds0j2cER9NCd6Caj2J+kc8Xw498yXmXCpqI1OHKWbpnFXKVv6E9/SQlVfgTH2RaIfciasEWpz8IVfH0iYKRuu2JjmEbt0bYaHD6L4rtdCs2unHYOlFcyh/Cw2p7SzMXIoRxrxI1yrrojGnjN4FMiLGdmmRomXtHnDxLSdRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXlo84c2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXlo84c2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BA3C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729175753;
	bh=KOjylspsTXE0r2kfeS+wj/kWwiWty1cryirp3CRmtO8=;
	h=To:Subject:From:Date:From;
	b=UXlo84c2JWk9AmnmkZ8z/7K3mTkOekNr1CRzzlvkmPmykeRaezEJW7UVwi5BXCfCN
	 AVASWYOINtsbLbNh8+HexOKlcZKTF/K7pW7LFLefgRZWePVv6j+F1ifNKJcjGpfewQ
	 4k8pnIjzbz97qixOKbcoh0t2d2d2516YPybGs9vwMUFsL5w8xVp7mR4Rxmcp4O5x4A
	 9U3JXvzUdU8fYK50k2xMNnMK53WisdiqEDgCif52BGkHgohqJCF2PmVvt+TwVOr5Hr
	 6rcCUe8X2OJh4Wy39R6r+PiNuLVA3T+EmFK8fFuV+pNFHLqiqWzyOcgqAb6QoFGqBf
	 l/aOs7ljscMHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C24AD374A1
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172917575362.28742.3555596431777237904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8047a1687aa2e746be9d339ecdc13cf29e0315040c750d9aa7195e86b51719b6
Date: Thu, 17 Oct 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729175753
