Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3376B2FC891
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 14:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763993514; cv=none; b=cQ90fEFkAp6tnwIW9pUSX1H5rPIou/sHKXn/TRzi4fj6iwm7eeT6+P9EKlKOSyER4lLExbPtzXHK3hP3n42T10VUQ5nCDgqdjElEUhIynh4Zg89hEN8r0wtdETW+kx1MU3yag6N7hfvYUSeySBqFd30ISKy8er9UwkXEOP2UU+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763993514; c=relaxed/simple;
	bh=K0HVcYFk710dZhC/UiyhnrPlDl/xHn6uWbUBDcIJek0=;
	h=To:Subject:From:Message-Id:Date; b=bnxEfH+4zouWjG00sgTVPMFAhWkuxw+c+Zhti/MFe4eNqQuzeIezh/0uiYI+5VmbpC+OvhtnHgzRVMe7lUNv97+QbmqiMHBqNuS5OV2DKXdBvtgYxn/ktOZENcLnQxiKGpK1+mDAWYHsSe7MLq1lEQxyLrRtEoE9Ans7J28NBYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQKSJnNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQKSJnNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64B2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 14:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763993513;
	bh=K0HVcYFk710dZhC/UiyhnrPlDl/xHn6uWbUBDcIJek0=;
	h=To:Subject:From:Date:From;
	b=kQKSJnNk3v6OPuPs+HlkOqUK7vgNfYJS/e2qVn6BGOzrsDwB2eDxOt2/m8liqgDvD
	 TOU24p8buuOO7+m+DllTU4RvgaRvF6MkglO/W91vYH0l3VK11TZvCBUXfp7y56qnlt
	 Cb0zJen6tA4hyjY/vK++8Ami5TgezrPe5qgcQfJj+9ZxabH0oTJFiaGZ9+EYQKQgBE
	 KFMmDhLq01nWRIbpOZDnJYcJnb/STPrJ0/Fzj4dMp2yHpIjlWNo9vDOylPLytIGSQ6
	 aTRwQIRYyAmf6ia+YGNwIAasnoqGxU2SVUPkpF07o2peOPvaxKJiRrBUtCe5pdGLI1
	 d8N9VlWkdKHeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9629ACFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 14:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176399351360.6995.3766467535566690913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e772523b88f3d31aeaa4ba266f8b2108923355985ef1c23718087fddbef34fa9
Date: Mon, 24 Nov 2025 14:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763993513
