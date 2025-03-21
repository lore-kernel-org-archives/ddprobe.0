Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378CB1C462D
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742596794; cv=none; b=OScNw6yAwUY+XRJ+/NY5t4HrmVbJdh+tbxY+VPvEIR8txqvTvyXqPnRLcpBTTRbYnPWtZf7/KjsJqI3zeUr4MD1avsbYay4EdRJRxM23eKFaT/mSfYiDo83aC8zU/7HS5O3j5zd3h8jFkD2sxozQh7TTFfqg8McJ4HBh6aO/NN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742596794; c=relaxed/simple;
	bh=q2VRT0NJqdojIegpz81A8SnpYGhHWoYiNomOjS8gOLU=;
	h=To:Subject:From:Message-Id:Date; b=tk1sb1FLHnXzZzgJOE5QdlCXMRgjXki/81g4kKqJjcb1S2wWksDQNfI9RKEQwUj8cyvVMzOVOg0yFy/4uCbNB1HVrpxXj0BnNXrFWyQLLzXXjnDnoa4fAoUKqOTcmX/1JTmkPJkFFKdna5j1kXzXi2NBXNbB/jRdJoc1lKKB6oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfZQLom2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfZQLom2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D5DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742596793;
	bh=q2VRT0NJqdojIegpz81A8SnpYGhHWoYiNomOjS8gOLU=;
	h=To:Subject:From:Date:From;
	b=AfZQLom2+W/2baE8hdbQCibbAehxtgY4sqLxIvIvYQHH4Bq68ZUNOH4zWheZCO4bp
	 12RorYyGmWzlmNDuyig0RtYjelThDWFllOiKr7hGDaDR5dgv/le121+bnG7aMkbqeU
	 r2Lvy8xy+TXmTWVt6NcaN3DYi/IT3zFQlqj0GdZScp0lQZNIapiioyGaoKYBY2WK4q
	 m+qYOCMNWg7NuO03rx/A1EtX1TwDdUx1tjbyMmgxAF6Gan6E23br2b15rA+in0zY4s
	 wfEp780gf0Y/bDF7JOsxd5uFUm9dbmNB+hP+1Fw8Z8LswLxaAoK3WfT7K7ggGgfgYO
	 CbyTZbNhDeqiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9979DC36001
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174259679361.31069.1970930953685467804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 211718f3dcc7cac294dda656197f9b28169db337bd51b879a9df7976e5799f17
Date: Fri, 21 Mar 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742596793
