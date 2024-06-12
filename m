Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFD916D4E0
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 08:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718179703; cv=none; b=U0kdEa4Lg5N+zo/I2F0O0LYrEDvu/GtAXoO4uWwpyEmjGVQINf2SD965OcMoSoZl/qAHXBPOhGUtFnkWqVcRlgMRKVTdFea05V1LqbmhQ1YPo3/es8V6eX1upkpSx+ylEx5xgx4X5/np3AMv7ysIcipvGD+Z2nT0XdtcfGoG9I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718179703; c=relaxed/simple;
	bh=MsbZ29sx/enoF+vTKlxj3SEuh+rzKaW5EGUzxLJJ4oQ=;
	h=To:Subject:From:Message-Id:Date; b=CZjU2FbF013csYTtFCNU/37QJzkEqNAJEkdy6WItI3HJFAwENAKBkUz4bDsX2ra9Yf5i5/A4+IpVp/dVhpQCb3rFXuUSYo7UYY4hkRmN/Z4mikeYd1m4+HMrZWkFs9ybq9QDSlfbVfrTg2Q8MKmbgr9ObjdaPmW27cv0CPthvGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqlkBtxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqlkBtxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD87AC3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 08:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718179702;
	bh=MsbZ29sx/enoF+vTKlxj3SEuh+rzKaW5EGUzxLJJ4oQ=;
	h=To:Subject:From:Date:From;
	b=MqlkBtxEEsAedq4h7n1vYGwBFph9WtqMu2A+iPiZgcOy3EaACdpIPU3YQXC2C+kGB
	 ABJ5t0k9vjNXLeMgUd6bdruEMjJtI513iK5NFFHe8IXH32zdhpuZn8Z21bmRELGChr
	 ZwgwWeCxKKSwmhYWGKCiIz18ugUHDH59wWH/NiiVIy+5oio2cCJSzwENYd1lBgXvj9
	 kK0uiAdeHtdDDTLyhsbTEaQtXB61XdrkODOErB9nmMmk1HjiQGaWeDb6MHHx7/EJNR
	 RbTZkHYN35Qew1u2HCJIZgtOC8uVXtHzXDMdKvW7Cy4Czvdykk3dZHh4uh3xnoWSHV
	 iQ2ZrNWCvdgUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E1FC27C75
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 08:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171817970280.27587.16289586340847002338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfaa69a82afe3b39d9cd8555a8a22840627bd26b98e3521f1bee2d2a33ce2ac4
Date: Wed, 12 Jun 2024 08:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718179702
