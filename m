Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAD23A6F15
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774433694; cv=none; b=X/RFrMhIdaytsgfQpdDrSNYN1bL8w3dtSOPz545SjbBiki5MmZRE66tVDqphbHUaFo4dUdiLFXUCoW9RiZ9/RqLCAU8hRb6w51NO7Rq6+3J5rIqpFQJjHVx5HKm5woalOCqS3Y4aUOqbolbgbsJ/9MVZG0ANzcW9NWIGzSCY3W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774433694; c=relaxed/simple;
	bh=42lPcSaotlImAOZ5PNiC4i8joKaSBTTvsx+3GR/0Thk=;
	h=To:Subject:From:Message-Id:Date; b=AVcU6nno2zRCsQA55pTfzajjKzMkjHKpTb7cnrGf2ESG2HKIikmUmrIqQ6Z7oR/gVSkQNgPNHeMEg/04VZH3F1sBi53EFRQGi6IjLlEWkGeytFVFDDMFKHUOvISEUMeHHTHUwZjKiKz1xcxaidR4QXpi/SMhbCrhdAWDvaX+G9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEYkY1MB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEYkY1MB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28A5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774433693;
	bh=42lPcSaotlImAOZ5PNiC4i8joKaSBTTvsx+3GR/0Thk=;
	h=To:Subject:From:Date:From;
	b=eEYkY1MBif4L0u+FAp7dFyxMIeq/lS7Kl717e7XjvMmXDQEQOOvitTJuS0kFoQQTg
	 0gm6+rNYGctTiZCWICRdsI5RMwB5cJq/LnPfzrQNtijUPbfq82X5sbVbcqBjgQOF1M
	 UouUQM3RC5JcB9Jby9BEaaNM5IdYUzJCTN7zSB2BxhF6GkJcJOF+P2XCU2xfVZchiM
	 GMY8Y/1Wpq1rdJri8p0GQYsAo2DciRM+KyrpmgH/7+lAh32Ofg5fQkrfONaev2ZiuG
	 Qf6LxXnPyZRBR7CBvevJqcbQbuPa0MQigcPYRpeYbXznCR4tJWQVhD1rRUdHxdjvWr
	 8yrxZMQT/acaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91461FEA824
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177443369358.8064.17460297684574383713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06872ed00ebb0584fe929a7f7b9db574b39847050b23e21ed440a9be8887d1c9
Date: Wed, 25 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774433693
