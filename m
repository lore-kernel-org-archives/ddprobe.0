Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F54227EB9
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773365694; cv=none; b=ciN/09ti/sJQ3hib7lktaHJCptyY1PSbrmGmunpMDKuDJq+N8HPUfHnXQoLA1K9hEpF7uDmyAGZhASR7A36FSS7WZuZkLS7SYUzpOiD2pK1/HUiIFYKAFY9XB118DPvenMtnLcI4idFez+XooGSkVUq8f2DTtrCG26F5T99//nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773365694; c=relaxed/simple;
	bh=ZsfCzvnh8jQFgsAxy7UZtfYFXRC7s1bwgLSMW9Zxg24=;
	h=To:Subject:From:Message-Id:Date; b=bWcUPAisMfcnTpBZWc6td8oqT/V/JxZnnBxOKa1UzrSnnUqKelCVeruyRQIRKRb0onB109kDzDZROSoB0WgXtS/W+CBvBAQN77Z38qGPqktIJS7nOvUZ9+E8iA6EK4mPjRc6+IiKt+ho9WRiIIcSnNdtsvWBqST0T0ZVLLfKeq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVNPJj1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVNPJj1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5599C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773365693;
	bh=ZsfCzvnh8jQFgsAxy7UZtfYFXRC7s1bwgLSMW9Zxg24=;
	h=To:Subject:From:Date:From;
	b=kVNPJj1r+h/6U0QfaYnd36uOi/DQwAvxXtkkJIv/jnx5Ru0maYAlSZqGIWQKnozd0
	 jpGIoazZMcEXFtInobyu3wAN7jZOa9To11HLTwEdi6RscBfM1WK8Y4MCZh4fE5O6i9
	 AdTaQDJXhTPPGbUIpdR3jYL4P5ClK5MbdC4dovlLaMgrE8ts0zZfvthHyDORnv2LwF
	 B8m4s1Y0O93f/xzukUl5M0DnaLc2fWAGpooFth1Hck0K7RFu4tf0iIZ1qLBt6+jl2P
	 fdi8J6W4C3be2aoIqklr456QCMnFk25Pf52mRC3+h79+rmzDM0TFtnDzHlRc2Mv2MI
	 zMwqn7AfxYYpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B01106FD61
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177336569357.29796.15638611575374452098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dd243b24681b1c92f76e5db5164fcbed966346b32d4575f382ded953576ec97
Date: Fri, 13 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773365693
