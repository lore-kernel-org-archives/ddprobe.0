Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4AD1F0E4B
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741823333; cv=none; b=ciLeFXQTa+DZ8sWqEAd8sgqsEgJgZYEMIiubUYOxYcxScZ85Ro4pB/RzAzPp+gHE5frVFnIdJlXGITuErLywoU2NDMW5cBIiWPuF5A30453+zyPNk7136pGFv2D3JpsAFdM/Dc4MfTDqM7FUYzHgYyTUiFl36PpqtDXQXZ3VUeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741823333; c=relaxed/simple;
	bh=pyhErQV7qi0qVBsh4+efRPvRoQMnd8BjKQbN69Yji4o=;
	h=To:Subject:From:Message-Id:Date; b=mv2QCgDAFD1NPI1JVNdCEpq0+2fIj++U5ipDSv44/3TSXblfsEqc8kgwiiANls94vc87to6Oe/zEB+vwaK22qu/n9GuQXAwBIkioDhxLmxwwrr5JVmZO3v2uvTuzrMJL2tdS2cnROSTYCNEHvHhNF1HErR0ZM7SoszRHLbQbHto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cu6sGkT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cu6sGkT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFD6C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 23:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741823333;
	bh=pyhErQV7qi0qVBsh4+efRPvRoQMnd8BjKQbN69Yji4o=;
	h=To:Subject:From:Date:From;
	b=Cu6sGkT27lxB8dwDBn/H+eHe9Y1hpRdbQqy80hN3qOl10tGi4XIc+IBLSXK//JT/x
	 si0CS7z8OfFFv70HsiPpq+x0kGXvXxyfvzAVUyOGbNzAGjvsp0GQMY1B8WApTspPt5
	 phkor+rMYLh6rjqJi+Qjvzib6Jtb4aTu3k05466F7BCq51X+dazR6CvsltgdpiDS8C
	 jOe0+ZM16VFGw6pUGKKhzUq1K+C+gnNC+UUA8fc62Rv1qyq+DjVTL38czW2AickPPP
	 Lw7x20GPt3OuyRMLFuUpQshjTtwXNnznpe936I7X+xLQl06o/bD8fBW3GvFEcFizlK
	 dccxwy0H/oZbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973B2C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 23:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174182333359.18582.11986006207726941869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c4ce67e5c77a8262067cad4f171502675098e6a7069e14dca5f2b283e20fbec
Date: Wed, 12 Mar 2025 23:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741823333
