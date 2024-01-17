Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DCA8BEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705471697; cv=none; b=oHv/bXkR0uL6yH5fOdEQ3399rA1cDNlICYtTmlsksDCI3abmj9LoFfvtSMsxBLIR/63NryR6KHBJr85lg2Np7R+npQC5Si9fNuiBVsOqV/Wx3GYamc5Im8N7bJ4AoTZt1yQ5Kn8i59Zu7SAoLdonqx4bCKOkIZhHwX2+jIdIXuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705471697; c=relaxed/simple;
	bh=UegW4fBcniYMDCW/cEwPH25VFU5Ofo2TIyRGLCpBPWg=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=BbiQLmnqfloBD7jm1wI/j9hL4OnYxmW0YaW3CeKOp3ST3cuSVuNBIEQnW2kKIJXuXiZh82vOtirX97kzyAqcGrIaVyn+dln/gO9q9A2ld5FcjWuvwZ23Cvsn6cjnJdy+dOGvOCBw2mPQS3VuQAABdHQSMQe5paXnDorFsV4soKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PiU3jO5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PiU3jO5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D1F5C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705471696;
	bh=UegW4fBcniYMDCW/cEwPH25VFU5Ofo2TIyRGLCpBPWg=;
	h=To:Subject:From:Date:From;
	b=PiU3jO5hsTKbpl0IbVbg/ux5H6TumQJ8HT120cuySma2KtzTdi3zlCbd9NYfRgW9H
	 hzuCfbZU5voYCvSOOeO6ZHa0JNLbm/IZbZTwp6Mv8mjxuG5ipQBGaELWb4INrnI/Qo
	 SlV/jFOtOSLkmdvBU3PnjxGqAqZxXSVEvV9tu/uP70sGM5ejavaN28B78bUcq8tndj
	 wDnFzJCWfD0fTlzgXVaA6JURp3+JFa8XwjQS0Kc0DeVc9prKt9UXTUZ/QwHoizubIN
	 d6vUJ2ct96Of+G1cTLTJvLcyQPhVcMHi+mnJhUSTt8CtdYIj6xvfjbkLiO7sb6ve9p
	 W2tjl1pNGkfNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6047FC47422
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170547169637.13630.11881426990730321142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37806ad6ddfe84d23d4143c2667b475f3b8d0c7ca8b6cf3e157949e788ed20d4
Date: Wed, 17 Jan 2024 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705471696
