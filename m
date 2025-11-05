Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDF021CC58
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762311594; cv=none; b=gfH30ghrxyFgpL4BC5zSSWjOl65zbv7+vAarqr2p/864X4h62sEesHA29qovrJvv6Yg79T0dqQVI2C6fqNiaH/36vaLQMv/ULSC8gpYBRGcVHmmDPTrV7ddZcWXbx/2nEEgDaEDD13taXY+lIg9V61lZztUQW/EfeCj44YtsZ1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762311594; c=relaxed/simple;
	bh=IJkuUX12B3rK11YKMxC0EW8m5LDW3/PCEC/4ZfssrPY=;
	h=To:Subject:From:Message-Id:Date; b=Ik+u6HmcoQBXgVrGy0fcb/vd++uQ0PLm9KVxU9yjeuIVFXvYrNYeAQBWWS6nO/d6l2IboVxpwZ0VkjsP75xD3U9imqZ2E+MxBdmicjEKQ1DSmn3Ky6RlXCEu+VnQvmlq+mFhKAQMpt6RfaavzDfXBj7FxxebSEzMy+0QKnGtOD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHOBfPNc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHOBfPNc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A45C116D0
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762311593;
	bh=IJkuUX12B3rK11YKMxC0EW8m5LDW3/PCEC/4ZfssrPY=;
	h=To:Subject:From:Date:From;
	b=IHOBfPNchNhVcaVkcKUkFzNWJc6VLVlp26HQVyM4LUsT3uZ+vTcJBwd/WGcYAuQE/
	 VTrM4hprQPD7gvYRlrt7dNkSj4ooHU3arEE+2oPFTZdQNhanyUoHIjkmHpJrvXnX6G
	 LrVpM4G+kEKfA0EUpXuqZb2zkICCN17s6wQzGybQzzCkmNxIyOLSCoeXfWBS2anGDC
	 qUIsWz0V8f/598h7XY+o5GlFRjHtRkyBtnfZKNck92kJLErCGr92c6mqPAK/nfxiVr
	 bzlPRRU7FVxMDIBoB9wj8Xh6OUINzaLT2uEg7lF9M0BVjGg56l3aMgTAHQ0+5gsQyb
	 4pZ3hA+x02Eow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E195CCF9E3
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176231159361.20048.14615951490781902761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1c5a65103854589c13caa9efd3b48621855caf8566ceb2fec8c2aba42d70db
Date: Wed, 05 Nov 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762311593
