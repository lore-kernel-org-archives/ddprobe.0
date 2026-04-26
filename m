Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3A940DFCF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777169254; cv=none; b=hNLkl+R6ouqDfAogJt5KSQAkFYE+wWyspR1CHoL51K0TBLhX4lLoEpdlqksHIIaAhl64tlQinW9akeg58IJhPlOOR3KCNC3z+c2pqczws7IjqXHWYUb8AE6nQfdCYIr3xVDAq2Q8MPGAiuLPxXFJK7wgGA5tDGVw/Xkz7BG/g5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777169254; c=relaxed/simple;
	bh=uGmlLMJ+8vOVgPQuzCfi1e58eLG/TNX4xZEdlgIQhK8=;
	h=To:Subject:From:Message-Id:Date; b=UGn1Hjlg3wyvgvUNVYoSMJ3g8bePAC4ywdxaNmpDM4Exo+6cp347UKQCobd/zGIP4grQ5C/zLAPYxukKPxDBxDYD6n+vY7M9wGbCNyENu71sAaKP6i1+QBoFJ5rQ7o0ve/w2JtG7EI/N643OaTjYCkwOOvGGEWrJ1vReXaFieo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhDs6RwZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhDs6RwZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF76CC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777169253;
	bh=uGmlLMJ+8vOVgPQuzCfi1e58eLG/TNX4xZEdlgIQhK8=;
	h=To:Subject:From:Date:From;
	b=QhDs6RwZbhA1QOqj5mTZiPCiA1N6XLNpuvpABRNRM3fQwKHs353snOU5eS/udD5RN
	 5PZHWnekU8Xp+qmz2XGciyerGwg3mpDBrwb+2CXFQ1yWVVfozJEU6K5PBeVTPF/r6P
	 JsA6G8UTxEGeFEKs6Ir8iK3CWdnI3ow/g7rEhFaGaJzBdYUZjEdKvQf8MW7Hf0CBdb
	 CLom3KPzx7UilNuDI4sHcaPHCBfQAiGStMBgSwWanGjo0DFD93MMOvurzCXPIZ8p3W
	 YXUdHkOCLGFiXedtQd6zUhnSgvm6qwcNOyvoawOlB6xRdB3Ayjl2yKlY39HgLxl+VL
	 Kp5gNtuyx0uNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB920FF885A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177716925368.16431.9510941741279469206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c56d3f8a62a16be58cfea87dbfe2a832ea6dc18cc1fbc5af9c4f7e416bbf8142
Date: Sun, 26 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777169253
