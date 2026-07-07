Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF2F322B6D
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 19:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783453714; cv=none; b=pvqIjmIeGLcpjMHBj/AT/fXrrN2i49eLA5VFMOZM5aHTPiHBHx7DP8ecMMvEK4ujmcJadWlhW7Y9W10DdQ/WJDakDAVlBxWzc798FLKfX21e0c9Zi0MQ2AG6QWWSlzS/peUjCGj6s4KIuADL44rzBaJL6zrsefetvOF7Fcr2te0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783453714; c=relaxed/simple;
	bh=m1DgAVwv3rC6PYTKm78J9fUTXJ52tblQxPaIQRqCi1k=;
	h=To:Subject:From:Message-Id:Date; b=U+lK35F4GltCkg2TkFZA65qp4eAUwLWljNomdaAJZpnj+Gkyx6cyExrqeCVEYCjJVtBMOXq5HTx7u1vk8aVIgv7/WAc/bT5VZE5sm2yRifVe5fsMeNQeWteYzFDlXPJY52d5bUDNx3vuiiB34h8jXc3w1PqmPCVxa4jIIyT2COo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9wG2i65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9wG2i65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA08CC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783453713;
	bh=m1DgAVwv3rC6PYTKm78J9fUTXJ52tblQxPaIQRqCi1k=;
	h=To:Subject:From:Date:From;
	b=V9wG2i65SzyExTT+jwdZQeEOQM8G9QnzYx7X+P+yOQrY/pvEe17c3UU+i7N+IXz0i
	 AStnIBVw3XvCouDQXAIdCfAGHnhCU9nBQQgJg2HrJoqLvXiwmsbh8WE1edugL83fhQ
	 8dZk18AAFlt/DwXSaBa272Qbi0PBm/myBOfRhKyW+tdPWB7uSkU8O/knVGAN7wFmui
	 EizGxf8aqJR5OSHIGr6m+W86giepO3WRtxd6CL9e6js+5KlhZaPWlJF4kEO+Zz23JB
	 uU8nJs9yUsR2uOjx/SWgz1o4IHIgXcljK1s4HfGNu8LljluFW4HefxkmLPWfoJWJq1
	 pMY1k4M/BcA6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D86C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178345371368.26809.10163147920793492456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f04b527494552c6a117727f6ad8b97f51346f9fef6ede234fa90d9a222892e
Date: Tue, 07 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783453713
