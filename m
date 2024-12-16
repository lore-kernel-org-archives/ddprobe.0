Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218B6433C8
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734335754; cv=none; b=hYtH7ig+gwtFp1hIKS3i2G1oRy+0l3jh+8h7cS5/pbVoSpdrTICs/flkjCUtc54liEARPwJb1VYFZ1O35ICLfVyZwiYNWDBkikR7Ve2YYTbf/4c/1qxF5u7OxO6/yZuBEMXPzCGoA/69QrrjzpT5FWGUOm7QtJqSoVYeGy3Jf7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734335754; c=relaxed/simple;
	bh=xTAoa1XXXQqK+z5Ry96FA1X42x9rX+4mDzf9WEvQuN8=;
	h=To:Subject:From:Message-Id:Date; b=JJKNUsA9pnmDLqPng5ZdfUIKT3pfeaN76NrU5Gq+rk0pNdn6NxvEugrtC383WwiVr7QVF0iRChHFCHfbxrDsur7mZ2EQ6RABFNQ3/WvPvEo+EwlzRhL/APfj1rvGhGXuRaXsOzG9CoQXJ8vo+7jcspoonGVx3o1qZFnaDHXl4JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0paNhTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0paNhTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CC8C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734335753;
	bh=xTAoa1XXXQqK+z5Ry96FA1X42x9rX+4mDzf9WEvQuN8=;
	h=To:Subject:From:Date:From;
	b=e0paNhTS0+5wAD6RTGuPEHJ7iQKjKEWp0BJHy4SR2AEza/MOQ1jYsU4/yqLQKfEwz
	 weCmnig+tIePGogEkIGZRsfUhKYfa0WGKp7iv63CnyrZ9n5DRjRmCoalvGPQWEO7PC
	 Ci6Bwdmg7KeTrADZEmFZcfN8bzrakNHx9YMw6f+zgU7A2hXstIY5PTzsZokgZg1zYm
	 YXX/JBkqDCtCGjxRADfDVLQq5RlhmSBDlJYZ1gIlqYp2MdespZ0pdUiISZ7Hf4zli0
	 QYcOqGeJcm3sFwrktwNsTQmDb4t4UrqFvoNsNVGH/CfFrU6FeSaV1Y5c1ixWLgWcmL
	 ULp91DZCKrkjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955DAE7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173433575360.17281.1774380334158162858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca65856602df8ac43b87b628c610b1c8ae6dd226eadffd6653613bc2add31040
Date: Mon, 16 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734335753
