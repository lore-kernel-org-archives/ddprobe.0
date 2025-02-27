Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62ADE17A305
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 08:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740646134; cv=none; b=rama/v0IJgJrGy5JZwdMmyM26yv2ZSzQZ5YqurtisFc9tuLnWYs2jIClaSGMmL95fAj1L//H45gnCV5SpAXDlFEwZOwqgOfBhFLXSFWat1mm0SPGW6myqqMxOahJ1iWfdLEQtWh+wCoRhxrx3Kf+tJeE4qhixzOu+DNftgSnEU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740646134; c=relaxed/simple;
	bh=9o9CD2yFotPiHSqRwSyURMO2FQjVj3RiICyewCHDGOo=;
	h=To:Subject:From:Message-Id:Date; b=mZDeQB8z9eH26iz2uyy+KevjuFCPdgxzO5DifRqk//NAF/rbdKP1F9aoHqay0hhYn/mPFpIqozdOftRxdV7qMDT52Ojelcsa+nPlSBd2xs/7lU8I5VcaiLHuxQpf/E0OAO7tpFzC+CB9qShHt9cQlhZ/jPnIYm/mZ92u3ewV3lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEEWMYzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEEWMYzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA011C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 08:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740646133;
	bh=9o9CD2yFotPiHSqRwSyURMO2FQjVj3RiICyewCHDGOo=;
	h=To:Subject:From:Date:From;
	b=TEEWMYzhxzBC2/GyqG0CbC1x8eHGr3E5cARDmvltJe2AdisVg644WHhi1pvpxILs9
	 d6CChwdwc2L1jSOORvBrUtp0rz6PYmtLsdCYbQxtD/dH26vHxbCbl92ZBFqs4ydEW4
	 8ACeeiMItHj9xx19hfTC/ceMlvX/p+0o3GNH4J04Dwsi2IQeUjPHi6vCQJZjif+OFe
	 XugGF76aq/6vN5axDfqQhH9dYb+OT4P3iCyNUI1h+4SMZHvfCQsPXsoplUw+SCAZeg
	 SsPsZXXFZ0R3BuHAB/TKStEFlQdkxtROKrqxROnl35EX6M5h9g/ZW9a8EEvLgp1pG8
	 ZWMJoPjxaSrgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CD0C021BE
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 08:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174064613360.28458.9629248075641643990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6048f0e9fe583ba356638bd3c7e369db3c7b2bfe1fa84bef0bab84f89f81311
Date: Thu, 27 Feb 2025 08:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740646133
