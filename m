Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2566B37647B
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769634834; cv=none; b=Yp6Je0DSfTrwmFa1NtWEdjnDMRnbU8cbmxduPxcn6FpfGgrrDR8BSO4+kJ+PqIg/Kw4b2QVPR8GdFxeY1v7AbQe3r/1LKzyWs+Fd6cA+T/oVb9SSbOUIVE04L3h+V62Nn2l9rQAqeZ38eS58cLSa0dYb7ZJ7NLEA9RomQRYwCow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769634834; c=relaxed/simple;
	bh=NJPjkBdE+bstlRFTS+HJfA9hKW0s/ijwCinoXKeeog8=;
	h=To:Subject:From:Message-Id:Date; b=JBPXWLd9zlnUv6cT+sIoW7Zbl2/AfvYnnmqaAFD/9UxsrS9k3gBarYagXM3dwP99DLnJJ78ka/KWJgT4EEW4uB6etZgNneetmD6R0+rq1XMRZFIMlQAM6ZmI0sXs2fb6UJii/NUG/z7MPoq+kOMQ28Xx5dp8tZsFrDqIMtDQ4fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/rQuaAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/rQuaAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5758C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769634833;
	bh=NJPjkBdE+bstlRFTS+HJfA9hKW0s/ijwCinoXKeeog8=;
	h=To:Subject:From:Date:From;
	b=f/rQuaAmDUhyb8dsgw2zMmv1yGOEFFkPJsg/5Vbx2tQjVwnMt1/FVhySJK5UIhW3F
	 Yl3Or2qiQfd6vVtQUm3DkVTKeQUdinuTRkS5KAgSv4UBNkhEXVTMkYw5/xfMwVrISV
	 6pxTZE8FpJzTgKxcc++MdmQaGvXIYBJqyPPVtrZEbYF9gXo7dvH2JVvlgzi5Lrvawo
	 4iZ/4JSKX4iUYy5hRUQBanv9hn7gUEcc6EnjJYWVv4KRlvOvV2S4TY5fHsAuZU5e1V
	 H1AHu9YOkYXvBfRCI7h6CWZNV8jci/k1h77qX0jWFd+Cn5eRgioVfCIU7nCHZcY0r3
	 vptSGR0K3E4FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A33B5D46BFD
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176963483359.23747.11377153692539428807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333d530ff0ebc2835a2cb7f0ed9afb534a4f53cd71638e611e9ee1043229b363
Date: Wed, 28 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769634833
