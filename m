Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152061B14FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 17:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718904023; cv=none; b=VLyEEp7/I4wbM4GFKdIDoRZ8OHpknHN9Sd189sxCtZnxlesosZlzbyts3gY+kjz+OhjIAp79NqaevrCygvdow82KS4PgaUcMhOiAA1CoRYiUy5PtBnyhrq/g7a/P3qHDSyls55Jg7vQF9YI2zNTO8iyHd9TMuAeW8O4GbEngDsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718904023; c=relaxed/simple;
	bh=HJlS10CDaSK8ITSzaXRU5Zf2ACNBGPDosEAiFrVTv5s=;
	h=To:Subject:From:Message-Id:Date; b=LER6TS5SB1EQS3FI+s3laBphxTPqXcn0z+afJ1q9QG5cdf0Y3oQ3908TicWanDZ7/B7Tl57lxVFMpNtlJkLGYVJUULnoThm+UU/rKPcr7Th6yo+bbj0iwfZjP74ZidZlSo45ud3JlcvLuSkZ2PxuyTZRpHsydxZWbUd8R2AMVRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X66VcBAV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X66VcBAV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1545C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 17:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718904022;
	bh=HJlS10CDaSK8ITSzaXRU5Zf2ACNBGPDosEAiFrVTv5s=;
	h=To:Subject:From:Date:From;
	b=X66VcBAVSN7jS4WV/lujhkMX2aAvsoiOIvdnCmWiMWUhrzjIWgmnaw/iHGNXvStQ7
	 Pd2vTUuWT39rHoCsjGbYQZRYfwIbGpWK5hQTI8WnXw/97hygkvdnIHvR3bqlnLQFx1
	 HV5o9BTIA6nKlJS9vBWf6MyReTj+/XnamTW8ayCKUvObxEIFS1fMbcFxByQhiSnS6V
	 qaH87+e0fDZD74+3TST9ON+YAbQ1lSMyLuwWduZClJNpdl9QUWzVY2HKwKR0eyckk1
	 CG1KIfyged89TXZ6u70NVXsjn5i4Jx2eE1a7gnx2M8o0XuabAn3gtSQiZJQfTgg40q
	 iDSbS6vf03iog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9E6BC2BA1A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 17:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171890402281.12836.14903760205614657006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9def43309285d9aa56626792a40e7450571f452b6f0faafa72aa47a595412b
Date: Thu, 20 Jun 2024 17:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718904022
