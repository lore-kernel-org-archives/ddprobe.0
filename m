Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F87730ACF2
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771537494; cv=none; b=a3kUxMwT9T7XLrGdimTtLpxUvgv54jSP/KWR1OtdY/6c1sm0tAolQCm+UVHapY3FHcdyPO8posGb0yfYbbf3ta6QEEs3IIF0MFZNqzoutjTo7nocXZ3Q0r4sZ8M6xcyHndnlWAZUWUu8eMtUBNdPFyBQzTpRO8XVOV08r5n8nvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771537494; c=relaxed/simple;
	bh=DnF6vroTMvjqyOLj70eN+zE4TTTAhyUtlln89nOfptM=;
	h=To:Subject:From:Message-Id:Date; b=okXvUfC/g4AeZDbCMdf/MqSSvcaxxyzD2xGqy811VthcZghdPPt2Wii4MhX408uvlvmYko9TlK/OrXP7ZyBU/QcZd7+G/HUcl5tVztCUy84LPx2mqVQlKpYamGJuVf7gUcEugA9fSz3YxjdaZFNXmzPl+b+uCdcPre8JCg/iEEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANrog8Xd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANrog8Xd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86FAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771537493;
	bh=DnF6vroTMvjqyOLj70eN+zE4TTTAhyUtlln89nOfptM=;
	h=To:Subject:From:Date:From;
	b=ANrog8XdVNd655vUZi6R/uNBJr3ykVtYranvGZgc61hwDNPs4rxuCqHjjJb2ck7jW
	 2MqWs5w7XVtHOyVWtWlnpkSCaAt4zclDxWKsDLxY697ChSi1AN8bX14VX99W1ZKvmL
	 mQpMLd/RGNt7vyHB1w16zdYmffPcn0vdXuo1vkNfsH3RW/VucHmqbSxGqIRVyLN26f
	 yd4xiJ4lq5B8i8w7EN2q8Cqn5+JMeY8D8wfgOZOjaYv5Qa5TqYP3Pge0x3fDlN0m9q
	 DAHx+r88eoR4pYzHmqSxs+D2pyNNBptTpT/M/t17cbVjNZHlaO4embvTtGSGjJK4dn
	 Y+Y+X3tiMkvdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E91C531E1
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177153749360.26933.9999824876945871879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f284c2a04b6b4178418aeb41422659f0f5d7b4a7626a3ff49b414275d6690bb2
Date: Thu, 19 Feb 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771537493
