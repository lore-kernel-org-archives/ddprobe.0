Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215F04908CC
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 20:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791578434; cv=none; b=Km9dRWzxMG54FoCu8cMHy4cDoNVUkEUqz8eKIw+lAM7cu7xSnLP2QD2Cw8mCkgD10HFa6bZJ0vEK3beG76W4IkG4i3KVaCcaQftZqGJu/5iDga3aKdPLr3/Qa1zyJBSXPz+hRXT4HAs/FwnJL8NVEFPS6bQSVq0VjqtnCYy06BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791578434; c=relaxed/simple;
	bh=8SwKZkT9qdT0V631Xe/aZKYWDotQEjqaqUyGYmX7qlQ=;
	h=To:Subject:From:Message-Id:Date; b=o4Rddcuv6aXW5jlhnYXIoG6F9R8kRt2W/w/mw8/RY25LT7UNLLuTz3HNmhBh+cV44K0JmJ3x6WFsYR2tCUeeufS+ueLWzTRA+cAAzK0wMhTSHWN+EmRCVxwL660+KzgX0yIX/SS2x/RP2Oo+OcSKSn4sHNJehJ19vH3rmbqoN3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QG1AqjlO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QG1AqjlO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1EA6C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791578433;
	bh=8SwKZkT9qdT0V631Xe/aZKYWDotQEjqaqUyGYmX7qlQ=;
	h=To:Subject:From:Date:From;
	b=QG1AqjlOz7ybkgcPMyeO9Jx+nHN+FYQZsyN58dMsMo986CNndJ5pfFNfiPIOEWgbh
	 hPWGtWb1HrD4gMdlr/DnvWcPqCKiRgjZYJ9+YAwUZ9J5ZDpuWvlNb1QDBfD6so8ro7
	 0cYvsqzdO7/WgP4UoYdyUg77hlsR7y5RImMLn70sYWyaHKFFXGnIZ22EicL8WPFhlO
	 YA68V6O+k84TVqaE8NYH7TilY/tQ7JX/h53JA1GnC5eDjzF6gtoLturfA743JzNulR
	 0E4+lDYlh7k1ewnwrJqx+a5CcJxJIoFq9urGubFn+QUfRpXbKKD8xKtu3kmk+WltIi
	 JoVI/JaLMVVFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EC7CA9EBB
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179157843368.8171.4106773263950060302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bca1fdbaa15702cd294d4537a14004e46ff97ab061f39ef9a201139c58b2065
Date: Fri, 09 Oct 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791578433
