Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE74346ADA
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777784254; cv=none; b=CpgoMxyddh/HNsJZNJ53nNrdQX1tGv7FjIBcpfIr5QDQD5yqnbXOW85ceH0IU4a/zNRJb9TQJedxMPFQFR9Rgb5OqGdToC8WOBNSOvmtWBzxN1gbJE8B0od4eQKd00SysGxQBgi/CgWJrb1VVkAwA+u4IIhU/4GtBbGUBa6+JPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777784254; c=relaxed/simple;
	bh=h0sYy41ZapIWCg9OGOHY/Id55POBtpxniOwp/WN7fb4=;
	h=To:Subject:From:Message-Id:Date; b=nacQZJeAGqi7A+UfVreky+ykkV5CzcW2Lgmfk6dU3tHv1JqVuGaY/40A+9+gzSN0E50EVqg2rFqdmD4CEHXLhw2D3v8VKzDSLwcG6i8c+1ZtAFpQN6/Xotzo5PTRlKp9TbeAoiMNtRdjibk3IswcJRTS2z6vFrPxNKbDefDqAjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nl9Jqzr2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nl9Jqzr2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE194C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777784253;
	bh=h0sYy41ZapIWCg9OGOHY/Id55POBtpxniOwp/WN7fb4=;
	h=To:Subject:From:Date:From;
	b=Nl9Jqzr2c/d79sHbuGdxil1vtSGDr+BfIP01CIh4juYZKJWvKoht+9q+x0TRtWDq+
	 Taqs0LP7PzxmBZPhX7LgJKSZolmwPLruBwOnvmi1Ps0CRVqSMg3/jm4HptAzOeGY/J
	 tyvWtqgKVfUk4teVWkMGyISKTtjesqJ+SoHuwol/rnOIVoKCL3ZZCQ5b5c3zJ8GwCu
	 /0XAiZgS0Mev4uFSAlVRJ6x5QhmHWx06n3zeteH8TcmEndjRYiNwQWjN6UY0+Ri5qV
	 uSKFcWqGhKCuibb/Fh4YCrabAv56aaz8zNHr3I5pCXmQZpRnZukQ4xrPFEXnULLSfT
	 U20DJ2D25YsMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDA3FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177778425368.1625.1652950803181248833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac05c12d44c788de0813468b849c7478a1206f317d8dc94ab1909b16a3c3dceb
Date: Sun, 03 May 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777784253
