Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE132222DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746167394; cv=none; b=HSpFnCBpL/645R5DZJPjILo2Hzt5jqZaWjRt/BSieTV54P/QkXrSo0GFBnrZOTVD9+xS85RgyejZO2E1Q6ShVgAujtDNlHLVFlTtF46lD6E/+yu/OB4GkjYvFbPYBM9HkwAt+Prj8Gi4Km9jiKJhFVi0LeCPpsQHNDbDot2x3Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746167394; c=relaxed/simple;
	bh=Kv7epMaLvVFd1L2iw0VSHMcffCyKVUB0HXcFFaQqj/8=;
	h=To:Subject:From:Message-Id:Date; b=uzW2Oi0QrOYplx0RQD0HTd9/C+XmJ8vJKm6zPjsGb1Fm8fjJoJfO0kTYEJNvAzRkfRslzEeBETdiuilmJ+8j3apAcVFZ62/RRKM4EJL8zFKxd9ycaZkR12WOQBnev/wQzO0B0EyXmrEdYLv1Wpw5hjHcgrj7H7376hq6AdhDbps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHrGlrNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHrGlrNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F7EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746167393;
	bh=Kv7epMaLvVFd1L2iw0VSHMcffCyKVUB0HXcFFaQqj/8=;
	h=To:Subject:From:Date:From;
	b=gHrGlrNK+VhpxRcT0zAcH30VHTWrNDGYIrZ5Xn025qQegF+FPILB7zS87L7uG3+Ij
	 TJsphZ1f8G/jDGxDVXoWbm5wqOnbxrWvLojq6vpvLVBqHFpJT8n2fHwGUHhzc8Xy3J
	 Q3o2lhIE5WUbrF19RQCcmIb+sJg3CseQkfsLsS2M6HXf/n+q25YBjlJeSWb8skpWiO
	 jyh8rQ8GYrxCjWBxL+AL9DT2oQEDH8ja01U6xKuskIG/eLtNtpR+RpyHpS4Kb/dBub
	 sJ05C2co4zTUm9Gr2FKInKVIUTtytuT6Vbeqrm8qdvSfrG9m6v0vWz43tJ2bGM1vtU
	 aGIQDp3yS/Jww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEDDC3ABA9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174616739357.7699.10245683846728624838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec60ca55d1f5ba8c73d2065a0482c5519922a872db0f26b4ebbe5ff103e22e7
Date: Fri, 02 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746167393
