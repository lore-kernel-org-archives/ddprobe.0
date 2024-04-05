Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80CD16C6B2
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712342297; cv=none; b=QMceQITXT0Q9XeahorcbDVU6rtXIY9hT0eNY9kUMwBcYx7cTrgm/d6M8lE8HEZvKJI7BxyKMpn+rERk/a8dl6uPswpYQMACIWgFCLYxiBKd2DSzGGIoQRBKQSAbm8EcKyWxNz/B692QGK1y5xA3haVw2NXiW3FpLM2IbU6Ehaf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712342297; c=relaxed/simple;
	bh=zqBkBZIk1XjLjqASNZrDHNDd4qbgvuSQwdf0dye/CpQ=;
	h=To:Subject:From:Message-Id:Date; b=GXHj037imAoSL2SjBobMkSH1xCQ0leUtnB+FM1WfvAbKv7sSw9gTrCdmgpwv8NQl2r2FUslC3295ozPkrwnUkZoNnQK/iC+zgDbJXjvgwonHgnyj1qiiXaXIJBjXEtRIxEQN+ukcNJ5WYR5TXMa0sdsvxOVw6er1eaLAaJ8b07w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lafoLph+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lafoLph+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81955C43390
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712342296;
	bh=zqBkBZIk1XjLjqASNZrDHNDd4qbgvuSQwdf0dye/CpQ=;
	h=To:Subject:From:Date:From;
	b=lafoLph+e2w956fivkjjUtQVsQ4Ha4Q9d+hIf4aEC6uLZlLewqttEqCPgdtBnPvL9
	 YPf4WhaxZ1SGUGP4b+FbPlQNgxRo4ITp5hRoDaO8ypBvQ4PeBj+Iius/GQT9yOEYmG
	 5tKy95MJLnOKYw8BCLcXv8xWUyvW2Q3NboeQSP4HPH9/pfT1YLj+yo5VhzSVgd0n+x
	 KKuMSpMjdX1qeCmgeMKpQpVZEvdVEUuDi9d0anJss51ErOp0IHYRtyYneHVTxj+MGs
	 pb65oBoifeEsvKDYClWwhJ7ZLrEJNTcXE3B7VmAx3tNgbIvOlpseL3aVTM1u+rw0sU
	 GkClCTJERO2FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DBABC67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171234229644.32643.17975787945526607147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f947ec6be635bd17023cdc93306a75205912b3c86b874b5a5b231cd1e9e06e10
Date: Fri, 05 Apr 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712342296
