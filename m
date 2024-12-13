Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A5C8F6E
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734054954; cv=none; b=Q61MWqV9pw70QboeX4SDDCpwsu6vY93kxvCxU1SPvhoXyP8rjLMHP8ncUrrtB20vScj6U1QuKWKO+Wtm7+2dGUOz9/MDlowSJN7N/3+jtXdmUFVWp6sRpenJeFj+Jxvb7nAYBhnwssho1q937rd6YqCFvdtWUKY07uJtZvPCAR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734054954; c=relaxed/simple;
	bh=+vkHNYmHthnF09I/4m2FnxLGYrXafl7MRX4wKZ+v53A=;
	h=To:Subject:From:Message-Id:Date; b=HARv0tDNhgzCSg8ZPUTFv3uskvJDCh/Sy/vV4eOHnErGVSQKCPEFQ+zfUmq9PRTal1NVchq2X693cVYZlyBaTJKu9C2P+fA7lZuLi8pJwvKfwmGtlxYau4qXe4sRCemtk1K2AxLZ8xFNe/cvc9ARs2DLYedzBjUpiyc86QNIYqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNVTR3Hv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNVTR3Hv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B77A8C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734054953;
	bh=+vkHNYmHthnF09I/4m2FnxLGYrXafl7MRX4wKZ+v53A=;
	h=To:Subject:From:Date:From;
	b=RNVTR3Hvc71LlZBJP/Se0Qid79JNpjxyzkyz8RO92I/VEUN3MYPeYAkV5f+ZxwKWH
	 lcAqwIS3VnV8ngv2f/eQDhDfha+7i2asPZ8oDlm61/yOpfloTrVgrewiZsSgyTUaRJ
	 fwhF16dkCnLWqtTgloz/QVfk9033vcgVRtL99VedvZ3D1PMypCwqJTPnrB2DLXfCn7
	 6FbaCcAih0lDrtFSrMEnnUlJAAYylqm1fNnGxV2kmTrPdhpHc0V1zip7Ubjnws0OKO
	 gr0ERWqyl/Lab1Q/m5tM+JzdJ7947nF42xa/LgzLBBcUdPXWxno3F2aKZXJDfxZkde
	 hJAouhYsTBbDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A130DE7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173405495361.21528.15804908930472164566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca323dd5ce01476e2a04310dd14974ec92006cbe69c6a6ed4ccf4f1bfa08e42
Date: Fri, 13 Dec 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734054953
