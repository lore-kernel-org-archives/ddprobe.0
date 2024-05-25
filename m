Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78939171CC
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 22:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716677663; cv=none; b=nf0IguquPOx+geeSsH/UvdcPTQGoRH5WxizjKxz9UulSXtpZFO6KAQOJGfZeUUFKjowBmHxhXt3BbwlIHN8vSGpM+tzOpI6qN6+pfKEoyjMPxTo9V+kYMtnqE1clNtGA3xTTojhcf5icD3Dosox85yy7vUfImPjTqnsIvvBuat0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716677663; c=relaxed/simple;
	bh=uOmaPplxXbTSWm1Z0x+Lb/adhQy1OQh7uFRGzftSTKk=;
	h=To:Subject:From:Message-Id:Date; b=Zr9W2FB5/vYmU98wxNIV+N91b6MKLw3pt5bpikvJH7Ot1lP6uNP8hIid5UtVB81rsAyx37JK1wwFEwvvedQ4OOyZdKeVvtQgulzv+9OJDnQKSc9Ooeq0Ti/e8LXJszFZ1HpWRfvX3mUAjke6daI9s8WT+VnpmYKBtkqwzQxIa0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsH+5XzI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsH+5XzI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E81BCC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 22:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716677662;
	bh=uOmaPplxXbTSWm1Z0x+Lb/adhQy1OQh7uFRGzftSTKk=;
	h=To:Subject:From:Date:From;
	b=CsH+5XzI7a+GRQG3ted67PUa795DdJ5zF3lmGFdG0ue0LcgOAchqisraDKpXohfvT
	 CObQ9E9Hu7HhmCXi+S0FQFV2tvLQaXvuG1+srHVctYxjLHbLkLMGzykBEYGWDaBgig
	 Qt1Y5t9NFYa4MxQogN/XkGLrf4sn3EjKhrjcWF7hWDMZDwPwCpP2cbsVdBfq0NPfwI
	 bTq56sYj8u5eU+9jxIIa1hRkQ8HGRSMbPIhWsGfEWr2BlMFZj/iv4lBGzfzbpBN/vL
	 HjOSbXVo10f8XqG9TAWxQvBwGP9svH8PZPWj2v4sZc3Jo0Qf73hT+nvFTCEucsvOm3
	 WDtrm6s1bYhFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1880C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 22:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171667766282.27496.16344652134661650216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff28dd52221c62db4d8ebce6bc9b74c2aa4bfda14eaad40f8e98d464c46e74c
Date: Sat, 25 May 2024 22:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716677662
