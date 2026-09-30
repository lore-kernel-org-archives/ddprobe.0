Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDEB2264C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790740834; cv=none; b=GdmoPsuQr39maB9q+XZCa38Vt2AsJ3I302xbB48kxij7bWNTB9ZMIrA7TXuMCb3FBhUbPoOjJCRWIylnd123fPnvWi4wVMv63Lm7SREaHIKCd6mq071BRomhzKdoMhGOGDgVUQFoxcN2J3Ze93eO+MxaTQUyhnQ+rJCHa78zGsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790740834; c=relaxed/simple;
	bh=G+9mx5MH4PM89Zaes4bt80KAQtj/ImdlipDd2V8dcsM=;
	h=To:Subject:From:Message-Id:Date; b=giScDG2q5ONQk1xig0FkrxVBD4x2Y0nEC023Sd/HCi9KLTeGgjoKfEupZO8wSKOlzfaAp4PqhsBqoPnfA/4IKvgLh1g7kBiDm5DfFM5ayOA2+znssu+9HbXhkvUlCottJzbnko7uNnUib4q00oZNoCp1I1CDkBSeUocIG9Yi/Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHG3+quT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHG3+quT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFDCC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790740833;
	bh=G+9mx5MH4PM89Zaes4bt80KAQtj/ImdlipDd2V8dcsM=;
	h=To:Subject:From:Date:From;
	b=jHG3+quTOzZkN/vvvnk/n9yw0KtLoGuqXzzYMvlZ+ZfzoYSFfmHeFbqCknduFynJm
	 G4mwiGG4P6piZbvG2t0iWpUw9WiBjWQbUP2lit7jiwbjGfKtp/rdLZDuQbSpIaKt/2
	 UYnSPNzS+7iqv3zAiRjbAAQiq7yOV++sqE9Dc756cZ+U0sLw5an9MrNejs2psf6E0f
	 qkAKGz3k+JhhdOn4s9HkR80loknadO7J+d952RXt/WQiPjaQ+t0XGzWkMqFfsISwSE
	 f8y5gAYnVnTNKB7CVLCdKBdGjsheSo+nVeuMJYo0wyqqgtvNF8LBLvfMmRMkfAS9MU
	 sreCcp3bJqZ3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7C8C9830E
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179074083369.8626.15423077049221359609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 776812d5fd14d3dc8ee5ffe9ba875eac7a74a56812145eadf621cd1ad350f536
Date: Wed, 30 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790740833
