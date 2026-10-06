Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509862D1931
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791255634; cv=none; b=cz8VB2QNsK5yahBUprypTDdBnTjOrDKcbiwKGXAKcw4ONE7V8C6zW/PnLiXLf90OZ7yJ9KeuE2tr0VNFuIDaBUaVryQC745/gkW3VB8bnTuY6n695lpWAo+qjc7lsH3yVtVBwrcL4tK5TsZ6lkpyeg3bHQLuEwCfsKm+wbKF1sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791255634; c=relaxed/simple;
	bh=BorgH4q4u7yy7Oc0bXF9TlnCEJ1htxcWfN4Ws9fQK6Q=;
	h=To:Subject:From:Message-Id:Date; b=UoGm/WBJqTNLLlSspZNelpIzfX4BhTFgZ+ApcFFNFn7qW6voXMLKNy5DuOpuAi7nE/P8jJeMSbz9GSNdFU3qoudRgkxdVlVDUNaxzjuDYXrwr3zekRCS8wu3DgSbTZgIaM0WZYkv2NoPPwCpA6QFW/2VrpydpbNuVxuqRLw16h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/EE1oUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/EE1oUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9164C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791255633;
	bh=BorgH4q4u7yy7Oc0bXF9TlnCEJ1htxcWfN4Ws9fQK6Q=;
	h=To:Subject:From:Date:From;
	b=W/EE1oUpokBi4wFEUNesucdf00Y+CExlf79dxuRf+XotZwgKfqpiBm+GSf8+4ctm9
	 B5qqllL4sQeS16jZ2ZPOy7+m3D0S0STgAKkvV4UVU68sA7tFMLeXCJuxB7uQaKpaTx
	 cflqF/UY92Y72BZcBi+ni56y7+X7uBZlWaGlXgDIjSAnSdLSLcer9O5hTcGP/tGGQe
	 SCZ2i59zNTO3a8t3MPDIPG3ql8MNbxsUOPChg12J6HaPfB9PV1PZSnBhWVcwkbJDzy
	 WtIDzJNNH1lBNmlmv9DtNFrwnnFIZwh2M8P01ahR/GlYJLiVpG1ISfonouFTc6yD+f
	 gMoJ3vPA9gzow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12A5CA5FFD
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179125563369.23537.1016689394512682716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c5b89f46af89ff07e8084e0e88177989ea70b6f047e523ddd5bb57c4c1b86e
Date: Tue, 06 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791255633
