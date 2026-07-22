Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75832481FB4
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 08:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784710114; cv=none; b=dLFbfM+9XTCsg3rd/P4emzQ/QRbIaEC2RyjS97BX1sk9B+Yo6NtrdkVgVsuSD69qesvhSxXaz7aCrH8WOL36CwTGhEz4+WnLmBEMg/xJuWM4Ax3bWE1AJhnjOw6aEtIzMpK9NtrhiK+wgTFMkp9JmwhdToKK/FXafKT8wtrp+88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784710114; c=relaxed/simple;
	bh=HOfkvp0j0XpMlYW4qdfkqHgi3bcgG7R2bvNvVGwTckM=;
	h=To:Subject:From:Message-Id:Date; b=Lc9uuDLOeTOZh+2+2ZnFmWTvo3uAPqrVuRwnPUre5VZCsCwIhXeo4NgJCdP3E7w1nUAPxVA7wZgYFZwsd05Zm9uO4kq3vogDYyje5wikrX7Zc1AFVcazLsWzqzzEX83b03Wj12H6ORe/sziz2ZyinqlP/d+pvx1Rao2mST5vQLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfXSV2OV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfXSV2OV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12C82C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 08:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784710114;
	bh=HOfkvp0j0XpMlYW4qdfkqHgi3bcgG7R2bvNvVGwTckM=;
	h=To:Subject:From:Date:From;
	b=OfXSV2OVBfaluYnT9p0MyCSU3hv0w6UhXq5kWA4bmBHdad6mN8mSyTScdb69fL8c7
	 7pt1CJ71Uk4Ar0/BEM5OxVHTtC+3kP+9luQIrnMtifqqAhcDx8LTrg3tBIkgvytV3L
	 WIntJduArlP5SBV/N/lwZXhutVA1eFsaKyiBs3ufPdZKPCVefYxBbWCoHoPk2OHM7H
	 jpVz7VaMRWddtccIpal0gmF9rZ1dyy/QRfFPI3SLWzBtKrWGYtxxJ+/hqUXDueyvtd
	 pg+n99yjPiFajjU5GVFi6Ftk3lc3spbNQRskb3uvfU7/6XX+CkhM+JQ9te50UlrSlF
	 lm67Mg2QKmGkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9804C44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178471011378.8059.12025481111493995207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66fb0268cacec61e9b7208ef06497c8f1a076b3dac3aad4bd07381113b9caf44
Date: Wed, 22 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784710113
