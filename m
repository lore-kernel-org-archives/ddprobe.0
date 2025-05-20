Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3775B21E096
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747740594; cv=none; b=gN0OxT+0YLWm62OlyGhb4+zAILlLNS6OtZr0rgQ5YpTge69fqhfNZtFPm29YlDQYwjmGNC5zFkYRMwdclP454TDXbdeumXj8NiG8My1CMcEUZ8nzLGAm8VYTopW1NXHMdTCnygZsEGSJL5rgkCNORgao+6yftrhRRRR+DjBxkWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747740594; c=relaxed/simple;
	bh=zf86pNmT+66/EXfbE/4Lz07bTHYiTXANf/aiYmSp2Is=;
	h=To:Subject:From:Message-Id:Date; b=T+c6xUnnPyWQVos6PdQxoB13cRa4FrJVQdzyCu3syHLa3YheeTJd3NsKh/joAcALaIHEj9rr/PWnDZUUmccUbigrhD/GQ80BQEK4ARCos9dQEb0bvufhOkZYfQytDE0mZ9Qc6eS6uGYQfHCb/dTzemhL1yZRzEvGLygJQOu3uxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvjBiP84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvjBiP84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D7BC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747740593;
	bh=zf86pNmT+66/EXfbE/4Lz07bTHYiTXANf/aiYmSp2Is=;
	h=To:Subject:From:Date:From;
	b=YvjBiP84EnrFZl+28m/oA0dgNOtGXPwjQz1mnPNvvHg49bGL/eSSLscVPBLbMFlVs
	 c4gjoU6ibf57gTaH25rR31SOZg3dlnkfM/7ryzFo5rB/Wkslpr8k04rdUIY3RUGaGm
	 Q/YhHCRdqNh+lzBUozC+kAeeKbnduoR25KCvQ+rwxyMBsanSrj0CncpUJfHxQ1GSko
	 5dpkR4A+KeRfM1HeWomofsXJBM4MYwYW0qpE07L7xOlJw8f5p2avDyQ79NTAJ9btXX
	 pMhelQsZBYU9ycNPwEk0YPkdfwdKxLDaUp+d6ABJerQhxdnzQdmd4Ljl9CEaF4Xbe/
	 9W20BIhqwQhQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C24C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174774059357.10367.7558234733618099946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3417b525ebfe6eb511ed381a4e642cd414d1d619187e7b2fcdbc377e3ff0c0a0
Date: Tue, 20 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747740593
