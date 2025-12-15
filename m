Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24DB3321A2
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765810974; cv=none; b=L64Kt4muneeyIZVqmYZMCMGJg8rzVm+v51eIsSb7kh3XNUn3n+XSqnDGROfws60vxJNNTtISCSqikSQlOUxO+NrtHkXCaZrLAqG9yUiYlbgFfBWWWssT7CZePeXrxaXtJ4TykBzV4p/pjaRU0NlQvMQv7iCUjdVu0Uqm0SIoHaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765810974; c=relaxed/simple;
	bh=bqzk5RYxRNYTfBzDZ18u0uIdOZ25oO0jzI1pGp8b+1w=;
	h=To:Subject:From:Message-Id:Date; b=s5gHF8m96JEFGUhcnti9byzSf2wI5eScI6NB87fzdHY9KM4gElYg+WbGX4e02j0Pwf4u9oh2sLUIXncnVGJt+wwso3AM/liDGFKQ5ICYv1w63Ah9BJETwFUMWF/EKZ2y/NMyF3Q5jK807I58xAqBk79o6LtGyHHpkcSdypH+HP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuFFwrZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuFFwrZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8E4C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765810973;
	bh=bqzk5RYxRNYTfBzDZ18u0uIdOZ25oO0jzI1pGp8b+1w=;
	h=To:Subject:From:Date:From;
	b=KuFFwrZem0Jh0IKj4NCsenR6JsJpwOWSS8p/9PIDteboomUdjV+aXgMGXmzf+h2cL
	 XJTFFkZPZa4mykNo2m95t3fh/am2s4+qJBWcUQu4ptir/pE1vwF9WDIQ09PFPD+001
	 bEtJio+/PuVigUtrlHL/ZiVkaVFTawd3gNJ2GdP+B7VcvWN6oS7e3we9v37ntgSEzL
	 FsY3vNWMrgrUYHzOKoYvE6CacqNvTmEQh0DiYKYXctR+t5RH+3mUZcJ2t5UY9WOFI6
	 ljzV6oStqW0a01939q9AYIjq4/1wsoCGcX/iqzn6MMGvUO5HcompCjiO0IG8vrX0Pg
	 sakFIJrZBS9Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95542D5B17C
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176581097360.7719.6634658049696879500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e46760907fcc65f6b93824dee9370652967e08ac37e474408b746820646e2eac
Date: Mon, 15 Dec 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765810973
