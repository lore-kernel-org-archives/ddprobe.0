Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EC01FDA
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745124594; cv=none; b=dFNDXDNNg/qdQMnhgffmtPPbN0Wn6+QZUQfTXsWLDasVFyswxdqKTw3fR5AygpnYip7xiN6JKaeqomvjG5AzqfQkWyKh0Dc+JVkkyYsPX5R1YcXm1Ea6l2gg2sT2I3aOOt2r0xmxTOPZ1/3C1XsVzYTh+MjarQZVvGkbDVCa/y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745124594; c=relaxed/simple;
	bh=GtcGYR+rrofFgNcfLt99igmPX9E56M62Is+ATkPN6uA=;
	h=To:Subject:From:Message-Id:Date; b=BcR32cefZwbGoFyRXx99LQvpPhNgOfb9v0qdUotM63fDKe7Yc3+aBZBqKOJQTCS/a+zqufGAYPd28Ou10GACbKFjOuM3Y/jfQ/HvQJJChzEKnFtjpBy6ie8bNMf8WNwtcJtPZfZaXEpKaofpTE7On4Uac7QnBkh1J7FKaqUN2CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2H0q41G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2H0q41G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD15CC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745124593;
	bh=GtcGYR+rrofFgNcfLt99igmPX9E56M62Is+ATkPN6uA=;
	h=To:Subject:From:Date:From;
	b=h2H0q41GmaZLQhS9+wFCRvojKOaMSylVe9KOugsmwIMFzptZyCIwOUJOZwrkRI/G/
	 m3SZ8JIw4fQqwVxKptObOa/rVK4ruOYsuORWDhEI/DQ47b1IEBFLhT4nwGSzyjQqJw
	 30hy6zz0Hhvha638PDEZhkz4TpJcaQpEKmfU2C3TJd5g0SyMf5tMwWcCtQy7TLTfbz
	 lkI2ExIdz+ENnUFhLau9i77ugq4sGFzu5r0at8i/Ul1Kynzl2vAIjxSpqBGSPivZe+
	 ab55/rSLhH6jEkgWruj/Kk9w4adJXgeZWW1kPc0pfHAlMkGMJpIEXMpUx3CR/0cpRb
	 bOIsmyijYIWTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D60C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174512459358.24644.12550809132756336872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 215716187b90142e85f757e400f412fe81b559019629180a10161e875a6d60b1
Date: Sun, 20 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745124593
