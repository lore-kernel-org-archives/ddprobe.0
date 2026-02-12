Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376A335B621
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770932694; cv=none; b=Ce80lTF1yRAvLvpVmRtF5tUiR4fX8k4fKOHczfCTtWFUquHN/Kmf4VRkMzOUIuLOR2BD1L8je6FCvmTJvrMNFcv6ctDrJg1G44Gzdk6zHSO9zYjY/2lDLXfkDukiENy7B9FXoMM3q31aPTL9zKTAKsOiIBL3OtaKmC5W11S7Jfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770932694; c=relaxed/simple;
	bh=lb9CBmtbaLJQoTIpnEkk26qUO7Z0CHCE0qcYTOMfUuc=;
	h=To:Subject:From:Message-Id:Date; b=ojp0OTrUKjPA+inBtf6+wnhA2Oog0xE9a/me2NFrbQ2rm7sQCTiJ7Q8rero5VK+VVFeMBuZuzl7RZ9aA+JCgHvLu1EB/dHetsV8BP1WwyG1uHEPY3wjOt3YTIchojO3wOz5pA/QHQMaDSY3ZflNVVYMswxtrbkldBjg5ynCsxHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IaPL4L1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IaPL4L1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37C4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770932693;
	bh=lb9CBmtbaLJQoTIpnEkk26qUO7Z0CHCE0qcYTOMfUuc=;
	h=To:Subject:From:Date:From;
	b=IaPL4L1jG6Fblw3ygf4smyXcDOKfEQTArxtrvdv/Te1lh38XtY54WGcPVkQdXklyl
	 Us8Byo0p9brLnDX9/zahBlgHpsPX6c5HspMSc7cyCd7S2HQ9m/CkM/jPQRvXzrv5Eu
	 o4vwfPDB8uSF2JcklJHaFJOb4ht4h62cKDclu2dT1ysWEH4y/Y3YrcouZar3ceptNE
	 lTGW5qgGZauhXQToFJGmnsBvNfYWCXxTO0VPdRroWTnQlfeOgBZtVUaRiG4x45HDXt
	 tFMxzJ/H/gTudWMt20YGuC0SAoyEv5j4PDMxw/+wkWsMAjmlk04gCbCoQ/s7TkPksh
	 ZFk8OlvDKkN0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCFBEEA860
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177093269362.3312.8110130201030033302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad677d3e21e6a1839d097ba4d29a53533324e9ce8f94b5820cb862d4c03657cb
Date: Thu, 12 Feb 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770932693
