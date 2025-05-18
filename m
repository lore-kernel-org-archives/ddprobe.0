Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E36541C72
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747535994; cv=none; b=eeC26o1aNbEv5UxqUf3A91TgujvycJCQsQs3xHkB6uoil9moKrcfUjGXxW0vpyq176VNpv1XhsHH5vQU+32SM6PsgtfbnKpwrZpROX1jgB5ydVRev6UNx2/xYsxLlHepg2M/HqHBpz7aGdOVF1IVyjzGoCzbSFcn5HPCUYfJiC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747535994; c=relaxed/simple;
	bh=urlzvk34m35b5pH0LoyM5ZTu5twzCV/baqPIwVSqHOs=;
	h=To:Subject:From:Message-Id:Date; b=IiBR3IFBWTX8AqMtOTrY6G9Mnkh2pL4fER8DvUr+pTskybEGNSsFC53NOZ+ipIQopNNQiUxSyLiO98EEcbF5AdkWzWEzHl5a2xlJwcK4Xpv3JuCSd8ophozuBkYQ9Q9fCnlCYSLkKLlElsiu6Md2HAT6hKko752dNXcCNgVpF7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lE6j5aoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lE6j5aoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E47C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747535993;
	bh=urlzvk34m35b5pH0LoyM5ZTu5twzCV/baqPIwVSqHOs=;
	h=To:Subject:From:Date:From;
	b=lE6j5aoTaQuyYRd+1YdfsIqD4jwKZZd98FwQEJ0cp/3hAcLcLcFevzhO+J7alMWeQ
	 r8+NsoIT+m6KZ7D/18aXeSiSa6v1mZQIS0GvIJsFG8C6T1TM9WFB9KhsBjVFzUooIY
	 al8OaH9ffz6/A1cyzJfh0BFWb+mqfojP25DxUEu7O3HPv0dFdLaUOFN3p/wkk0OKij
	 f/DViDP02f7NrhRW7fPaRZ2d5BLzLAThUMAvOmGwCSTalvBUOu1qLVc/tkiUiaGNTo
	 LkJUPEI8ej1AIuaiwZzy5EkncjgAZJHz8lHXRp7UTCpID2A/CjkQW2rR5CIIz/vxmb
	 1fqJeNMo0SESA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946C3C2D0CD
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174753599357.8677.15299952234300634823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 012ae70a3b55b5813101fd79bbd608663683732455c28e751d9db0df7f9feccc
Date: Sun, 18 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747535993
