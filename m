Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBB82D9ECA
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786329634; cv=none; b=cxBnJW7K+V0ZZTu3fmjVDlSa/2y7zzVunraczGbuhU/35kf05QbBHncoX6mBH7j8xPhn3VcSnOEZ1xwV2pkjfU0P/KE9mI9TVpFfsImZZ3jOMWyamjoAy1U8lticFElhYN7e9yk44ztHqnYUTZPnZD2lSbdzv32TguyOaGmOl6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786329634; c=relaxed/simple;
	bh=ISeL9d8KEHXMIehN6X+3iTYYB65ceDPpRAniJOGIXS8=;
	h=To:Subject:From:Message-Id:Date; b=aNQwzUuuG84q6Iff967LP91BdjabZtFBGexZj5peHsgOvOTHVNt0xZ1QkaBM2som63u4zN2BjrLNhKGVi2Hy2F5JbQuK4YFYJEcykfpyXg0KbWz42PheCELMmwyfChDwVNKz1gXs78KRIFnFKO88SCmL0X/KzXrErMPS+/oVo74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BV0sHVbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BV0sHVbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE648C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786329633;
	bh=ISeL9d8KEHXMIehN6X+3iTYYB65ceDPpRAniJOGIXS8=;
	h=To:Subject:From:Date:From;
	b=BV0sHVbxj2Bi8ghRPG0tw57KxXh296RQYrhBjZd+Jo8jBQtS+fFVzs7qULjkUmefj
	 k8SEYwCbneOs7kTBmxqV4EuiQ9gEv2bEMNHOQ8SHBApTJyuMyHxoXdnq025f+I7mPY
	 hn3Se4wKOg9RDbpLmHW8CDEW3CKMa9habVxcjXpYbpjqbPV9UR2h2KX5thc9HhDEiJ
	 f4slUjY7gQUpZYAntEMEBw4C71jZpjdJPmT0YcJmLb+U76+A3JPviVxcBd1hogYXYS
	 1BfHD3sY+W60b0FoM0mbDxzY6LLLSmB8EJ9BQA1enP17yIRDAKN17MSGebYBCsLsNT
	 2+VkAEDACACwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9148C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178632963374.18108.15575264117830586294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c978c66e3a1c57c97eac53682fc55f8c3b7943fe4b596255b48fa736886f9951
Date: Mon, 10 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786329633
