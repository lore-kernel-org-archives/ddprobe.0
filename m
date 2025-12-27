Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C418199D8
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766831034; cv=none; b=P11ncQgWi/+ZP8jxab/rusgEDFQWKh8xebnrDeMZaAlFdUbR9gMYL2+TfN9OotKWmjKSgV3hN9jtqPGO4AHNP23F2J1SbkY+Rr7RLuMl8TB3rsXI044V3Ixi8DoK4WBLn/9GSJKT7j5QQpkMXWQDIbkSMpXGaIHJMR0NAlp7Xak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766831034; c=relaxed/simple;
	bh=qkRy2fj+cnEsI+f6g65Ap5mccQ2mfHgcstFGBcAyjmw=;
	h=To:Subject:From:Message-Id:Date; b=eKST/Pjt90zj4BQ4GbbohxyyMnVVhcxuCvDjnIXMA3+9M+ulLr/Te5BtbIh+rwTOm7zUEESLJtFb9JCpTOAmbveTzvswgaQxYMFW0uDkrMQnLBN0J0H7sN0NjJ31q7ckmzgyEhsmfc2ZtujC/pFBxiu6SBHycQ6U9exJ5/LE2Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnyhKu7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnyhKu7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A220AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766831033;
	bh=qkRy2fj+cnEsI+f6g65Ap5mccQ2mfHgcstFGBcAyjmw=;
	h=To:Subject:From:Date:From;
	b=tnyhKu7yngOrpYGjBXDQ+XXsehvy+/jk1wgEfraclRU9a4aP3KoCRMxn1GdphihnR
	 BFp8ry30E3AwEFdm0BKRJLDf7JNvTP/4t6pCSLh07bydCK7NMmmaLu/eA80Y0iRwYj
	 y+jhtu7tRvreMXGZtedisIlvM1bb7fCuNI6g97bQIDkG3gY+CTozJrLEnzc0cEZpC6
	 Aoh4azvSd5ZQT4qMAsfDuWLO1H02Mu5J1TMzr8xZCcN1zBupCJuxy1GCFExjwIQnbv
	 FSbOU+9V84FB4UvF0E0GPC4RxvLntHyGFWGsQOY62YPSXCkKsBp0mAstOBzeGR1GPb
	 g7RG/VCHqviaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9150BE8FDD0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176683103358.3011.10938595860135618693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d650346ea7be9aa3bfd019d5809eab6f272fabcf0ba3cffea8cfed8c8e38d0
Date: Sat, 27 Dec 2025 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766831033
