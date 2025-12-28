Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223F0287506
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766965434; cv=none; b=GBXEIWnVnXfrUcXehKDv4l8PB4rE4xTnNzRoA4acaafRGHgaHzZUvB6x6/13gHKbVefhJtgGLb8MMOdIBp8UL1HeY9BmAeUxbEdmYcgFU7/gPEHiD1QkdTpiLg9v2Q/T+vW2gQiNiIX2T3DuQWSxNqxWlOUdyJ1u68uhANnsCtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766965434; c=relaxed/simple;
	bh=pel5BX7TRvOr73KF6xvJFZDFjltPvAw0P00LGwiWHBY=;
	h=To:Subject:From:Message-Id:Date; b=dF32E99Z/B7RcnGy4DH5ZaYsdbA/HTx+jNjYXZYwPDU5q7XUDxbDAzu/qXtCHvd9Rr/dHwYxxNXCBatQcdmTcKBT6CwBytQHsOJrV8lvieqfzu8h/ryBd4jSogfxWjGh1tnY8L68qeXxibdEGnpatVBCaiSJXhUaGS3RUfTTq34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLFjGOjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLFjGOjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C46C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766965433;
	bh=pel5BX7TRvOr73KF6xvJFZDFjltPvAw0P00LGwiWHBY=;
	h=To:Subject:From:Date:From;
	b=hLFjGOjhxnnV9aasVPfIypgNA4717bSFYMUgGmiT+IpMybO3REmTygLndGBgq072j
	 T3VueGOIGlNVqTNMcdTiqEYd6c7oIneFru8rOIp/c251/5YijjQvAwZ7FNwSvwSc6k
	 2yva4rJloe3G6+jC3hPbaTMev9a/yl+HV8npbl03otyxO289+kLXKjkvblrWwJ4x/n
	 Woj09jxI+VP2n+iP6HBSt6uud8T+JGiSYegaa6x0j43k0Y3/TGr2vyEZWlZwQyGl1h
	 /A8no2BAoUPdWK0ov2CqaAgSLkETpu/yJOI+FETxTPANrRDgEbdOwt5Os/boeoz7uA
	 HFEZjceKhEXmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1AADD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176696543361.860.5802779555449259181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e66b4c3a3c4f5262b0f1175daddddf2cbd0f5626750c78e34d365fb99caa377
Date: Sun, 28 Dec 2025 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766965433
