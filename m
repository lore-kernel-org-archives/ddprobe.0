Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7983A1E94
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767476034; cv=none; b=C08yVdF3kPAUQZoyvW94/JmQY6U2W+FiMWgRJ9SkcvVTAPTZg/rYNjeQC/SS5Six09JB8dA4dSZpVtUb0dmbkZZiVJa3M3Dau2x1Rgby0+LnOH7wUfZUv++DXElHQ3VpnfSeiIs38kJc5DQPEFbg0+JQcL8QYVh+0KxFgYra+XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767476034; c=relaxed/simple;
	bh=+AwZsQBXxng6OwsnNMlDeASadpiOPxilOOLYKLOJtaA=;
	h=To:Subject:From:Message-Id:Date; b=dDC+iWbyC0KBhBB2/hosoX5AY4XR7hD0xErp4qZW9YJG/6jc2Uq+b0Vueal9Iq2dH2rjHvWAvjMmbkzUafhwLyU+ecuwk7Vm/g5VPgTneCxCVrk6vucTj3ez/Rncv8KkJQ/xeCf+gIRinM7EUPd4Xioyqaq7+XhvFhY96xXdHEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCbAWfXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCbAWfXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AB3C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767476033;
	bh=+AwZsQBXxng6OwsnNMlDeASadpiOPxilOOLYKLOJtaA=;
	h=To:Subject:From:Date:From;
	b=lCbAWfXZGLtT1kmN6ZEQqc7QOx5decD9zKNPSOQm9aFqHXHetEaVLlWHkj2bMqv8f
	 tPAqO9qvlt4FkRrqqldcUGFCFC3jJSpD7J+cd3Q+r91HDzVXR4JfmrbELa7JrNobcI
	 QmgK+nqlirsR6zP9PDk3wEuaPzeIzOnY5k7Av3phl8FfROC5yc7Yb/cA3xLYpcAv7V
	 MK0tEgPNupGfSasMHFWtiZIcyEnXmFzozKV9F5MOTJD0X5zaI/chUf8xBJMJZLmUav
	 31bQpRvpeszW0vre2pbB2Sr83u92x26OT8Wwlg7pV8VXoRQ74QgJ6eACJb7fZrW1Yn
	 Ka36W01/AKKbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92489FC6182
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176747603357.25795.4349779099771848293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 516c3321264d00175aee4eefcc99e09fce0d7f51e50515d2a33ff44c22bdcb64
Date: Sat, 03 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767476033
