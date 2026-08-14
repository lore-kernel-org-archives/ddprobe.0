Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51632364933
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786716034; cv=none; b=ZmFulHKWjdP6eShDsbNsleWMeaE3T8R7Tp3A2PLAaovIMRtdKq15EazzjXrctu9tB9Kc+uGSkesze5Jpe6aLfb658d7l10DMc+MqD+Lts6Gumi3UdVzD2kBqejGwCK6THZ9DxDSUj+Ndhl1mcg4p3bvIVgT7wf6++5mzkuWgc4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786716034; c=relaxed/simple;
	bh=4a+KuZ9C5bAyxX6Zb9Pxx6uiXTwiBOWluPpnyvSyMrA=;
	h=To:Subject:From:Message-Id:Date; b=N5dvurBUQE9uKSQrHz/MKu+yzbttgpNwZlIjuvrKVRL+DtQxFCYLGdUnAoTYdY2+VB0FwaYSmmUJKodznkUyCeBIlFl1O6rq/qMyfv2LUPOORsbclqPhD0AWBeC5nxWo779mpsRfFU2pr5ydm/3aocv0d24jynDOcpltKBbqd8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBhn0zct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBhn0zct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA96C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786716033;
	bh=4a+KuZ9C5bAyxX6Zb9Pxx6uiXTwiBOWluPpnyvSyMrA=;
	h=To:Subject:From:Date:From;
	b=aBhn0zctbLzBx01mniXweONd1efCwtRLtz/prMKJ9wwSzE8RcdhNtvmDu4lB6Uy/G
	 P6f/dEc9fph75GO8dweAaslusCtc6yJRH61NG2P5b+f0SgLpHhFvkrcCsyMrmUaUhX
	 0ncNbCQkdI+O9Jx50wAkVlOxwApqUE6fqw2TjiG8ttdCi0830LYXza295Ixq0TWub1
	 wC7/4P9hRVoyGWW55O0fv+I3KVGCUrSnmLORaomiPjr4x27gVinx307jce6G0stPD3
	 A9Sn0tV64Y5oSvcEhsqrEIYy1/FeKvs/rPTyTRVbe+usSU8TcKwJWBlNaDJz34QP5k
	 YrUg/mqEyPRsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8613C5CFDB
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178671603368.27873.4951905505696461482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a3b2153462432374f7db7d009af25e78760ede35ac301c5931da378433b417e
Date: Fri, 14 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786716033
