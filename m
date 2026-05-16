Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308911E4BE
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 13:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778937034; cv=none; b=mVngZ6Q3v2pM0NR+SHUuwIIyOuU1lxNoW3ztkYS7TRKfz/0IsRiF7q5wEvSLXstd0fed4hSsRcMzhv8yqvfH9MAlgc6N3fdjl1cigTclAz9LBvsxpQiKTvy70n1E7daIzutJsRFsd+Nv/a9CCUwRzhzMB8DXOrCjVSRfMaiwWn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778937034; c=relaxed/simple;
	bh=H12u/4IAFmM2NWY2fjpIg5QgSxQk0B0krvZvXPVMNNg=;
	h=To:Subject:From:Message-Id:Date; b=fWu1tI5s2cWGYe169M3NMQgFzrxRie1pXirWtUguBR0pG73nvGZGpa7PKH6tH/6qU7zPUfKUywGbOEPDYgSAO/sQj4YbY5Ms2lXMNlBY25HWoLlvoHsiaQoKtqyQJC99bYbpnNNipsCh5WtZPnmRaSOChpI2N8U6mOskEJwkMfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4eqOV7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4eqOV7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB80C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778937033;
	bh=H12u/4IAFmM2NWY2fjpIg5QgSxQk0B0krvZvXPVMNNg=;
	h=To:Subject:From:Date:From;
	b=C4eqOV7jxsURBd0Ihsb/ph8kDLRQFu4kEmbs4qOylSjQYD/yO+/fA6hssCH2rI8cu
	 e1XV/C7fEracUThTA2hxG2Yn4UgayXA1oii6gmgvYbN4Jwwzl73cdp1XXo/1s52owT
	 8BGYR2F+Q/Sa7z+s64EKkVviSlBMWUaH1VzpQ8zGtpVrC3FbaiU27b0Y48SKSPvNw8
	 rg0R2yPgEt9m4Z8Q7P1/ngFkZJUN1Z8N0LKGIcpBCIg7YpVYp8LAn8WKUo1vHE3t+P
	 QvV5lBIOaI+ceTDj6hQoi3D6wGWHvYJDd2Y2XdYMrrPhp3qb+rpopfYPftA9LhdOAh
	 lWOdL+171/NPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD614CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177893703373.2023.5426533538198310144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21fafdd29c697c2b251af1c262cf5b050179c2af59f279f881c197842d5fe36a
Date: Sat, 16 May 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778937033
