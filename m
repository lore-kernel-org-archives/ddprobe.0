Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1417D363094
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773255294; cv=none; b=m5/QlG5FrXTH13OckzyCe/9tlWpqpIX4etMQxlE+xAq9btD3VkginlIwTy8FGixiEYqTyEMDh3xHieJV0x+Xwf9qqk7wEUAXdvRYV+PZ0+BnhnNbx4eL43e94f/HAPGnGt8/wqaFfs50snyIC6pZicqn9Dg61eBtlq7fNrmnbaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773255294; c=relaxed/simple;
	bh=9al9BD5Swf3XWBI1ngfsDioVnbCpOB/HWnliPlU1P5Y=;
	h=To:Subject:From:Message-Id:Date; b=S9uEYhNEplKaUE8DjAUyCAYNqKOqPowRo/RbCDctLlHpqrBToYt2LKzH6fafOoGPW05YIgHnt1xEurw92mAMMAQ56wNFMnXQI9eYJB1hAjBjpJVSAhIoHaVxZ/HQkTfjHtF8g+hasIgBj/BNc8dR0Oqj+HXpXm+2C0uSG6TUYZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5oyl9LM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5oyl9LM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD19C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773255293;
	bh=9al9BD5Swf3XWBI1ngfsDioVnbCpOB/HWnliPlU1P5Y=;
	h=To:Subject:From:Date:From;
	b=l5oyl9LMJMoLcbexVtMdSMefyk0ZiwPPRVmZSgrmgfO0OKs1uDmC7db9JLImxKOOf
	 tAIyLgrYBwRkdf5Peooceppx3ImEekPs7HvHnz1oA6EpE0pXIgL8sJlw9b7V85JY7x
	 j9DwnlRfU/qiVJfKa7wtWLyDO+419hF9FH0Odpv6P5sh5YCLB5zh/W0EUQrX7Zsura
	 HDb4ErM4YUVAPT+kSTGQ4J/4T+hjjXUeNf/Z1DZpoB1JkR2e6aHh9uNqyuAGwK2AGC
	 /s0DqBogsiAPvw0HBOLMwef67zsyl6tQOTgwlYXPRUB6SSAHa9GeXtU8fuCEnUIvDt
	 GdDt1DcMlyKZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915EB1125869
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177325529358.26026.3322304120484937289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4aca7c822fa1a7a4dbc19ac0644785aeeeb2d5901990989bf6cb33770b3a212
Date: Wed, 11 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773255293
