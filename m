Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E9A1CF96
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747636794; cv=none; b=eNmiI4whXehUDt96osWZhxl6ZoF7X2gIcc51aMGp9rhFZGXI2lLaaiWudkOrAKylt5uqzTFTsBI2p+8Mbvf8SBublR/gtdtPGojv9BZ3iyfK1kdwG1P9vYPc+zdSIQY/ew00a2SsuQ5YEaFMdS563DwQ/5j2i5UnrD9BK3zJ/JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747636794; c=relaxed/simple;
	bh=AcON2QM112By9FBA97nU8635zCgUMkWiW62AQHkwl1w=;
	h=To:Subject:From:Message-Id:Date; b=KJnNobBQahzFwv6VsBMP/uqWLCDJy0BJpGLHO9Pi5DZ8tFQEld43+XvB5DegO8/Far78EIdl2TkU7GnredUFK5KoonhBArmLnDdXF0PV9mLFSdqOqv40gvPj+hzJEpXFTSZR6EGHVAbCAWtOQE5qwk5l6IhmBGF+pU50gUyCMNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYiripbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYiripbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A774AC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747636793;
	bh=AcON2QM112By9FBA97nU8635zCgUMkWiW62AQHkwl1w=;
	h=To:Subject:From:Date:From;
	b=RYiripbZJXBRFEmI/oQPbatp5OWPXrq8M3DKMcVEzWTYcaE/NbHk2RltMAL/prY8F
	 hT7L8kLpqD4B3djE5nYmNXFKr5ozyeE6EG+hmQmOeJ0FCpbJte7ApXI+ynHPwL6d9L
	 gDgt5iC5jPL4kf7WhG2OqgOSVsFkFoEX1PGCClFKhY+3q8X/yjfbAGFlEv8VGezxcp
	 RUuYyVLkIQRmHVNiUNE7Lsx0S3GxiQyzyMZLP3Pr0b5xDa/c5pO3/hzc9g6gpMhWQL
	 VO0OSekRSPDFhZ/Yj3dd4QWNC+LEUlpaHejX5l6zDBbHuOx0XuBvT3tc56Yh3zZ7B3
	 J+MeV29u4eyXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92329C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174763679357.21991.6463182034942866868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca5821bfe28d0ca6cd4d1ed57e2d13d344a228136138ba230cc44e64863cd80e
Date: Mon, 19 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747636793
