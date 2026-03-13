Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D5938D
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773376493; cv=none; b=AWb8uvqmZtFWYHSWkDko9EVhScfvsgslerEexoPUvsaP4bTm9DaCbqYdD/oAqWRgwlY2llngy+FwbkVIH5FbYUVjhTUUyt8OnmMRnS+mXc08WChkMTepQ77lWhaytJpyFz2/Jd40L4d7dsEIyEZkKYN5761+hNFi8pClUsXGhsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773376493; c=relaxed/simple;
	bh=X2bbMfHuzQpETWJTQEl325/M1antt7g70ZzeoBtArXE=;
	h=To:Subject:From:Message-Id:Date; b=fAGOeE7lwlOGJXPffpQzJUTeDw+dda42E4tU6QfHo94Rv7UAk2MjMu+10R86eL9cTbCq2ddTbUbzB7b7wAUmg2GCkhhhxSkqrHxSA15yxFLdyU52TezUdEqijv+YOChuapHXQR79CvA7DPC6JWLERrYHYVEDD52vd8NL1y0wUP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEC+GrXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEC+GrXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B2EC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773376493;
	bh=X2bbMfHuzQpETWJTQEl325/M1antt7g70ZzeoBtArXE=;
	h=To:Subject:From:Date:From;
	b=dEC+GrXxCMFVS2tFWfhNZwDY4456avNvuchd7QQWDDQEp/1Uc6W+PqZKNua4cn+Id
	 TXNqiGPR/vnsSrdGmt8ogjqYeKJVYlDBaBqjjKC4waSt8bt0+cdSCOUqYENVPs2pMd
	 kTpL3od+Oso5A1ip21ujyD7V21jW2LRu/04lFRgcW7gP82Ywgq5smSReBlTBbThSz/
	 gJ/igPFNBG1E8WICy6epJ7bJLYDk/DG8zQtJ7ECqP31vvWqI12ZZWOPjoUL+8ifRpb
	 irm7aQoGVkr6ddzvzlJ/ffx9KwUjmk1drgysOFpnm7AiDmZNzWcWtzXTrRF9SGxFiN
	 aap1rOQQRxSww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B3E106FD79
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177337649358.19177.40254847684756310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84e1f5e66b84a8aa303c053770c4fa635844bb6fc4389a62be4b0918efd6423b
Date: Fri, 13 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773376493
