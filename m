Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2266526E711
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759330794; cv=none; b=iwYfSalHuIZSGqyamTlU6KH86VMj6z5/HAX5/WcXIUzjgClrjFHDSNIiY7gn/+kFqKIUv2mPBo5YEKUokjdCyY/ztArD5Ev0bYEOgva49ZqHoOV7nYBqC5stCM8q0jLK/IcsH0wWknn6jjvGyj4wtfHN+EU9xPaciKf+RUEY2CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759330794; c=relaxed/simple;
	bh=FzQvlFKS+nxRLxRssYJvHFrc3ZrOpBw5LBi8u1l9H9g=;
	h=To:Subject:From:Message-Id:Date; b=hzf8VEn9GemACGOxt4VtCbvcbjyWU8mO6ROmDr+TFbyelRdOWIVg9vQHAKObwbV1QNsoXjnD5Bgm04+M+K52TgnfZjhAsQHrexADF0L/0xSUWxASoDcjRQgAuLR5n2BNDgtKYfBOctIjZeug+Ss340Xx3CFMyQckKQZ3EA6Sizk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiEJrPvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiEJrPvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5440C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759330793;
	bh=FzQvlFKS+nxRLxRssYJvHFrc3ZrOpBw5LBi8u1l9H9g=;
	h=To:Subject:From:Date:From;
	b=MiEJrPvlJYsA1vvjgflZ8nEjV8ZbayruNqypx23p/CU8/UtDbmdDpjLnlyxiWrg6y
	 G9iET5cDmM6i497lm67Rkzi1sIHVFPBrrRqcSmz6o6KypMRZ6KNtggbSGWGISJfVk6
	 CUV9FtDGjtW/dHsyrEy1xnAsm7vtEK4TEQT1jNxjEO8nk7/+ktj1Bdm99LP31NqQXI
	 my/44h32O4k8I4KA35TT6RQ6jJ6hh1iUxDrShoR2JeJIo+NsnH+LI/jDZQjz2J3D83
	 3VXdIkeXChOigGx7NYoaUjn834pEt5m+QFTIx/Sovgg+cBLARhtn1pXGiGKdtg9gjE
	 LYFVmX0F8pd/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EC0CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175933079358.12763.11460923006306404304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acfc5e617e08a9a4c5856d701d05ec49f57adc768b6dc4e67fe668c4a753bcc0
Date: Wed, 01 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759330793
