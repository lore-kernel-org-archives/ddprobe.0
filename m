Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACC540DFD6
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777093054; cv=none; b=eH/Y2gP3FGEl7saAm2gM1YvTUH7ZDlN4vSqVu6Z1k87yrJLXvpPbi4B0J6+Cl1aoaIlCgCEHIdlmlD5YK1MS5QHoEA+z70cOrElyezmhzn77ZkT4iJa7BBgJT03XcLy9H9kwl28hnGY8QhRBO9DZgjC0ftpwqXuilTs3zGVjdDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777093054; c=relaxed/simple;
	bh=nnDgBw+p5asWc6if/K3FhboaZjV6Q5LT3NpfeLFGgL4=;
	h=To:Subject:From:Message-Id:Date; b=rXzCG4yr7T+i/xcUUBVM/v978d1QvrsbUOC85/FqilCKdBrHNa2JxSeEQzKwA0ULYpCzn2CDkVOs5NBRTsNkAzan61GjteDQ7oOvPV21WDc8+Bpvgn0+KDrOqLg4B3RQpxPbzmgJJQxeYqioiwwnypwFPxKaF/0Mcl+J002EqC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1gSIDaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1gSIDaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E90C2BCB2
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777093053;
	bh=nnDgBw+p5asWc6if/K3FhboaZjV6Q5LT3NpfeLFGgL4=;
	h=To:Subject:From:Date:From;
	b=U1gSIDaF9olAu2d/wxoHhK4ZahWajhv86lA9ULtdd7ChiGd09yQE+zyFH3/2Ix5ze
	 1AafFz2dwFR3ZoF9BgStW4P8d/XeQIfHxCmT2bb7QZ54aHiGSmVASAies0Y0enwpQX
	 nsl/jUGaVX02XhRJOHMcAZON/jxQ9VTWWCQh3xOKAtK0W4cIGJ8HwLNa11xtuI79q+
	 q4Z8EVyk8Vw8OsAMhXt2+9+CMnxddzkAA2hI7ZUJmk0QmcIV0yn/1001RkcJFc+gcx
	 HalFkKuFblQg9oC/3yDHr4tvaaNQgETJcIvwevYX2zzLQtRYNqnUGAIjRBVcn+xhx2
	 Mbo776BENt44A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12B7FF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177709305369.5211.1439415990529482497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db8ef75c4534a2a3efeb72cc86b211bba7c10cdba9c3f2025f3e6056578f763
Date: Sat, 25 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777093053
