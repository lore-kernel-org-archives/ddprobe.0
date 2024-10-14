Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE0013B7BE
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728893154; cv=none; b=QeScxTpcbG5g4C9auHGOz66sDo0C4D2UzMaNh+HQ88xpm7BQD0pzvb/7Aqm4MRaLM0fii4WAebhRMG+S5TxQxUopvJByfTPw6z9Ac4Fu5NzsKLR1e8Ng4yoNx31U2JO/a6GUgMfjtydw7wFupe7WlJzvnAxNPmNMpbxj5fRK4u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728893154; c=relaxed/simple;
	bh=JWXBYGlbgcdNLNOzIR+ZVMDYFfehylV2VEIp7e9PROU=;
	h=To:Subject:From:Message-Id:Date; b=PBhRWWTjrPfoSEAXftDDqxyZPxIDjYkjf2c2Sl7M5t7Qill3vW8XlDOQbsKGH3WngNhe/kyLoTd+Je8Lsl24jOPz/iEZjE5zHEhryaYj8LUfLfNuYogsGoSdUo+VN9xXnyXuQ86kedVAHnYeYoarQSBogduS0TtY8KN5i+kHd4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijXw3Gh7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijXw3Gh7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED76C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728893153;
	bh=JWXBYGlbgcdNLNOzIR+ZVMDYFfehylV2VEIp7e9PROU=;
	h=To:Subject:From:Date:From;
	b=ijXw3Gh7ryGoXZPojHQveGot2VY+7rfbIIAAwkVtLmcz1nbLRgnnTnV4X2OCeWtXq
	 ouN184PG4O3smffnyx/JzBMG3Once0NgnptBA40lRglwZWjL5esbeEFPxZwUZjfL+c
	 QMD4ac+kEaDw4Hb9kzvIg2x0wpvuUeJ4WvQja/orkIuZQcLZLZ/HbX6iKZsBMVx5Bm
	 aAu4SGvcqiwolmlLO8MY8U5JFp1DlHagx6bfusDbucKKkVrkBhE4vdVY/iLJfu23Qx
	 ltlSe7iOlCDdp4F67O6S5UiaLHVIksIkKuA7133+sN9TI8CmnvbShAdOgHbRCQ6EKJ
	 3ICj0Yk+4pKRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC7DCFC500
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172889315363.3791.5692489625207332051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac07bd481362def162f3b57b16c6279a138d17534cc98379d63527263131f86
Date: Mon, 14 Oct 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728893153
