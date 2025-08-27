Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BA7288C3D
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756287594; cv=none; b=IzlODrz7ZwqRZcbpyfevOFYpO5g3T5QH0bLF4XE9rXasXFPDt719waeh0u2eZR+go82bUS/tx0e7VX/EBQUuK+OphiGAfA7SN9KawScRTjD5bHun3JzAHE54/raV2Le2HLuyWd5gLpvsxqucvIZIljAzbYQcmNzWnr3+c3oD5zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756287594; c=relaxed/simple;
	bh=CiCq95UpBbGLyLZZ1+QK15lYwx9ndj0O4xORGAJX7MA=;
	h=To:Subject:From:Message-Id:Date; b=TTcx71LHOVDXW4C6sAb5MEtLhRqVBj1i4R0mFOvPPsusvTNc9QqpOhGfo+5K5MJrRtwebaizJUapuSOg7WDCWJY4oF5/SHdscXGkm2NUSXZilcUlcYtQkprWAbUkvU3zxghs5aH8NPzZe5ucIypmVZJI2HDO4MRFZ+9qg0UQiPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=op9lljUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="op9lljUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D23C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756287593;
	bh=CiCq95UpBbGLyLZZ1+QK15lYwx9ndj0O4xORGAJX7MA=;
	h=To:Subject:From:Date:From;
	b=op9lljUOpCFPe/UtcSPDNcXmEgeZcr2lzeQOBDz6A6fNXVWSwdDcuPYOAnjGVT+dy
	 fDYcheD1SUy1+Q60aPYb/oH5BJolhiFdl4pfW5AXEZgS2QIYDZuHks6ANgGWfQuF0U
	 70xhKrc6M0fr4PI+PVDLrMeTIQB3cVTNs8OE0AsbgjWWTaNLxbUvf6MECrBO1nr3p5
	 ccF3B2dJY3SqxoMxpzFXo3r3p7EUcc5SqH2ZpuDq4KivwCdAkZ6oJrMCVUk1v6Y6CP
	 FY+zMc9yw8s4omFcPDnqZdx8RTz+Wvu7vC2Me3T08OYRRJ5mEM49vc6hzu8sjCoX9k
	 1GMaxLPth14UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E927CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175628759357.21197.4030277270361582974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b79df03f8bba263ac2d66fe08ba012759a8186478a68a9293f2d138fa104f1d
Date: Wed, 27 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756287593
