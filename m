Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519A02C08BC
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 18:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782240994; cv=none; b=L3sHv0zdP7c8JFw6wC0VJFq4e1y53vS1CHUrCkNMn95TXMQ3/yIywbsTms3PBGgVZXvrAyTqI2BlBk+kzNlnY0o6GLkjlOsvW5rXjPatqdeBh0gELs9F16m/hBWq3GGW/WgroJMgvEl5VPuKTmyi6rCmyiJxSu6Fv7yixc/SDiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782240994; c=relaxed/simple;
	bh=p456lB1L9EAvqu53H5ps9sV7AQT2/bCChbzdyWg75QE=;
	h=To:Subject:From:Message-Id:Date; b=k44+SPJ8f0DEzQbhVJJrIltVkydRWHim4+v5Tv4soSLbBehLw3L3AY8qSMywGnUlHik0Tf4D7Aj5tEsMOzm7RYqJrd+ZR5it/VlXw106RcPDh0UsSZ7x6J7jDam+z8PQE6ugrmYWrMbahDlmBHVRTMjqzXSnp2CYz5w/m0d+MvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSmWbePQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSmWbePQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D728EC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 18:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782240993;
	bh=p456lB1L9EAvqu53H5ps9sV7AQT2/bCChbzdyWg75QE=;
	h=To:Subject:From:Date:From;
	b=jSmWbePQVFOcr952/UyHqEvAnANEHpUI/nfqI2aY2Z7jdu3AiU75AgsLgeunOzS1x
	 FkZSDgbpKbD69c2F1EaVi3W8WCmL5W+Wx0UNXXpqpkvfge8WIJxu2b1ZTQgASm1W5t
	 Zd26rIX37sTkPWKE38rwQuMHe9Xa9m+YLbYq0ku88JnNo7/HlW3ffrBQQixjb6y8Lh
	 Vm9q0f744IMIzqh2UZpS+3LNGlyP0lKdc2HrLsMBYADv0CJM9w/cSd5O9hb87O4sRD
	 gDjcmPFimAGspRUOem0eOXoOflmWBrOCZpo8/6ISdP2FbsxxKKNRdI90rbXwEwVkPD
	 L0lxCCsMPuijQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54EECDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 18:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178224099373.29459.6414148861286983957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbab62e1186374706c2777a8277b01c46f0bf0ddc4a02a6c4839629fc153aa80
Date: Tue, 23 Jun 2026 18:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782240993
