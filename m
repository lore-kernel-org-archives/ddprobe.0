Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2D71E9B0D
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762554594; cv=none; b=LugF7tkFE5S4qFI2M93CUijYlh+YpG/JkwtsnCr7xc7W9pfzEFO9UOUA3H8vxhseR0mqkthf7av5W6JBUlKHUl32xhgFQsgK9erKdHeFi2c8hW0zG+xDEakO6Dbzbe0R2WHoxaIuhRr8IFdQVJu/D3bR35FNleMwbQFauQl/zRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762554594; c=relaxed/simple;
	bh=6Q/yVbe/Jko5jIT2zpTY+01RQNXMSkb7wrwh9Op1J/I=;
	h=To:Subject:From:Message-Id:Date; b=OveKen9QKfATnwBCZKgLpzdisKqHueoyBB0FX2uX9jpgXrvcDDh4bUFP+rNGD8ZLOHfsx8BCiVM3i7grdMcyY/aPRGIYY2gUWKa7wlATvv82qUbSpzdExewWUoOEkotHfbXQ56yAZ7ekgRM+i2O53yvzZAnmPlUuKqRms3mGcgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEfSnn0k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEfSnn0k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B262C19421
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762554593;
	bh=6Q/yVbe/Jko5jIT2zpTY+01RQNXMSkb7wrwh9Op1J/I=;
	h=To:Subject:From:Date:From;
	b=CEfSnn0knOS3IFlXajXjPJftgqbb265UmI+K7++ixP22P34uVC0/i5AKaOGQe2I24
	 0fwTAopbWFyRbvKP5zyaA/Ixph9rAS+kh9nAII3kqHIv7jamgsMr/OZbtCZnfxyWNX
	 v2xwjha7ke0V4o1sDVjx4BxK0LlWcLJGz9FOQkt5BriYqyPWUvszL5DWlMJtnPUVq5
	 kleexLh6w5vx9bU3YDY9EjT/AE/+pWVli7hord9YTy5Z7myJFaHJbqEc6dY1369K2P
	 jgt6pcfyzZ9gVhQtgaGRdYQvM+PwfXwoqcFDxsLPPJIfauHJmMDP15IGmguye8tnS/
	 F1vzqE/L+c0ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6D7CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176255459357.28546.10382601886376966598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cec2368b1334f7df98128aec76c1b37bbce7db2ef1f684c10f0b3414582f1df
Date: Fri, 07 Nov 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762554593
