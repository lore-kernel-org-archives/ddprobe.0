Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE3C3C8731
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 08:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783933114; cv=none; b=s0o1878GwEdR0lqBnKjYreP41Otr6n80vP5Q3DBkGxPZevlKhT/Y8ykguRma21zJP4DF5E7p92hmGx97O1vTUit48Alk+aXPJoQJQ+mXzabrIp2txsX/b6zsFJLNd2q1eUoI10s1saxs5BqdnbS4W4ONGVwn/y7n2UnWfNUU4m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783933114; c=relaxed/simple;
	bh=X4JyW1FXMHJVZ35ZwwlmLLJ9UDOrOrfH/fseW26UGF0=;
	h=To:Subject:From:Message-Id:Date; b=CfQJ7ujSrbAA91QAZybQWBg3cJfo1ASs9Cz8uZiPbpyVtNMz5CeLgHvYNJ+10+hUfDff1HhbwY3Sd7IhaqzQ5jcObzTD+0epXy/uKaSekHFR6YrgALaDgJbPNwehKIao4sQHHIWhN+7zzXR35WV9X3Cd5wgRaADKr8chXzpwYmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0rd7mqP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0rd7mqP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA285C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783933113;
	bh=X4JyW1FXMHJVZ35ZwwlmLLJ9UDOrOrfH/fseW26UGF0=;
	h=To:Subject:From:Date:From;
	b=q0rd7mqPrbe5siuNgcM5WQt9w2s68XEkUY67hjM5Jqwmm7Xl4cU3FWsbeoch+oAIT
	 pqjy124JldKVQJgo/RBmLzwSK6UQHTHCH8eQ7seieKOCqMa8fJYrrS40VLakYVP5sh
	 yJvO/m3JP4cXLVGsMMY6ccNq9pDOezW8h/QoAI2armXZx4w7zap2ZLHaK8NBiMYNvl
	 f/Yhpkia1xCcTTW+bej6Q4zLra9BN/phEBGeJLaEchGPuYQwwsZ/ZVYto+HWF/hMUD
	 qFEkN/9YLLD7gzcbcDnnilgdz0SaouDLwWx8vxuYUT3aXRz6pVXM0+6z2jhbVrZ8UJ
	 xqOylV4qQ/b7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BE8C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178393311368.21246.4132370010203541826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e161e2374d707aebeb5dfbd3e9aead542705938244c7360c3aa4ba7f9466279
Date: Mon, 13 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783933113
