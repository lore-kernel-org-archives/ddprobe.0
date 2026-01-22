Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD86257855
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769047434; cv=none; b=NLTTr1LO/pONf4RykmvRxeRlNJg3VlID27KYAyhDH5pe/e4mrY/0je14XbVq4WChqg2wIWxSYRqvX1F+GmnJ4a5Zd06G+4UxBdptJyoxQHgGrQQXcB0p88m0sTkfq2+8UzsFmBYzJzqpXmMss1SLR8fC/3bw6jdE7H8F8J5Knmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769047434; c=relaxed/simple;
	bh=LmPlj+1g525ycmdekgxKcyewUnmUVNrA8bj3MbIHC/M=;
	h=To:Subject:From:Message-Id:Date; b=gmyALD93Hm+lUHCYQSrx8TVrk/iVqDkT7dB+KYj2596bSgXKI5KCwRnLKc+ig8UJDED7SQi+f+t71/kaGym1mi5JJbYkrPhEpenOnZ29zkEJHG5onA7W0HbAQkCoBi/gQX2lbPmJTl2etljiL3IdVMIVKwqap3/TkpPbCYiGpOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVThcRwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVThcRwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F17C19421
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769047433;
	bh=LmPlj+1g525ycmdekgxKcyewUnmUVNrA8bj3MbIHC/M=;
	h=To:Subject:From:Date:From;
	b=hVThcRwQiT8fU6utHafRXKt7nc8j1O/3lbbIsWmR6LZvP+5wKh0KRXC2TxFGJ9q8a
	 i6rJd8DK9I9GEExIhhb0RcmcmXpa+MdppFZiUVILQS/DGCVT0877/QoTDyxPwLAW4K
	 iiSXqG+sPZyFu+d5QTVHfLaBNBxDlYMJy4tM9aBaFPF6LIT9CX29bM1Sd/CKZYPz90
	 CBdiRzi9x2vOf7q5LwnAQsE2wgt6yt6dqKhKU97IRnnQqKCH/boOFx2wJdRwxwghcr
	 He71iPT6k7Wunp0Um+6PkCmD39037H1aNzJ5j1rKoQPjSpG2dd0kSZ9rZ1c+ql28F/
	 CE/+iV4NMspuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DB5D2ED14
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176904743359.9326.17725366157597881984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039e100c5eade517dfb7b9481307c4050ab159d506fdf50a4845ee7d49406b1e
Date: Thu, 22 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769047433
