Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E0419AD8C
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 12:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727786154; cv=none; b=Xl/IkW3qIzGCXX898I13Hiu2PxnftxMKbEFWo5TU/eeMcYEvqSs8fMnfO0NQUUdLe9iJUNyuM7I3bIoNPbqccpRBGKLs6pWKQDxbHUxeCJt9T3D2Bz9eLh+g4MSV5TArVCrQtrf3wRYstuC+IGDeuOkgyIns2d0J9j66B5+yVzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727786154; c=relaxed/simple;
	bh=81VjdlV5DBNxqLaXmPXHR5HktAiPexQAw8QmsVNsEtY=;
	h=To:Subject:From:Message-Id:Date; b=dMdS1WrTUMrpv3vjl8PXsDa+XCwd35r8RLW2hPY8nqG+IVhsE8gpp0PIIlnMF2SqgCGb2d7XldISIrp8OEi0PmfxeNA8CHrFblghrqrTvgPQVQWSU1rV92maF37lWTx9yc5Ouc62d8c2tjj786gxLhX5MCW8ttih9W9DA1IjE/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhrUZwq7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhrUZwq7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDFFC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727786153;
	bh=81VjdlV5DBNxqLaXmPXHR5HktAiPexQAw8QmsVNsEtY=;
	h=To:Subject:From:Date:From;
	b=lhrUZwq7wZQl6Wn+gDIBcuUpNC/pd9E1hutC74wlrRbJxrST8zo/3DQDXQurnNPbN
	 mQt/6PbnhlKHMU6o7fzCoQNRKXc5A2dRlQYBekyvflnk5Rt6VnxVdBO8y846SyTJUS
	 McgUQ8MfQWzeevsY9/FZ+eV7OIPQGQfck38pd0A03pxDBh28r9uAT3fgGMedX//U7d
	 VN9enozzYxbVzwL7q4D3s8xdDxr3BbE5/gUOhUhPW+JfSzCb+Ez6iFZ7bK+9x4QOLJ
	 no6qs91asM5zaB+bzBpbo6h51H/ppZFY53r3u0rgIvUUk9kjb4MAmyYCF1Xo3GM2BR
	 CQUdWHStUvWoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFD7CE7D1B
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172778615366.32089.16332605935691296025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 702c3c4db547588670cccc406a130b9badbdd4244c4a2123defe734132cb7994
Date: Tue, 01 Oct 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727786153
