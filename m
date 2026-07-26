Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0B72E6CB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785046234; cv=none; b=ZCwMydlWTTkH1wyY+x/OkkaaK6GFmtVCIwPkNimuLBXsrZk5+KHpNMkXFDzszQhIN9mDXHZE8A0F1Lun8hPk8Aut5cVBqHSnHFSJhKW64B4raO4V7xlM0cEv/f+4f+6/vyfsORnlrArw+N79kQfHQkiG039VNGPyPdJETzgyeVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785046234; c=relaxed/simple;
	bh=Y6PEPO5tDNjnzK2/ZkgJE8ISEMCm4Iu3PcTo4ezuz0s=;
	h=To:Subject:From:Message-Id:Date; b=BDcrznN2+bG6v2PK7qzSGXIv9NCeyHSB/Gs3WW+KHRimqYi0/T3N60ExWJo/JKx7AgC92GLQcLAxMmBVOlUFp/qOvH9yFExOSguwk7kzGSwI9qF0RTzUQ+cHryXW5gLVX5zQmgMwkuUuA3tdMLuPBZpRLGcwWnOC6nEYbGTkQg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHe1ZTjA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHe1ZTjA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AE4C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785046233;
	bh=Y6PEPO5tDNjnzK2/ZkgJE8ISEMCm4Iu3PcTo4ezuz0s=;
	h=To:Subject:From:Date:From;
	b=tHe1ZTjAwpgZYRYEdh/DQLXZ+4vuGHBmJljVg9BkoCM6bU+TurT2tQlIqM82Vb+7e
	 NTVF8M/usii73hCwoXmI2FQhB2VkDk4abTUv4t/ueaGthpV5bFNczN24+lSokkkiZ1
	 LroHaYYMA5sbACJdB5TXuSCNUKZIdCAqByw9R/oGPnXeBfWQnLxGLj1QU0Wx6iE5TN
	 GNcaZrYs0pId8WpuHFCkjIXMFsddOE675bHM+y7ObP37uKOUctrW5y25OcRQ8dnwdi
	 /BQQLEHTaVvP0Qiaxq7X73G4cN/1mlZSBRxXWkXQ8MFKVrb6sniuqMMI13QoQajr5z
	 2IPjrwCkJzivA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF943C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178504623371.1367.2308395212676164597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12e796b3f194ddb07a7bb5c0ad0d082c0596138d5f9b483dd3c3e80bf9f28988
Date: Sun, 26 Jul 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785046233
