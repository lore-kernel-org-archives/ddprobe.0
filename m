Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA22481CD
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 18:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717957643; cv=none; b=mN9Wk/2W7buyTeKWVwF4Y9eWnzyHGXz/4QR7L30KaMQsNHDLH6PGpVj1bi/a0qLa3d9ou7Z9qTYxTkHKUCoTo4yi6EQjCAApYfM7mbgDKjHz9S5BKgNmFX9y2YG21QZlTmlG84HRwQOLdroaAKoQrMLHm3WLXgLzNJ0vcLRiS8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717957643; c=relaxed/simple;
	bh=jPl2KesgMn4Qtt105AcX2xZ5oumR2XWs+F5bshf/3kQ=;
	h=To:Subject:From:Message-Id:Date; b=MGZyillHN201Gwg5OojN8RssUMujH8Lp9eCQk0JWzHaqIyxufL+mJw5SQiT+8WCl0mTON0aS17Tp28nOulRUHEQtuVwXVDMztOQ5JjloLXwLpu0fxZm8YwUciE4uMW69gnugfJwr9kkURe5tcoCEQNV2c+issT8B/okbwpmrP44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwmfIi19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwmfIi19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1441C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 18:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717957642;
	bh=jPl2KesgMn4Qtt105AcX2xZ5oumR2XWs+F5bshf/3kQ=;
	h=To:Subject:From:Date:From;
	b=cwmfIi19RnL6SiYXP91Qcb7GV+UKaMdcvXduluDac6qqGzSIgCtIT/JGLJ1zzQMYo
	 MqBSkZanpLM+YK/h8fhmpLxzWrCBeX4YBUAZTbwTsOzfOTit9UqYMZe5/TCk0kUmV8
	 3t92fK2b1PQBOUoosteEvhlYFaozbg+pfky28KcLA9wP9G5axR3ylqsWo0qYHn2HS7
	 GoHjBdyioBVQG+Kh1/7C1+BqNOCq2usQpxQP5VzkvRMXsr618Aw6QFFNV749zvpE4P
	 RnGtzV2NBjLBIrRPQlmxN00vgb8UogkeI6z4hFlsq5tT7lmT1QkgTr8OaehfmfMC2E
	 WB8VTg7MGLzkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE442C27C55
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 18:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171795764277.1965.10295112252548926961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200f1c3f2428fe9f3ba08419e567191c0e9ab5ec2f52d4a2ce8ed5457efc6203
Date: Sun, 09 Jun 2024 18:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717957642
