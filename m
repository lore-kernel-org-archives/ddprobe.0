Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6686FBF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736648754; cv=none; b=EuR9MqVKFz1bPwzRfLzK2RKQb/Uu8qu+RYOE+PD6IPu6w7s197oYRJipzfKBALFtQfWv243KEDhpw69ZkJWFqG4Agg6ot59OI+6rcZd3MBl5HNn5Ke1VZyjroqsh4THSoC4loXf04RgZRc61cYh5FMY79t+nwiBSPBz0IrqYepo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736648754; c=relaxed/simple;
	bh=+3ZZ7Cf6LMns2JstDs8ecdbp1ilD3UlmGILV+qvXv2k=;
	h=To:Subject:From:Message-Id:Date; b=qZErQbUR/LESUXAuLKfSME2BK7a422zgAG4WqRTRA3hhaRL+qR05KwcM5QpThn1RzD5JrXeBMtuAcviQ+F6iuFP9hXFNuBM0SZtKKPmmDdtESwFKA22hqkECHt/sXvuUeJWYcCxH6UcunsyiJUKq2Qdt49MUp1YeT6OSi3mqerQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llejAXWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="llejAXWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B10C4CED2
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736648753;
	bh=+3ZZ7Cf6LMns2JstDs8ecdbp1ilD3UlmGILV+qvXv2k=;
	h=To:Subject:From:Date:From;
	b=llejAXWorKvdcDy1GVgjetvDufk/TuSAhZbgR/4thkKdMx3542bmGQMCPJ778/SUq
	 RiEjMKoc9Hz6PGkhcwRkluHKnRT6+MeZV5EiBpMKxgn+Mov6OUBj+pOQcjjSeVpWb8
	 KYq60kQqBt/7gEd+9N0e3ZBOMzg8VAtxynCv38XzrPt5qraoQ9I7AEo3ghHvHX/0jB
	 DNTMtQKwm/cZfGjrKhrlHRlsW6BGtzXE6wC/f+BSzZCdcWe9k28CSdvIw3zrW1I+6j
	 /r5wfcRi24szWUYlarMC4Ujs14hcjD3k4CSXINYOhdE31n3ONuoedQqrk6VGJG/cVj
	 8S730p/mO5/bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AF8E7719A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173664875360.19433.9788783150208753333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd7ef1837f2adbbddb4f963371c068c8afe72c8c10394af1703a8448bb7b68d
Date: Sun, 12 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736648753
