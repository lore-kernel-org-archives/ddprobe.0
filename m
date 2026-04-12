Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E512E8B9B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776026254; cv=none; b=UwJxsnzmDWsmXfekq6TQAZJBUvKCTzSz7bc6DJg5X4qfrKdzrGeRQZOVpH7CRI2QvJsX8LiBLXeEgEe5Elf6+dZh4cpUPtg1Dh+UaKEaCowWp7pyk/Lkf0ZQmOOHY876LtqBFpG/mbmkWrxK2oPD1J6MNpegijFAbPtc5G5Od9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776026254; c=relaxed/simple;
	bh=5RZtJi9Qq2cjyMQ04Q/nEpDeaP+cCwn6DAay160meEo=;
	h=To:Subject:From:Message-Id:Date; b=GV66bDEH5pfCoXM2GDvAnkNYIbI9O2m6GYyrJBuv3NJuVCGv+DMHi/AAgNzblwmL05rbHV0mfTDkEWIv2o0kXU6uwM8Ml3CCMK+5PXyR4782oE6LwfQ6VMsjH6ylSBe2ssDpKn9EKNVMgr71rOfEHbU/yOsc8eUp+6fkJahRWHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKMl7+jJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKMl7+jJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C404BC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776026253;
	bh=5RZtJi9Qq2cjyMQ04Q/nEpDeaP+cCwn6DAay160meEo=;
	h=To:Subject:From:Date:From;
	b=cKMl7+jJ6Tf8DUnOTlO0WFtB8g4y0jPfPpK+oSnX5KC9Z6SNWquHSYyelJ6nG/asb
	 v92SYCgn+Wh3tj9CNJI7ejPyvf6nExmYuCFIie1IjHWssN/AhDW5Tv5vhrkKxpL/KN
	 mZJcwDn+Sar507I21XRDeLFuAUXtPHo23Ou/UojDCUNd2YJ1n6ZO/08m4acq6WHGax
	 E9WImu0YDYvwCWTHii82fhHyZG88dOZUGk3WmcCSkr/AsN5IejRex2TIak+uGHIsaD
	 S/IwXg75UQhzXDL/DJOTNV9yLLjDo6++BtUqstuPjEroCHBQwZomOL4uhzJ7q2WtIZ
	 iO0PxDPGZAu4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3BBE93805
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177602625368.1512.7629994139807161397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c8a26a8e60b0c9a69abcf5b50e65ace216e7faa051ad8dd4ca3841208f67ac3
Date: Sun, 12 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776026253
