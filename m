Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4B7433C4
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761553794; cv=none; b=R7hU3beMFILq6ja0zxV9KAcu2UFXPWxz4mSgF5dEsEXZfU6xpxJrJnQJY8rRukL0ynR0ucsueDT3b11fc9fiQeEmmEHXexlf+jscmlF4wlnhyeo/Mr22ivVbCphblNs2AeAxU+uwiBtCJkKGxWr0VZ06L5OdznzvqekWoHc4DvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761553794; c=relaxed/simple;
	bh=sWI/MqJGljPCqlUUtTKBFcBsXM6zbL9oQDzajgT7IAk=;
	h=To:Subject:From:Message-Id:Date; b=oCRh4DQETQSEN6aTi6/MpvXu++Avbdy4hbwRfGsZftk0728ZxKonrmF5HJGQV41gTYaCSlV4MVCSlVsLnWdtxWubs5N420+J3kHsXcmyz4SwHJ+qGryeOFrZPfoAFT1vXpMoa7Asj/sRCptgRCndIHEJVuzRgufopGKHvCKYe8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETDvqq02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETDvqq02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BCDC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761553793;
	bh=sWI/MqJGljPCqlUUtTKBFcBsXM6zbL9oQDzajgT7IAk=;
	h=To:Subject:From:Date:From;
	b=ETDvqq02c99hzI/rAkam4edXrg8tyIDEkyAQhawx+oHmMdNnzmwpPID8Lkc63qV8x
	 h3m2xUXxYy2w1Z7swgJXWOPNkJ7QlfBGbY4EuXP/7AzwoVNNSJkYuYybF7csrRVeAJ
	 /nUhkDUh7s2lrmWn1wDYPrgPhZsiv/x5Z58xXW5DeC1nVd7oVrum2SZWQ8AdSqF0RZ
	 7vWfs2S5ZZdBNCfSqZ1krconvX0k9odeUoiHyrTfebzt4TdeC1mSnahARfzLzyLmTx
	 0Zjfp3PYov5Np5XXafvxDXY8SMGZJsIir2eh9sI45HAl7DbOs0Vz+UO/I5pVuxI+PR
	 ivyDVE8xdITaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E15CCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176155379358.16642.11535414135007907450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b92ceb63a4589be5814e1d633ab6d4092eaa1bb5c0c3d675ba09f4dae6d8521c
Date: Mon, 27 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761553793
