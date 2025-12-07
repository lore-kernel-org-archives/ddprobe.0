Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368902C17A0
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765125174; cv=none; b=aPhh6iK5l6gb6jtAcBEDAMiEKqBf8FM9mK7Cnl0rK3EKdw2K1KCSNYFNNqrKC9VY2+CewI8DIBOLe5AY0xozc6rTAwcKrqtMWR4xEO6vI7gKQAZ0D9VjGpF+ggmX6L8vn81qFibDIUPGO++nw6IpR4qPTfN+ZsHQT5IUlV3rcgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765125174; c=relaxed/simple;
	bh=Xotl/RV+MjV/wofcOwa5qV7wKodIkEG6mhvYZ2eCTRs=;
	h=To:Subject:From:Message-Id:Date; b=MO6IGlWokGGFS8hpRPA8VGCaKWxeWUtkXmY9x6y8EwDhTvvE1fYjlf71KYsB6diTH2JrvFJW0q2mCKdGy6K5LYJvxxdASTYOu7JnL0VMTmuhRNj6sCaOASac7ZOvp2Zp6d2QoUnoYHltUy0b4w2Fl+KHlzGhpgAL7FZeQHL7VrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7hbIMqD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7hbIMqD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADB2C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765125173;
	bh=Xotl/RV+MjV/wofcOwa5qV7wKodIkEG6mhvYZ2eCTRs=;
	h=To:Subject:From:Date:From;
	b=g7hbIMqDbzhSwdY8IHQCrYb8l+3hrwKxwHHMrsYRX6EYhZcu8Oe8RRC7HZCDMsE6c
	 Hp/AR52u5XsYC2ewO5G3eJcLtX+A8HvTa+Y4yksLPgfUqAaKCRXX3U3grcfH5Xkoto
	 7p/U1FXG29wrdt9vV5w/szZFtIx63/i9rwKIW/bzwGN+Ks8cYorR4KPE72yJhMe9Gs
	 ifJPWzJQ6LSG0m15Tt0V77QIWZrgxtWfoeTHantwrWnlPsuvI3jSOJJ1YzA4AfyIo4
	 c/+/hwpL62H6e5r5W3slmvk8JykHusJw7sftI3YxGpPOFiaaQ1KZP7r80Vd8Ed5ZMs
	 jO29/B4dhmxfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94645D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176512517358.17799.9847054444699218433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd6c931bee5775bd76822787430d47b39e2f0ebe3863b1f3991b13435a49624f
Date: Sun, 07 Dec 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765125173
