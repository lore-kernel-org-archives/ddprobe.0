Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F10A242D83
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 10:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763373714; cv=none; b=MW4Sgl8imaCxnTV3kvTqDz8pncvqML2qvrwgC+MVcpRzHe7MbpqovhPPr8yHXzEXu99JrEm7QL+L54bjP6vNJph9uwhoJK9dJh8gwNnKVf/bE5UcCnrMY7BA8iA0OYD/k1QyAGCE5bjGm1iRdg2qz0LqO43Bz0t6J15hZSiLA3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763373714; c=relaxed/simple;
	bh=TssfWgG6V3gxidGFyV4p7/ocszqmIJdLlpasjdp+4Ig=;
	h=To:Subject:From:Message-Id:Date; b=Hkbq7E1FohSBuFi2LCCvOgLLkwYzhfmd3fXF0PxBkFTtxReMvyTV50cKA40LzPwJCjr8xy8LlzFw6QCbCDbBP3ImKj8IOWYBjm1627t9KcYUTCf2f6NItmKOStwaGJ+7vOd7l2F6ygiOKQKzVEsw/DunZ0Op65SkbxYl/mXKR8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gktBQ4Mh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gktBQ4Mh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D53C116B1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 10:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763373713;
	bh=TssfWgG6V3gxidGFyV4p7/ocszqmIJdLlpasjdp+4Ig=;
	h=To:Subject:From:Date:From;
	b=gktBQ4MhB8sDD2dXhdLV1ludHruizI8IckcaFGWHzimZMxuGL64m8DLsEpMwjZQ5z
	 6yeZiQ28VKA6CMyuFIpC5AkKtcpEWFXY6wuR/J9WksAvA7q0YfdmT5Rc6GsWF46Mj1
	 CA6NzBTjsR0H/GhF2y9JA90TJBIbIfnutsQZZ9fYwe61GyDDNjSMXO9uDLcGlTa7fV
	 QEgq67H+vTIodxCwC8NOZy/QV3T25jVq7s4QVC29AqRKvWGqMza3wCKbL+0MXTczY4
	 S5uHQtNX7yhkDK2TsIpHMbZILZdQQ5GaZdG9bDWd63xf/BISHYnP+3MARmlYRT2glG
	 Eft4JbEk4TAhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A3FCEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 10:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176337371368.22883.14727864373826844516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d34d57ddd92239c8be04cb0bbc5e64e7408ece61827458cbebfc0059de5657
Date: Mon, 17 Nov 2025 10:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763373713
