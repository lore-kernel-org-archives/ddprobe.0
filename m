Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0888D3C3C
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727440554; cv=none; b=YSR8rP6c4U2gCZwL4XPM2BnocXYpVVL7qsYdqzM52Xj6Cj4SMwjtsVz3JeNRNmyib808nm+jP1SOlZEF+Q5txbve63vtu8Enq1OfuNWgLCnwR2G+nPaEsnj90CXHy8+INUlR6ISgt1PXDpI32myvWPlLLbC8ZpbR6V7tnvVkyhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727440554; c=relaxed/simple;
	bh=bTN4DzHzZ9bporFaRT7dHzcJq8XfbvXTs9oTSdm26V0=;
	h=To:Subject:From:Message-Id:Date; b=PJqxc2KtUQCbhRacptsmpv8YF7iwPyfIOCWCdTt8AO49gTVHAangoPNymExuEqm24KvkFIk7L7mOdLRYt4er+X807sHXrgphtmb4p/Iju2oCu0fjcJIzTR4L5iyf7Sdop+9RHZr3WMp0zchW8PfS4I5GYBBOVKg0JgmXRu5wCDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xc94v7E1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xc94v7E1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3180C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727440553;
	bh=bTN4DzHzZ9bporFaRT7dHzcJq8XfbvXTs9oTSdm26V0=;
	h=To:Subject:From:Date:From;
	b=Xc94v7E1FRmh0sgjks2eBz6UqThWPNPukbEnGi2eLO0x8+mroJJsr5QWUiNvimlaY
	 vhIgK5csqIA0AM+yLYE39rbWyp2uxsg4ZL7DZNeZAqS/Ki/UA+syWxcRUGBS9DijiR
	 b+4OB3Ia7JWDjQBrRZy3GHo7+XUUpF57lrDFzT12ybdvQGAYVBJt6hW4sRWpLO0M30
	 YUx0fZhjHi9M6Kx9gJ+1uAZ7MA47YPPnA7c3rkGhboBwPP+EtEBtPgNg+yV+DH1KIt
	 ulKl4ehFfW5cvL/ksZdTBtDs9oVgbsomL+OP2a+uV3iIW8HvkdFBp4G+DmwNBbCBAL
	 MpK2GDiErN5eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919F7CEBF9C
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172744055358.11374.14090265066599645449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bfd8a583dfed7ae1dabae69fc8ff17c913d1d475e3288781d97f15bf3c0b18e
Date: Fri, 27 Sep 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727440553
