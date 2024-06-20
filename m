Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A085B05E
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 08:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718871563; cv=none; b=TUioiK/J+dXs7U1tTul9cAJkqumvp8b27xGE1gME2I81SxC8ZGGHYureSWSinYQSJL7x+RGLKoDPHVYbsDltufPM5/DlilFkeZu5xxOUq8JghHPxorYaLG4dTqxejUOVjLeQ/D7sEQ/AHvVMV15veq3lpoTufHWREp6OvqajHmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718871563; c=relaxed/simple;
	bh=NttFV7fnwQIQ7qEFgAV6DWdbKtPsV/tc8CEONQmSM4M=;
	h=To:Subject:From:Message-Id:Date; b=B8rpvoz+uGA3UHcgj/MiA+l40dNv+vPZ3J2zKw9Bgjyar1zQ9RL2Gq25TdNBVH0QThJfugZ1ubsiTWkcFuk8pxSA9CjqLHOCfnOaSd9bWlPvnfDs492qv4UgqMq6JgHzuNZyGAVSJUbe95vUr3EPVn7zujg84yXj2O9tSYUjy90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izWrFHUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izWrFHUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5C42C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 08:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718871562;
	bh=NttFV7fnwQIQ7qEFgAV6DWdbKtPsV/tc8CEONQmSM4M=;
	h=To:Subject:From:Date:From;
	b=izWrFHUh/jFyslhIQdD3O+/5T21+F1KYnG1zeyngnC3OZopaRRyJVO2oqNrRRoymt
	 kn1jLHzN4V9MbOjrkBqcajMh0JXwL0/zkmzXvv4bbYzmy/zlXlA3FX+FeVI/roi29S
	 Ov7Zc3I3X6g0oz2fbH7EZH4lbcc9lktex6KS+IG6PbbmdmEvTjDjb0+BunOaO+Aako
	 N598GH6nevYjFZxymx6z+lHuPMmw02tUTF+anrWuLV+Fpn4WVoY+yTQU0fYWeYCtzS
	 5lmpAC+VFdxej2SZpZZJMSDozgkwS+8/JroDyc+VCx+O2dfQPJ4JffttyLcP1wXNex
	 6CL0YhSU+Mx1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CED02C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 08:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171887156279.17964.4515878820165225535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5879ff065d2f4e5693246222196e0ad2a85d2e458101783b58fdc1790564991
Date: Thu, 20 Jun 2024 08:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718871562
