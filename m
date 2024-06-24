Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CEEA17548
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 05:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719205943; cv=none; b=PUTdkcPWTovC+oIT5M3BWNBovoSG71TU+KBtm4CVeCkjWla6iAoUQuo7zdDPuHiLpbF82rzu80JQikLwjMSB0BALA547u5wIbfmuLrL0oEtE9YgoBgVObuhEDiaf41p5qXrgx+9IinrQ21edpvDl6S5IO8ycojsMomrfl3k3D8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719205943; c=relaxed/simple;
	bh=2LZ89Es+mQ2FYyRdTI+eZxC0Wv6uMPSTWRha+tUCdDs=;
	h=To:Subject:From:Message-Id:Date; b=cXY6cShm9do1+nQOESdZo5YuoSF92xne9vfZdSKZgL43oyJrd0GXuD48Pcm8b6/DjDizRHobvX20+Aw6CLK9gQLDuTD0NKZpEsX00vM93CcNftXy9zSWn703Fn19rU+/rs4dtM96WCabVbcfWhuSTgMqEdl8IBhf36AkzIBKS4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DD7gRpGp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DD7gRpGp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20E3C32782
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 05:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719205942;
	bh=2LZ89Es+mQ2FYyRdTI+eZxC0Wv6uMPSTWRha+tUCdDs=;
	h=To:Subject:From:Date:From;
	b=DD7gRpGpZ7UK19iVHvG1xYwLe+VPRh2FV2xXxrDTRJOKG9su4L0z3fwcmfUXHXmQD
	 wJLBwISkCkvx2x01R7ag03kCE9h+7+izLembLNDc5HDmMyLSap+JKh4IWVmz8Xi61m
	 3+ybXca9PKXCs/QsdUqIHxkXFwdqyELJfNZI+wVEKijZMKek2RzbW9Z778SlFJiZKr
	 Pfx5mSBRLyOTcaB+mtx4Gt2H28epctUWXvcyl0xxXaAehJlfRoiOSk1YxNZ8DPUgas
	 5GXNPJEXqpvLqGMM1dtYHHjYrPbBOsSRUHQ+h3W3QuV7rS9CuTSLZ9Y2wqQAzZMvhH
	 ddn63XrfsDBbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC736C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 05:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171920594276.12786.2303796816481077490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2475617c16ad52e9cc0af1f09d01b8b3c7addc3174072a2db3588b3c71ec089f
Date: Mon, 24 Jun 2024 05:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719205942
