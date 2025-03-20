Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621141C5F18
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 06:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742452194; cv=none; b=LgE1WMIjsh0k0NtvJB8rqr1H76ssY8RjuNp5UvQxlMAcThjIcZSDpqlOkixd713WbMaOyKxM/MC9JFEGDtwHtLsNC/mOhIekSARcfAMBb+Kna65ibwhIx/UXgcFe0TGwr8Mq1FhnfZueIdnaWL9Up8IvKFHq8MJAeyxfpr+qgGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742452194; c=relaxed/simple;
	bh=nSBWTPqINXzH6dseCpeUtkbtRylitjV3JWkDNACLyyU=;
	h=To:Subject:From:Message-Id:Date; b=nbA/STtPQS3ujOfDxqlP1dTPFebZUjInvhwdjDVzGhY0AfWdLCV8oPPE3MrnbNV5m6Achvh4rh+LzGDx+DnLfDsiJDrI6SREbVKW9MMh0qMQ2+Mf20EEp3X0/stHH5VkyXPZxYN8o/DU6K0MDhENtPciV6LpAVYlUfuD99Cy/XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DseTYkk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DseTYkk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC84BC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742452193;
	bh=nSBWTPqINXzH6dseCpeUtkbtRylitjV3JWkDNACLyyU=;
	h=To:Subject:From:Date:From;
	b=DseTYkk2GpmIgxoKbPTIRlGb06cQhMDZKY1SdnKRjAd0+lSbS3IZbVlYf0/oTnhNf
	 jOTHfEQZ5gMXL1STRh4tQmcRJQod3JSnI8xnU46iJhZ9xqVdfaqdY94S725dNiiBmt
	 PtGEt00epWAlIboO0Y0Cq8rM5Dn+yVuM4itCC7VNas0W7NQ4AsFH2dWvbM59er7p8P
	 5VQLtCwBaOqj6qEIoUchKoT/A7KG0t7xFRr+tDgVRS1JMLCuHX49k/gzylaLNZE7rg
	 zzvHnUx8c+/b6hBXOhxVqWmaPxRzsUwP9e/otJHX3taRRKUup3tm84pmuXKElgj1Zv
	 0L/232DHyyVeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DBFC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174245219368.25722.13872156759247970622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95cb1bc89874a5e7ac1452ae4aba9c745b4805b3fca4073d085bb5b1a1cf3d06
Date: Thu, 20 Mar 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742452193
