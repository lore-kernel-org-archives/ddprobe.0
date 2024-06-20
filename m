Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CA417545
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 02:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718849363; cv=none; b=nqAGA44Gbf7f9lSvGvyk/U23gMbJF793RQAZzYqHMFI6ejtnT1vifBGa4/QUUgZ2futpGnzqYP0jzPUJEon5V2pjZ6ha1+VTLshWZiIkxg70YD6cS9OfgU+J8Wv5zR/tr6dVSypsaB9rKKlhpLtMYrV73CRb7tx3vzZKcRiKBOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718849363; c=relaxed/simple;
	bh=GmMRJOzYrTZChGNXozyqOJII5c00QUSrWsqZRIhFNlc=;
	h=To:Subject:From:Message-Id:Date; b=GWX3nrZPwyJ5Pqgp7s3KmkFSOf5zJCjJa4ni0yK+9ULLCU1vyCYYeh3lGou3wOWgmsh5zR3CU2lRqqoJvse23zqCTAkiV08Y+s19f04YDxonAIQGwtMsv/4gAali6G23PB3fc/PJ53W4FBPosouUNx+2CSvDauv/m10h0lKW/s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjVGF55r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjVGF55r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA848C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 02:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718849363;
	bh=GmMRJOzYrTZChGNXozyqOJII5c00QUSrWsqZRIhFNlc=;
	h=To:Subject:From:Date:From;
	b=DjVGF55rBA41eQNHO7WCKpwrDWJhY7Xm4wrlq+M1nbd1lITDTJKV1GABfOUaLAU8z
	 7gU7g/qm0OnWgtfXC6u0L6h5YnMGR9CSDZqGYN1mcdgpsx8Py1aLqBQLlbkNW37lpn
	 LV9bpZ3JRYNRZrHd24AMuu/xOYwRFRoDkJR5EuOS22KgYwCzXzfYHnSFuncNA5rL8q
	 sx5yXwQzlRGh/BDmXNryoTJypUPfnnLNW3VpiKwqJ7ci7yepW0XWFIjH11fl6GKlzT
	 9DUsuixQnulIA141gEdBLOxY/oql9eW4F+3luXKcTKLB31PSnmT8gRxSYYF4BveHo2
	 fMZ76SLrOGdaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2748C27C53
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 02:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171884936281.11851.13156095826259345046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d723e4f7ab534a787da61c849060ea0ddc288ca5bf3d1451860510057923897d
Date: Thu, 20 Jun 2024 02:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718849362
