Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F161514F8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 15:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780067554; cv=none; b=ilirXOPFCdD7KLhuOWMsp29aydha8BkKkI/fEG0xE4WHvDdVEFUxODn7bxKYfphdIVQnHG7sPYmvAEM3HR8dv+x3UWGEa6O2OWs+nF5oXRbZrbCt45IVjnMHR/ZxcnjyC4DPtNupvhQtSJCoucj1njgmiJbN/6bVEi4+fz8j0z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780067554; c=relaxed/simple;
	bh=l+593yWD16MFTp5bK85zgZ6ptPcAgIL0JpGBlDZlkP4=;
	h=To:Subject:From:Message-Id:Date; b=EDlBgUMhoCeJnwurafbXvMfp8mAkKv1ISfuAqsRxbjyrgREjG5FCrIPJoGJ+D0H1jkS8HKVTaJmYoNprG+GjOepV155Jd7EYzmsLSFSRnfMdVfd9hr2qAOXecEDkcxZSS0zdG3And6flTyo1qqBY+lULztGpki6uir+/0WvRhM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugIHxxTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugIHxxTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C487CC2BCC4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 15:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780067553;
	bh=l+593yWD16MFTp5bK85zgZ6ptPcAgIL0JpGBlDZlkP4=;
	h=To:Subject:From:Date:From;
	b=ugIHxxTw6ZflkYn1bIDQV8KbLZlHX0xnhcMmeHbOklDJyDbGZuiX68+2DoYcjeq9F
	 nAbMbCf8j3JKme8nqqmQlr1FSSaGYyl1392mFfJnkWCsnQg5zxo545ESY14ugjVLld
	 FCzNFIWYmTBOHzXewdIntNZxNm9zuPdFqzdCt22UBW8iln31irGZw3HZWJ/gJKx39M
	 75POQmSII7GNWd6D6oKdfsGgjCmfjOdZMu84CSd2k80fKZ+B475QC53gj7NMIvxrDB
	 q4WQB0NYzGNCJ8jfxNn7htlYW/2dsSQpDM6INgZTGw9ZHj8aIn1W9E7NbXxY32Z3xy
	 jKsuB2LrLusAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA892CD6E50
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 15:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178006755368.27800.4209797097863065391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d205f79b4dae4bbc06eb70b8b7e1f75cb2f00dd6d7b460505fcfaca4109d306
Date: Fri, 29 May 2026 15:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780067553
