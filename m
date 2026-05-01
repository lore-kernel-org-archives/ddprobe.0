Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFD123EAAD
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777600654; cv=none; b=tyMMTvkdBjNXvYICFpfYrDRnBaYGRQfNr2MnuDmA97da33fD0dn3oTzMeyp+w+jxQP84bSvyFuowgdlp1QY2Z0va/UcSW1rA2fTd2yoBJGdg73E+Sqws66q92hH7Sf995hmbRpu8n/CZzPWDjs+Ins7pV1yYyXPYw/IB7msyALI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777600654; c=relaxed/simple;
	bh=u7f55R6x+p3KDwerhK7sN4JGRTHe1OA3P0h33tSR2+Q=;
	h=To:Subject:From:Message-Id:Date; b=Ys9H9ITqhQUui90lT+O1IVdgDps0lM9rBJ03Tf11TncjoOGQqZC/XzFRafoalTDlUHEgunHpHtwUtVbeZsnY34UysnDIRiGFasAYqJlArHRLJPn9M6k/UfVbsXemTt3Rc2Wt+yKNWV2rQyoJdXvDWX84FNBINVsbf98UrG30A2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmWXE9K2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmWXE9K2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84A0C2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777600653;
	bh=u7f55R6x+p3KDwerhK7sN4JGRTHe1OA3P0h33tSR2+Q=;
	h=To:Subject:From:Date:From;
	b=JmWXE9K27NH2VyOa/80QbeIw1O2z0i6KoydpwLgUVHE29mp621Yh5UGOdQer6mAk8
	 5Y47G7gB9lAqH0f+Vt2B7y+A+GFedY5ewuJqWRwKKhMeQTfBHG0+gn+1PJcTzN+oDP
	 jeaKRYBwhPmnj+6dGMU8KGzuyP/1UT1V8KFkyjbKQGGuYpSVu8N5RksXrY4Zrtnkgf
	 n+b/mpqcjMKF2NEE4vRwmZAnt+puPHpNgZWp6p6wUvBBtN2+HkxhfPTuT1iM7/VX2y
	 jZQsvSPgnECWNUCspYvV0An2j93TiiOkaeu6gxcL8kjwn4fit7fajUimKmEc84s1lU
	 TMQU342R57tOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A02FF886F
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177760065368.2800.4772120757455944383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 833ad5173dc5e7f3f9458d1f30ca9504bef4895232e4389617a1d6ccda270c54
Date: Fri, 01 May 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777600653
