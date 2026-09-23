Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F6349BD61
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 10:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790160037; cv=none; b=n4CyoCvza8O/0UrqsTOQSs1pUc4cNT+ShnY9DX/msAXAxO46RfQ+Os27fSBfXTHz82UJkqwwFjb1+OXbLv7PrpABlERa0ThGghXeGrTK6sTSY91L52xCBer3kB5+wM5/Plix5Nql/m30lGfrB3gsBAh7BFqfxPwC0bxARIcdPCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790160037; c=relaxed/simple;
	bh=KSYrg8Ki2GDrWJsIKbCOzoFIyfRIiVRceOW0QLikiys=;
	h=To:Subject:From:Message-Id:Date; b=gR86S7EZ6MfdwMZIE8Dl6oJPnekCmzuGuFyCsIpvpI5D/0ZkS7kPWKV2QNyll15QZzRJ7MDO3OYn7ZhNfFpdRW76HqjQKc9QkJ1nPN/hUKjAjFw6CH+2SK2gJgUcPAuEL0dn/qU/hSbIq2iVO3oFIvb8Sdpach7iI++zXJy9mmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYlFA+3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYlFA+3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D610DC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790160033;
	bh=KSYrg8Ki2GDrWJsIKbCOzoFIyfRIiVRceOW0QLikiys=;
	h=To:Subject:From:Date:From;
	b=NYlFA+3HMPg9ynvUxtXnVv5fiZj7RMFGPbNpdYV67lpYivlhL4ObLSnh2q3sC46yZ
	 wWtCZa2ZTE3QLQA+/3i83ndLXyHYmP6EBS308ae4SqNDvs8/IZyvMY0AYD05P+46B6
	 6vysy2p9KHOGrEWCbEcZO9f08NlFIhNNiH1HHE21dca2Ynuzo775vBRW9EBovVBrRU
	 dZ6kRNH1WL/h3xepjWaO+1je2V+8N98DeBF26L4qhm5TzTwaY58Cio5+kB4iUdAsDX
	 KsTMLe3UiC0sywPsC4mciRhLYSb7bb1PukjdJApniPtrIqVaURQhCosEXJYV+JYOHm
	 HVIxL8ITkxBfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFF6C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179016003370.10632.11586046905672695783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1780441332b08e33062d8da42014d0fb5b335a5e6b77ed3fe9d2b3114103ca81
Date: Wed, 23 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790160033
