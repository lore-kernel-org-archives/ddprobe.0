Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BE22E62B3
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756937394; cv=none; b=e2bBNU/ziKLth1V0J+4FF441frLV/lwn8U2l/4bNYmG+WRcCxf5FXkWA+q0XJzyTRIoH3zBIpjs9MAqaMMX3JVL9MwrpHLv0XBcvHOpx6pTB3iO6x3Jp/I3mhF6f6ZWfnyhiCFjnfzN5eap64bRQWfsmKWcIPIhz3JY43qH3ZoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756937394; c=relaxed/simple;
	bh=6wB/OXDnE8zFv6Kmpf3nhFPHAq2bCQfskDKF1xooc2E=;
	h=To:Subject:From:Message-Id:Date; b=NMANwpEDt2u90YywF4YGkV6vslCx+j7PMWVL0U+nL1MigHm+F2v618uprPuJInIK3jYVIt/GItq/5a59/dk+/v71UvzXVcPVzP1PTuOj+3HqzChyxz4MZwfw9HiEL5es21Bzc5A1HrWUyp7VmAxuSmdtvpmtV7RBs1qQd6w0LWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zl0VoVlj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zl0VoVlj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0E4C4CEFC
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756937393;
	bh=6wB/OXDnE8zFv6Kmpf3nhFPHAq2bCQfskDKF1xooc2E=;
	h=To:Subject:From:Date:From;
	b=Zl0VoVlj6YTG+8iaNafWfG1eJq5ySV4nj8ZkRar44Mxuar4pChkRyNmQIaaB92NjT
	 /mhRlISevyt6GNNakgo4bKVxC0gEVPLWoFZCZpDf9PNXoBHXXF4WxcprVpf9SHhPzL
	 iVuKqaorzHYLZJpaSjvpDgmHvsywzssKCLXVgj0sMjZRTNM2ZQMyy2R4AkITpCQM9f
	 JV057M11hXst5/3BVZgCktBLkyqgkdTwQwOvJXBvG9qAY+vEzCl4GmJ3yzG5lMpGji
	 PKP/rlEn9KaLNDmFaGO23ze2Ge52mCggMNfI7gtXtgip5yEpK6kOgI3LoCD6JnXmQJ
	 bX4x48MTxtY9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6FDCA1013
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175693739362.676.17479079646746732516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc19a783dd6750ccbccd95da8498a1ed4b18b422f46b2cc85af452b1353867c0
Date: Wed, 03 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756937393
