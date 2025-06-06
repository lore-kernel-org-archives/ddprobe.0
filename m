Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB7136D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749245394; cv=none; b=OjfznrBOm7+UKFNLehYnMW8Ec8NBAcM7La3CdLud1OvUjX2UFwS3pbQz0PaTZX633Qd7gnSp+COsCcK2mpF/ii8dx1m0raYe7A5jrQIPi7eCPEYAfDSGPRXTaShYgomiH0Rlt0uMfquVHNatCCkLHVpwFOH3On7q/O1u5a++GUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749245394; c=relaxed/simple;
	bh=G7ZdLAgr1rrg9mlnkHunCFwRD7XpyCtT0KRehKmQyOU=;
	h=To:Subject:From:Message-Id:Date; b=o5SBy++Bh9Mv56lOKUgYBXtaHa0PZG9xNanhWi7UpTAW+4vRO3OTNR0ESWcenHn4+zPU0i2N7F2djvTcup3altH5qrxu1heSadkdaATBjVIM6YTEQ2pVpw/S+TR4I5CFnc7rz+IYSe01AcpnUh//bxzG3FSt37S9kBQoARDmOUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ModYlETo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ModYlETo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D87C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749245393;
	bh=G7ZdLAgr1rrg9mlnkHunCFwRD7XpyCtT0KRehKmQyOU=;
	h=To:Subject:From:Date:From;
	b=ModYlEToe9VG7tcsVN9ga9JBiJ+TsFNFYDgOI0geORk2tW4cQw8FxKoSlzx9LOndr
	 mbV6T0Kp7He5itBwsBTVg1PqDw5+7US3qG+tG7kn0uCTr9ghV5myq6s3kLIQbnZeU8
	 9A/TK4JZ6EdqvxyvM7A/78BseBmrli6oqux2WC4QW//jgwBZoaxbRiCai7kmLppEeD
	 irYjrqXp9QyWbh/waCC1Au/xI/wS4GJ5YkfCgxUHpZNZql38B08W305vEdKEoH0XDh
	 OTbQpZyzwjZ5m9egu42H2dIcaixNabf0OKsWk9J8vcA39XnjkIZb6fGXC2HVtk+tnj
	 7YXIqM011yhag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90377C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174924539358.25580.5710296097477177467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1055cd559470cab3bdec559cf3daaf0d945bb429386a0e57af2926b91afb5e
Date: Fri, 06 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749245393
