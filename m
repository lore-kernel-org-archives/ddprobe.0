Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1221D1F19A
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768458834; cv=none; b=LXTjAybBWzIBlGPJKGMwemFccou+JHoMhAffP8Kp8BbBqVN2B8UUSOjPaLptck/TcrB/+Srqh9ALkucNtnVB8hf91iXCQjYtW873Abjs19BMpZJuJI56UlzChedxouRpNzlkgQaHQ4b1iSfr6LxPaQOok5EmoD4WHpZqL+GZ1j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768458834; c=relaxed/simple;
	bh=5npYdR9j4NZpzIZ7JNtn98ztbAjUA9ZcQj+XFIhAzy4=;
	h=To:Subject:From:Message-Id:Date; b=lGspIYtnE8Dwwyt5F1ZB98RCOSTpmVgWM/amsQDnilcQmV4izxgRDFZjEwHR5jMp0156zVo6cAVc3CPc9vhtkVxWFuFIgFhLOV+UtrBa0aI2+Gdm1+P/Vrswbo4Tg3i0LBavtrWbK1XJMWECWG+He7tlrn0ARtdzoatEV2k3fdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLgDks2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLgDks2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AB9C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768458833;
	bh=5npYdR9j4NZpzIZ7JNtn98ztbAjUA9ZcQj+XFIhAzy4=;
	h=To:Subject:From:Date:From;
	b=nLgDks2oynQ2RUbcfaeathfm27SRDDhWgnoDKfTHzUENqbAkzz/5j5/YxwVJm6tNW
	 Tm3OMheVmbSt/lwITJ2NWIKg3HBIPkEvRQLsvPXzO69EjUuFD+4MCJwAb5G25fgjD7
	 /odUOTMD1to/MSSLGWwvWB3+vjNuq9XovN/kA2Ymma6abfLalJlFn+fIAs6qcC+Gsr
	 TWXGoz9bPRz6111hTPYW4jTgMDSA80hnTQQvTxkmBlPI63+BIbvBlnaBfymQ+xpIUn
	 +9aUiv7+VK4ByQz48aEA4XdB9APvBsCoGF7YH908cVGcczWhypW2dOu9F5o4oeIKPH
	 nymutxZJ3IU6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91356D3CCAF
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176845883357.14217.4640912283919023404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de6e921085f62702910e96e109d2d2847c73e4f15d1c98d3054e912a8ac9baae
Date: Thu, 15 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768458833
