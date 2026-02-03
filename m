Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E09FF3382C8
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770119034; cv=none; b=PpeaNaIJftDdRBO7V1nLofZQcn9QVporsSq/BiikDPLFoIu7wB7zNi/MO94VhcJD+Zqu3U+UwXpxiQH37Iubdmun7Wh8t31tJiW9yl8wlm7JA6L8SPsg+e8tOZHjFHtTQga0Lap5CiDNQuB27pdfPuzmE9iGln+mpTtFM5XCvXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770119034; c=relaxed/simple;
	bh=9Vos680Y/AmJE94PhWNo+vaSnx0o9BNAVe0I3ehaT1Y=;
	h=To:Subject:From:Message-Id:Date; b=pB7XbYT8t5MBfPxJ3fKrEPkYYYUyhtodmaRKO6o72DkN9R3VqykRWYLSr9iTbVqnZ+oWlLcXixfnKEc0klePI0nLVxM+JePi6NRUH3F9eEh6nU2L94RF7UX2bSP23YdKbausCG1KnJfsFM89ECdqDIteGslAvLY5/Tf9uUJl6Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTpg9pMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTpg9pMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3B5C19421
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770119033;
	bh=9Vos680Y/AmJE94PhWNo+vaSnx0o9BNAVe0I3ehaT1Y=;
	h=To:Subject:From:Date:From;
	b=VTpg9pMvXaZwgpQ3dtdOO/Xbc0pPgM8SHrkN3eHUTW6z2ZRr2NnKtLM4XWvHW9snG
	 FHNuUHQZZj9jBTSVvaPLvRa27hTJbzPAViUCq02SO2mGhPBHhKoS8x3BeTzwQ+B8T2
	 0VTGWQlHW/hXuBt1k3gi55pUrBw79u4zH6geq6NnKGOrE3iayX3OgwP9kO8FMcjxrK
	 3wgbmv+WZ3Of+a+QTxalC+/fMxFf8MV4weHCl8fZlvd3N90uUmquYpD+jfWz/DPuUn
	 IvPoV7Cs1i3CKRh6ROI/f/JQHA9xx3vPcUkMsZkDvDu5BUtYRwuymPEi0gGIp8Wi2g
	 1mYJJeilPPRlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E6BE7C712
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177011903360.15319.2421463576376390478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6686a22b3d62dc6e881c57e7e47ab7f62cd499c4a4ed8f63b6ea073a0f2d0da
Date: Tue, 03 Feb 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770119033
