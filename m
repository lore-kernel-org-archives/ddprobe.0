Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E7B33CA
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743214794; cv=none; b=JV389/whQIWTcvSSv6xxDrLAWIZ7O1IrqQN6PJ8ALHfB9UkMHy2peCX5B3rfc6OXQKWbuaFC1TBuyi/eQr8TVRvw+VEfL9wrgrd6YdEgQerjb0SAA5iVHkF20G7FeyUyF9RvbXKq0n/7a+ow+OkFAmfNORGShzJstMyYNE28/7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743214794; c=relaxed/simple;
	bh=wUZcMMQXqg+TKvfl6PY8lqKNMYuUly4qbMgkh1X5dLQ=;
	h=To:Subject:From:Message-Id:Date; b=nb3FqIcD8uDEke+TPHZHnfXGatiQPMmDaP30cowlgndBoATyKFz12ZAxHOaOKmfpdfHK/adAx4Z2DW61K/XCqdVjattWc5moOs39EmuTMYWp4xb+kGk2/g5GuL89vahHP+37WmxHmQm8bSmQ54/8v8nc1/fzy+VQ6rrUlnGEFc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8hl6Fcf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8hl6Fcf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6B2C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743214793;
	bh=wUZcMMQXqg+TKvfl6PY8lqKNMYuUly4qbMgkh1X5dLQ=;
	h=To:Subject:From:Date:From;
	b=P8hl6Fcf1fkuuK7REFMySm8q2ceSd1FTWuWfJexM32Ai6rzr1o+1ci1CttFhShKCJ
	 YZgBdmcinMLIb7OYt/Bo53vQxwzH2gVtsb8+RAKPFI2RCYJVMW1GDpRx8oBQpSLB/6
	 KWwMD0VwRQnvXHtQ9OdRaURSoTeCUwPjzvTeyyVynEL19t2YYDXXaEpDocpr8b9oFx
	 jE2pLr+7ZGoZPBg+CV6I4OtfnHEyy3kkyctpIiL8TQHNWeVscn4iKzp6Kl3rHH5VGJ
	 QYopSAG/xsPGc4nY7kXQQdex+WWIY8RxD4n8bEG5Vc99KMesDP6i74TYenR66y8yQ+
	 plLODKvEcIVeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91564C28B20
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174321479358.1120.1534645105557916885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88869e702ce2ff297951551d963361fd7234928e8d2b330c4085f15129f06ec
Date: Sat, 29 Mar 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743214793
