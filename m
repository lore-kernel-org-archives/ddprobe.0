Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348BF1F869C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737102354; cv=none; b=dT4x4iNSR9AMdyrH18plhdDyOhxtD+ylW4vfwzrVm4f9rqfyvlUhaRklkr9ERz0C+4TF9Z8THNhHDsZk3FmovzjWci35Uxuf81CdzSObE62eW4pO8c6mcnO9AawUmQHOumCPYMSSTu6YLz06rCOumk04tl3Ndf5ERNvWCXTVLkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737102354; c=relaxed/simple;
	bh=Bxz+5AFABXOBdMjijtJd7LsxderP7YMJmH6/8CUeEoE=;
	h=To:Subject:From:Message-Id:Date; b=M29bIVYJuym/ZOVP89fPrmHKjxNbriKzbQ+3vAm0tHA4OcLng3/A3CFft5XZr+2exppFl+XvuN589Jg4Yr469dnGfFjncOqDHSR36Z2zwTYZK6grr+Fj8gw0aGmqQxd6njwFauC9QMSt6UswTvJoPXxAfleS3OWcn0R3Kt2ybfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1n/cbkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1n/cbkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9D1C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737102353;
	bh=Bxz+5AFABXOBdMjijtJd7LsxderP7YMJmH6/8CUeEoE=;
	h=To:Subject:From:Date:From;
	b=C1n/cbkte9KLddpHO+fQzJBSxQucU4CkwZshqorg9gNn8I+xRK9cyq29ch4n1MrZs
	 aM1ZUxWPfsFzVIxYS/Ta/ZMEaeBWhYyIo1rTcOzI14WFv0qS6pNf4PVgyXvHl+tkpK
	 z5dSUXdJW2ez1MyzZmu+dK1PeQo6O0sCcv8iG3wT5dagC7e44fWxlHrKfUD7ItI7kK
	 NicG2v/S5Oul1T1rJAeD5hTeW27PdXJqDZ8XHGaopeHx3LblZ/7wFOvztwLU9Wopw+
	 AmIaj2c9/DM00zimFM8NJYHE2cOuXEu9/rhKBHEvgvhxszaODxxt8BetaufhlzWtYf
	 I3E85bVfdbKEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EDCC02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173710235359.4012.946028993940825339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7755c6d3f2bdeaf006e26e9a4d1db30d03213450d52afb19ed63358f4c1aa05b
Date: Fri, 17 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737102353
