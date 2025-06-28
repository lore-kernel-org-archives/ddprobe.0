Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1883925D90D
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751130594; cv=none; b=YX7n2EYfLfIbSvPFEDnaswwbaQhbvFSmTz5Loo5F1/QbqITDitZkgxt8nkDxjCNtrOqxwcrQrs8Nel/SWvo02AjperZzpY0xOiUeroGpTZVsw4PxqCSWF/q14L4+cpYZphmwgF6IlMMUr+WZwut8285l1bdclT7b6KMohfw0VGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751130594; c=relaxed/simple;
	bh=juhHIX2d0TgdhG+73S3TyudDRpKa4/WSz0wgLiZHw1E=;
	h=To:Subject:From:Message-Id:Date; b=iTZF4sYaF7myvS7IX8ojWDFvONNTgbmScP2i7mFMfUgEREzCRQb6oxNNDcjgjNTR4YIeGMdP89i0QoCx1gRMQdD69gURww9kzCAAmKr4/PugWdB1YMJBDaE2H4SXadJSbCYwi56VKQiWRl2ZVQwWa4g2uMJ0L+ULBTRfUcHRJYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtqJwA+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtqJwA+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A749BC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751130593;
	bh=juhHIX2d0TgdhG+73S3TyudDRpKa4/WSz0wgLiZHw1E=;
	h=To:Subject:From:Date:From;
	b=XtqJwA+PmZn7EQHRfRsCWHs6WOtl2f4+F1CDEq5eibHKSu5muh/7MgShJVAp3dQiW
	 VeCrvUBR9PttkJ3ZVU0CwFenzwmGHGaDNfhjcsMR5wAUTwJIv/SiF647JuF0JDqZOa
	 XdAzowgtwCEmLJ6nBD1NRzAC1dW9IFlaHU1dcHZe0tYKYzFLXXC5heHUkhCIIaRJvG
	 wM7gN2CJ/8fgYOQRdRVd+PQ54nYUaD65luNHpDpUEvhZ7SkYd0GBiiBiPpAGllJco6
	 2bJi9Ct/8fk8b0NBigZYV8KHw5P7kxcx2Y4JVRXF8scluTUC9sgY0gVYbzTeVawcE/
	 WSOjXInRaffRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9386AC7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175113059359.13503.9006989010101508400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39937928263df4b60a38fffe2fc2a041618fae05cfbc03d680893a9461f006b
Date: Sat, 28 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751130593
