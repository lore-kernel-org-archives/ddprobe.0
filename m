Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DEF134BA34
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 12:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763553714; cv=none; b=Hlfjz98Gscsc5F/a0GBmQlMMn00C2NVPQ01DZ/WXsHs5Pdh+io5eRqOB9q2aPaZzLs629ZOIjxsbAU7lmnEuLsUnuOT2QqDO8nY83zLQuRorYQCDX883mIScZ9nu+oOYIhwBB+NEa0tkJ4OtCdPWRg0yUjFBnwoEjfFWJ6TFO28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763553714; c=relaxed/simple;
	bh=ksJdnxvjrCiQwm39K4ZxmGfkdnDlh0np4prmNMLc6wg=;
	h=To:Subject:From:Message-Id:Date; b=uVg+yd9/nZlT2eIqQ4iDq0PNIy+fozNAOXaIXlYePMymyG+62yUtGQjIkJ1Ji/B8w2VSsHi/LhceqExsQUvpmBJNTvEK/2GuooaPDgf2pxdyTHx6gvO85hveVutn/EHw1kEQkluuyz1KTU/EBp9MSgnwMDKmznCx+1I/8QP+dSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCSOhH0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCSOhH0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD06C4AF10
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 12:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763553713;
	bh=ksJdnxvjrCiQwm39K4ZxmGfkdnDlh0np4prmNMLc6wg=;
	h=To:Subject:From:Date:From;
	b=jCSOhH0erSiKXI7K7ZuRbK0M/gkT+BUjlYgoQLlhIGg/+zqCiS6Nd06iKOqBjLbpQ
	 JizphpuaCCAbTMXwUL1obU5u9QuIAPEz7Fe5pBHYqETKuSLq+7HKUV6v5DWopACyHz
	 Fo/JFMlUA+9UjyRNgXU9IX37c/eMjzI5Uvpo/TaU8Ylp9X5dCoFTPk/Zh7yeHtK6UI
	 QvKRdHr4LN+OzvEdjRkKDKFzYa4nwTACcxn8hXG3Jd9nyISo4aleHywHx6HwuleDkv
	 BSZZEbpheUNEpwqNWT6eYmEw/GK+99bb0XR73oEzb99fqy0wlHpsia2w+Kt+/gcybX
	 Llm71plLH4PMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9064ACF31AE
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 12:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176355371358.25492.2704073202756677282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2ae14356e00692b7a99dab549df2041b43b803fdd6142f5a965eb4de82291c
Date: Wed, 19 Nov 2025 12:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763553713
