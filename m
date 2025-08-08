Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109DA1A2872
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754683194; cv=none; b=pZpCGaKoiLKxoILoc8ulp8yXgz1BRbQOMsLMdTCU5/FwMKZ1plaYA66dgYihsi/sPZCruZ6ierlWvtoWgcpoJagCUHXYhHnUbkD3TOlwJqWdWnUHKQ2kaCqqreIZOLRQcIjzFKztVqZOxrHFW1mZ/XusfSknHCuarsPi8C0gRjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754683194; c=relaxed/simple;
	bh=88YAVW/JKLi/x2BHg0N0STaU+MJ1PhoC0FfvhJmfpGo=;
	h=To:Subject:From:Message-Id:Date; b=IPzeKQKHIsLm50KJQpYEM5tU5Sz2Ld3c47JlU+rcT7xiYoiQ34ctRbfeyUREo1BXNpZMZtVPPYaIRMBCObudhePMVIoiXweUCuhGPAJb47Ono99HlAqo4DaDfVl4erJBro9qkNWzdfHj/KvtyToHB9Ezgkp/3eYItTlXn5WIIS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1C/M+5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1C/M+5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2DFC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754683193;
	bh=88YAVW/JKLi/x2BHg0N0STaU+MJ1PhoC0FfvhJmfpGo=;
	h=To:Subject:From:Date:From;
	b=m1C/M+5ilKanYJ+MZlUYjH+T3W7C4lN+gCmni6biSgas+7AFbUkxgvpimUpfHLj6i
	 Bo3JJmSJgUtLyMX4qSFDTpSuFagP304vpnQD2yDhZm0FzT4HQQCkBh9jQRgIiXILe2
	 06jxKkt33WSW8Vd/Bx2sxQM4vTWlGAOBoKaC2d4QupG04aS6xsfEAb448BNJkQ9mft
	 ck4we4TtJi9pKT97NWWyugLSxIdoffKlcP+jPgiu9oev1/mZXJUN2wkJmI2dGCyv4f
	 bU5EXLox74b1kLsgWh29FMXQm3J9yKhUUfT1eqGq0bEvHLsNmEG0qa5by2OSHccAKK
	 0i2kx2XySJRwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1CBC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175468319357.14040.3771646504175689447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a1e6c52913edd3b9b34a67af225affcb1964cc5854a1703842f86995d37952
Date: Fri, 08 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754683193
