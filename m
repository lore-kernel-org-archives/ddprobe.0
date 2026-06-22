Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4232D1FC7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 03:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782098794; cv=none; b=PEM9ax2GCyV2h+Z3xbntpNg+xtP6xbF0xfEHHgHLmSWDeZfQhDzwQfVLWRXsh7z9LN+HI4Y2prdmZ6Aff9GsMfKgn+X2y3/kGoEWlpzO83DQMwTaXNWIZdxQrYcCnuCZyL9n67nvgJk1x9iB7rsraTxwSNVxiGWXU3cLiKGwGXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782098794; c=relaxed/simple;
	bh=e4AUIn4i/fNy7XkCIwzVUTy42pI8PKFhn/UYSCgUg6w=;
	h=To:Subject:From:Message-Id:Date; b=BkMBG3qHr5DXTkM3G6QNwkMaqSNaf3h+TV2h9trDd2YPFKMIfKMOEbBcAf7LEwh+lcvyhHMVrQQaWVBzOvbYe1g1kuquTMBGVeKkYOqkRE2H8wpiLMZ1masCOgb74mnlxefTGhk7hZZpTabEJMDWn8m4OnIV+AKgD6E5Oc8kAW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZ3yXU7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZ3yXU7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D209AC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 03:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782098793;
	bh=e4AUIn4i/fNy7XkCIwzVUTy42pI8PKFhn/UYSCgUg6w=;
	h=To:Subject:From:Date:From;
	b=nZ3yXU7Th/EgpCGrbvQxHKB8yp0oMGOSD2GG6F96pg6G3Uca7fuUD8xJpVmJSBFBL
	 ZPf8Drob6jc1ozJNtgE5cGPKelFH7dSERK5k9UcRQhFn5bGQC+LZmodZxPQ+8zrEPb
	 Ff/9QmrY/MY69hEdokA92YW9Ax3CwhYZOBHFkfwsrgO1DPIdbH9KKIWlBUUfY6xUR9
	 ju6YBj6blAxPcpRNoTwICaI+Ev79CnM+4qrnyCikEBU+XAA3b/QgT985o4KVhb7vjh
	 QbtsSawFJyCjP9O9u4sCzwSciRQWc1LXeNfV9RsqDn6tBHEGEqWROJn1Nhcw8YSzZm
	 fVrLVBTs8TApg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B37D1CD98E4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 03:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178209879370.17249.8299110137655955538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd8e83f7c56df2c3bf5a453476fd8f192312c366d6e6ec5f2a70145373ea066
Date: Mon, 22 Jun 2026 03:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782098793
