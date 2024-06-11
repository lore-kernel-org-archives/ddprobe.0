Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463BD3A27B
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 19:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718134703; cv=none; b=YeRZx5jk5bPX7hTVFUsS0zV7cYd0kNdA8udS/Ok1tTD57xIW18yPftylc0PFTyQvReCOQ//LFYFNpZsksKanQ5dIwd+JME4c9ihwVk1GRPEEKivQwMOPyhTN7qt1y6vC1BlQYH6yvMT1INMwJHtqrYUm5QyOsjoa0+bqS7KD1pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718134703; c=relaxed/simple;
	bh=m47lan2Vp70/EcleXMRU2D8CTTq6ZDEKRJf8qL+WL54=;
	h=To:Subject:From:Message-Id:Date; b=KK/bMnzgtW/1hs1RMcJRS6xfyjq21GU5W26QCh6JKDXcpMWuB0kLs7R0bczegKZspi3It9mOIPCFKy45k10CJsSaKq5a0QjbyST7MSMWh4ZuoUE+nYdQViIIAkBlMT5JKh7w0v5N0uOiuWGq5rqqeE7SlUV3aLws6RwjvQi+JwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeTubu06; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeTubu06"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1607C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 19:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718134702;
	bh=m47lan2Vp70/EcleXMRU2D8CTTq6ZDEKRJf8qL+WL54=;
	h=To:Subject:From:Date:From;
	b=FeTubu06Mh4HCnBPTb7+BopU6+mMywstbvVzH1pqv2oF4XCz1+KMr9B8DcOQeNb1n
	 FWXtk3iRWBJjSld8BaTFfOd9mIudzxGXygBxQ2rZyOPfZf1tKtNlnNrAhswzqUYjx3
	 sSs+6EzPCXW0MMB/2RY3Jx9xpe4AyiNuMxad31Eur90g/uk702hMiGwhbSVozzidzT
	 ucMQF88OQ1lLWzI9C5a+PwFR0p9oVBRa8EEFjDDOAY3sLBguEnmotMsZf0/LIIzK4+
	 xaagI7hx+8VBVJMQG4QPuiO9QYvNLHe276XtX3f/EwkIlM8c8RqHO8k1lqGAoabcW0
	 UEdCxWKCjNDpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C070CC27C75
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 19:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171813470277.10233.16092141705594704975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb91a5fffdec8394c3c247a426dc2b04c8e5be54319f32168fdfb27f2a77abf
Date: Tue, 11 Jun 2024 19:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718134702
