Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4F411CAF
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 04:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719980123; cv=none; b=OISqUYZfkG/E/N2mkYLtffJ+XYZMn5gDRAgBXddl2q4zVeRJ+0v3JHXcaqKxJm4xc6bUH/f3I0p5gFobskb3uktcXa2keVTTp7HfW8R67bWfL8jUfwH8xDb1gr0W7Q36e/cclGmAn8PWeGB9mBp6l5iZxARmvYInMiTM5FceX5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719980123; c=relaxed/simple;
	bh=mHgRi3fdYGG66iXXqjB+6nH62nU/JKBsMtRfVs/qfPU=;
	h=To:Subject:From:Message-Id:Date; b=kBuR8AoDRdwjI5X8w5BvpvCVyUeWQAb/VrtyphlmEOueqW2EcGBeLqW0YY4dLUU7BPv125pR2p00/CDYD6NRspKDgpPx42IkVpIK5ET9rSEXO/1ZqbQPqmtQnekuRnDH9Ar9+hWa8yvwXLsCekMf5u2AC6dkzqtv3LaTrjnLf6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuGZIeio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuGZIeio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC513C32781
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 04:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719980122;
	bh=mHgRi3fdYGG66iXXqjB+6nH62nU/JKBsMtRfVs/qfPU=;
	h=To:Subject:From:Date:From;
	b=BuGZIeiopKnu1b8cMNO/Q+2XHbqqrFtdYcn6Tx81gD3GyNghE+KkxSZDlMpD33Xlj
	 ziVWlNLkI0whrrrEfVUQt3/4ReMGbBbp1etLkLXXC3njiwJMG8uH3PUFndEIwaMhW6
	 M0oSCJUbSzvBmOXwE4ExLQcOBL/VVTE9vFUHcI0vKMmjmDilHlqILTC6rDt2aYxMR/
	 ea38z0nP1MfkoWI/PeDWqVrC5etErDchjlZA4Et9t87D+5iKWUmvo7RJSAhAmsNYwW
	 9mMOL4zlJhoDJz1HvajygCuSA14Cr+NnOZPk0ygZgcJcegOfi7TnD/fO+UoK8NEfIE
	 Zr/oerlbCAwnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C79B3C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 04:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171998012278.973.4476047677703694645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51693fa8dd3ccbfa73117b530fae76e149b72af13a7e3cbf47cd097f8f1adf12
Date: Wed, 03 Jul 2024 04:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719980122
