Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C8F6BFCE
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748665794; cv=none; b=gADpcl0YmYkDvNVNTp6yvCVu/l/ujGMk3ckKdzqomujwtpWkjFmFFdaH+76kajKJTSuyP0UodhZAzKKqHsdnMmmvBB6EqO6VMDmsB/o/I7w8G1KBLwAACiiLCEdIuNjR4EMGXyRPM4CsDIL2lmhznnMIxgwS68E/+C6JlA2UHqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748665794; c=relaxed/simple;
	bh=p2QRRJsTsM5RfnpEGyrIbV1VQaA/KgE9cRbK5hILMwU=;
	h=To:Subject:From:Message-Id:Date; b=DRLcJw7L2VicI/vZ8TBCQgdYc5JW9oiuUiVpPM0HBWysZo/6Ax5uasIBcjiEiyTgac4GVxnXoHJ40LmjxwT5T6RMfD4AM3+KVhF5+BQqTPgAiTYkY4rnmScp1tmrNWb4Rfidgp6kSuyUsj5mjQ8y76cuK7fgfXwfgK8UTwW+1TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHhcsMzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHhcsMzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7D6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748665793;
	bh=p2QRRJsTsM5RfnpEGyrIbV1VQaA/KgE9cRbK5hILMwU=;
	h=To:Subject:From:Date:From;
	b=qHhcsMzLlsaVcP//dtX7R1NGr/aYCG60qMG888RblDNDjLar+RTCGsbpv4eWkLj42
	 NeGC/vizfcOZ93qjdoP6A0CjeGEe8gCD374b1dKH/b13XtdSUEYftOZFG1QbrEQmJ2
	 uzgMp+h79U4YFl+OP9SlF53i5x3hHQCep+n+CE5qAYGDYkaX0rTXwZk6Enl3bYx47w
	 J3qlm5ewlT3EwNPxugV/M/DEWPX/Txhqx1F1nz6qNjATfQNfka1QAyRqUySmQOKCr2
	 blIS8f+Zz8P+X5rSsHK3/04es1A/DhtWO25zsHB86vuUauXLUq5dDWlF7C10NNHiI6
	 qCdYJWyziSe0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979B7C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174866579358.2049.4508042888294452015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e98cf8e0db85697f3b5e9134510aaa10db3fb84775c925b4d417b6c907c22611
Date: Sat, 31 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748665793
