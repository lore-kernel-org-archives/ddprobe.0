Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB00365A0B
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768908234; cv=none; b=id6hkv/TzBZlsZ8ErS/ejlNC+m64C82LFvMHQdxrVD+fhRy371YX3deHemrEa9IspVe39dRzQ6FXLoZs50r5krKUM7yry/pv01DYzyi4xB2Z8ZtMi30tQZiggbR6v0lVZvpOMjJ3Kt927lkdGpYStvWUNtGMXvbKfKnQgygMK/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768908234; c=relaxed/simple;
	bh=FRAJtNoEkQWNpA3v20RVXVd8MAL3b9cGlYBk8L6UXgQ=;
	h=To:Subject:From:Message-Id:Date; b=INH+6kxYIaLAPvC/RIaRylGum7QEIZx3fDQagI2+0kHGizsR5qdG3fBRfrUWZelqJsqlVMKYIQFi7n2Ecl8957BOqU1ErX2/gSE9Ttunx7+ofJ0LlkKpW8l3FsBK3j1e73YNoqbUfBivNmVgprNzRz3SAG5ALJQ2gTv2ZMvuQ44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOEfub0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOEfub0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E5DC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768908233;
	bh=FRAJtNoEkQWNpA3v20RVXVd8MAL3b9cGlYBk8L6UXgQ=;
	h=To:Subject:From:Date:From;
	b=tOEfub0D8/udALomXKYFG2qMFeIq47oN+RYgZQbOvubqD4ghnyxEcHch5QFbTKoEK
	 xprVPwFM1G8Xje7BvV1IwF+D3H/+lSH+pe+CPil/vekDfVR0XBsO5XTHpDiSa++Qnx
	 8dZuDzDPGCS7Pj3ppskfg0M6PWO/wwruQSEQ320KI8GxhOdlYv9Aij434cEdW43umS
	 LssQe1GqY7tGexLMWL/BPwFLDx2NPWALzVSn4YbkiUjY6ZjzOpoFrObtUYwcYWYpZT
	 Jp3OkcCWwvFNSTFlrfPYDZG0pbgvI9CKVPju2dergdp63UPQiaXXanmAlGIitqDzIL
	 8AXwFWRj+A9eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941F2D2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176890823359.5481.1641793452497045407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3619c204114646806d235ffa584a19ee99c36f7aa09b8852357e396a3b5ff188
Date: Tue, 20 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768908233
