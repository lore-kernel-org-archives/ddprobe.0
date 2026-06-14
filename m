Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2326539DBFC
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 13:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781443594; cv=none; b=tWgg9eU9ljL0PtpW/twE2rcIenA+CV9USQHyNHuQ82ScOQjYc1uek24rDd2n1iY9xA2nC1LPRcRsxek7DKA1t+6xMfpD+/QNcJYeQrp/0YOOVTOXGPeaX3Pn/bVdjkUVp+KVSgUX66Q340DBm02yEB9xF6hCTIlyfJ74YagoLMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781443594; c=relaxed/simple;
	bh=EC8BcM2j/Xr8NZqoeMXktLDTyd/lRXp1AXbW9DzCP9M=;
	h=To:Subject:From:Message-Id:Date; b=SHRdZQR1EhpNkd/roNDji0rObIXKcNiUMuDlh4bgB/jiWbq3l1FSO5K4TeTiXMFUf2KvhBFbbUCP9xks0uBZvFdyR1VV30Y+imv5+Q4kyZzkR+9twtte78mWUG23PgMYioAB+qX1rpYu0bCyWVMoMf1T11tS44FZAiGBF+Wjko0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvInYkWI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvInYkWI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBB1C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 13:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781443593;
	bh=EC8BcM2j/Xr8NZqoeMXktLDTyd/lRXp1AXbW9DzCP9M=;
	h=To:Subject:From:Date:From;
	b=jvInYkWICNl2nHNw3Lv5G5gTUpNqP+JQ9WTMuJoyM6nlTvhK8SpQf4fkq/1EX4fJk
	 5rH9OpASBdz/W/gzarJoi4siQji44zMMipfwp3r8lnf0rM4Oy0ihHAPcH4GYJZ+oBk
	 gG5/pC+T5+pRpw1pqp9kgwjp0FX/YFsOOUfrtdkEQg+UvoL9UIeSIrTOcFuPJVChox
	 sY3tVwHECIb8KCr+s6KvCRoIBZLvQdIXnlt16EgHN8xe0ozQQY8cbil2BDqCR9Prxc
	 X0zM2/Z47lCPsDT+xZqsACcCKiWieB/FTsS14fNVPnuI79FKSOGJgClxDQ5zt58Vky
	 lnHuaylhDA3Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC9BCD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 13:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178144359369.7310.6424230966729014200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d889d87ade7f3630df8f99e3d8b099f444a60ee8c42b0e20fc3270c7dca7e3d
Date: Sun, 14 Jun 2026 13:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781443593
