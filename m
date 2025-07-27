Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8F314B953
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753640994; cv=none; b=uDjkZrTqZizUdYQh76gAqmoCruXghsp/MW1/LU6/OfX0HNuvRTnxzD4/GpCZ8m/Md3tKvGrjtLe1kpIAIZjixbNsJHsKN30ZibRwYaQ9wqXw3dOoETxOBL5m1OftGtX9xBeWfCaK2Ctbwpzw5FYhsrwm+StvPmuqn/Rhska5zVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753640994; c=relaxed/simple;
	bh=8kao3+1VO/syR/pglf5Fye6H21AG2v2IfkbH5At7ri8=;
	h=To:Subject:From:Message-Id:Date; b=pCvcG2fEdpLFqESF6OS56rMIzSCTuXPMpH0FrnAq5Uh8WxdiG/fvueZojYe7W1gqGRiaT7pPeVFQ7bzRX2/28zeY7MCoJHtqL9EIYSEtUfNRXUY9Uksnv3DWqDKIulBeABl8j9QJo/1RM+9InchTB0ubr7JYzWx0xpHW7Ca39fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUBFS/D4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUBFS/D4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7101C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753640993;
	bh=8kao3+1VO/syR/pglf5Fye6H21AG2v2IfkbH5At7ri8=;
	h=To:Subject:From:Date:From;
	b=QUBFS/D4LVBmqwh7pIgBCm6eyjfioINROwfnllyr7f6XoEmtXT2o3/+hFuveF8HPm
	 qqF0M5Ep3XYZuKl1r6aHeJR4dX2r20QWyPSQZItX8/LGcS6xK19FpPWOACw/LhKKAw
	 hxeRwIimMHCdKQyUB7sJg0KIqWvc61GTy0PyEefUX5ynpSxPlKAq4VBfpbtwGQJGZp
	 dY13x2EFiWuucCJ4BtJyz3toHJKcM/tMoOtiJTy3XY3F+mD3kD/CLQdAAn9b/VA8su
	 OJNesLxf5B/9tONiCkbqkYSzefErsJPw0H1td/OYFhgpVKiWI8K23vSvElqModIW0C
	 UwRUZ/gbAa66w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94872C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175364099357.11550.2450455761888310143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 085c53810b22ac61b2e984ae20f4eb0fc1e6ad8e86bd605dac4465b72cd9c3f3
Date: Sun, 27 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753640993
