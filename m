Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA94219E0
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750898395; cv=none; b=luEs51v+ODmRrbNVYlUrTL8winTYUQ+4u3PVOjWkq0rNdK6OT/Q4VYrN3axYtpdhI/icCFEyyEHOsJgTvlS0UCs3eCGB+ddO2YxVESanX7OqHFrEt0Zc2xbdNeRN0Bqp9HwJx7A4a2qdlrfm6WWI/4XTlgJ43dYFrXsBVx2PwRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750898395; c=relaxed/simple;
	bh=wdr2P6OOBK0rb2omGnh9VDSrmLgezmijAqjN3DjsLoE=;
	h=To:Subject:From:Message-Id:Date; b=HkXqZxM2Nu6Pyzt2EmuBi1aNlI1np2T7LPPfYiACkXXXwC8MjT+/EIl+KI3hRCi2h2YmH+ytiPtW/pvx64DwhRD1xRdhahmYgrFqnXrG1d+NrLaHVAjIxjKI38nDHHxM5CAULenpbHVl0VYLqbxSnmMgUOH2TIx78Nlc2c0qTb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJfa+T6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJfa+T6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A32C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750898393;
	bh=wdr2P6OOBK0rb2omGnh9VDSrmLgezmijAqjN3DjsLoE=;
	h=To:Subject:From:Date:From;
	b=WJfa+T6c4CvCQhnd8a8yIJ1eWGH2Qpko6Sk5Nsu4u9fOBeNkZjOu+pZt4hbB+3bLu
	 6FqoI75Ufx8e668n/5SQsLadEwxVXKH9xJ9Mc3dw3PLM1fOGM5iWhLELEedARkx8SU
	 SQRloeiDry3O4K+PGj0C9NrJptYQ0W54je8072FRfmPmm6UzquW/lNzIKvq8Ri8ZL9
	 zfzKVghflfjzgOLK5Lr5ZRyjV2BC3kUkral99UlcfV7DLcFNqYhUkN6EVMqLdqTJ6y
	 gAXaOLFhkSQ3sQ7vbTILSUnTzLGAhQZPk1O2dVMkTb5Xh+CjH0BH7JNiyboSmyWOpX
	 AsSJbrcuPlLiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F03C77B7C
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175089839357.23507.12102576853533857304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc5974f403f46097edede92275a4637e5ba2e538c2a6ade1f89719da782434f2
Date: Thu, 26 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750898393
