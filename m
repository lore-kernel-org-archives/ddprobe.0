Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FB92E6CAB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761155994; cv=none; b=G438i0doaDV2fKH8y4548gR4Wx96nf5VBDJ9NTXvsaK08kVvHU1ZwNIJG6RrhEuIK59HT3EidiyjwWL6j6CGAqcQUbUhPb5fn4QTN4c7ybCIhuHrIf7Y17xytDy5H8fpZ+FPyQZHN7yR9yyPBJeseUFG9Al3dL/ar//pH0trZ7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761155994; c=relaxed/simple;
	bh=lXD9DVgByJjPxabxNqbdhhorbZF4Qpg6qHWO0HBFMo0=;
	h=To:Subject:From:Message-Id:Date; b=ngYVVH8mPDlGavzHgaDGScBJLmTADw4tqoa24fLXvM4Hg62I13rkM15h65fy98x/MiJq1DEOBml0MVV5neWpTNZXbWBAvklmbiPVbUYsz5BKaCJ3aevANOexo6172ml2VbQI3hmdnVCbWfbVW2SV82R8mQRwPg4m6YVDwQ42Gig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glFBQxH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glFBQxH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD407C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761155993;
	bh=lXD9DVgByJjPxabxNqbdhhorbZF4Qpg6qHWO0HBFMo0=;
	h=To:Subject:From:Date:From;
	b=glFBQxH3WijAQtqNuFdyaYl4/MNbpimGo6+ePwxMturnnxbPZjq3XGqpTrgIewPE9
	 GhyCk1m7y+TO7xkMu1TN/hIlp10HnOdRXsS9arDgcCfKD0NHo11cgbRigEi6yK5AQU
	 /gWmhFqizpfqiBMcoOivCS4y0ENZhkAhjVGxcILYfWZ92vbbT+vh1pB/xYM1grwiSj
	 zXNuQ3wNKghlRV818+tvX8ihODU6RZ0RixGHKEt/y52at7WxRModp4LkBdCnv9fwCY
	 jnFFMsEqcFH/Rb/ECz4fYxHLeVHVus5p1qVAN4yrBWA6Qh/QlTMx8Pu7p297GYxqtC
	 ytBZDEZ/m/jnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADEFCCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176115599358.13687.16993131120508997170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7cdac5fc877a0b83fe1b37fc79e24c0c9a884c0d620bc5da12d88fbe39c1ec
Date: Wed, 22 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761155993
