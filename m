Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5890B175550
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 14:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714485743; cv=none; b=JKSCBjKCijfXrFD0uTQOuSg1QaSU9og82CSLtkzA9XVy7gGDZLlkxAVnVGcgu9AeGE3Qx7107fGntdxtUtAveiF5glMvtPW/1WSG/fj3Gu0UFHuloms4usZxHWgzwgHyK0MurEKYsq80A6JS24K09admjzfh+f6JxOYWE8zG5eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714485743; c=relaxed/simple;
	bh=WrSuKVMEIR1ViMPMVyWDKXza/refoMmUoseHWGhGynU=;
	h=To:Subject:From:Message-Id:Date; b=Z/lXTdZSEbFF0D8W8BmELNxdjzlTAGv7mtxvA7opMl+L8uu7jrLPze0etvS9rM4x4yVqeIemuM1MjwUIWzGLobNCV3JxHnMUIkSRQTsCveqpOOa81XAUjX+8yloOyWQTs2iKrp45mSQK8d6yawmoElSefzxRjepH48EzultnXuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZaEwdrj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZaEwdrj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D466BC4AF1D
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 14:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714485742;
	bh=WrSuKVMEIR1ViMPMVyWDKXza/refoMmUoseHWGhGynU=;
	h=To:Subject:From:Date:From;
	b=iZaEwdrjpAkLJpzMbbBACj5YGTEXS+zcND4qfMJ1XCXZqC/jfStHG+7+XOM+10qB4
	 lcMa/F8I3O+3CT7ORS0eYGrgXxY1sY6m5XmcJxqsRq8+LVRa9FAPH5GzOq0oLrotOd
	 0WJVhGafYQ3SGaCROk1nEq4Myv9IVqwU0Phu1Vi2MPSjmbD4YKJEzlDxQc+k3/8Aay
	 G6gtna1+r2pkNAODSpkJu9RocB4WOvCPOo6BOcPzSOvXpNdIUC32Glij02wa/Ehonc
	 D0kF0kP5nqnuaBrPz4Ntt7/+ntt2/h2EDP44vDF9Eudstoc7IiSPs9J6YlXxzuOSTY
	 zkGBMsATwmWCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE97CC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 14:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171448574277.4467.3798880584771438345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa6fa6417198aed2ae4d0a71c1543d0dcddf9b751ba217f72161abe4e2fc86b
Date: Tue, 30 Apr 2024 14:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714485742
