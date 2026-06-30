Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0F737EFE5
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 16:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782837514; cv=none; b=CCUQ9lT+W1n+LuDEo+Ijy29yzsbYfiqK7OFY5I473Pjzk9p/nC0Cyjj2teb+Cdx/Jp6Dy/hm9U4iqtcKFs+Hgug2SS8irheC5ELAj1Zkt+6ZHZxtRUC6n8cDrSKNMHGntjJzpNlS4JIDCRrzZnuGrj9YSexbpgtliYbb5XFzy8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782837514; c=relaxed/simple;
	bh=SfbqDBzTiMPDva1ZNMd/6G5W69yatMCqsj0kIspJ0p0=;
	h=To:Subject:From:Message-Id:Date; b=fQTRxiRwD8+2rxrgbEDQeNHuyW5rkOdkgKRARqVfYcoMnON/KqtJzQhqiK0Yc2wrq3LnbooWfUNwWavV8Rc2pjq9KPX87wwppmQWZA2ik4C3gyti4ruSwis9TBbCG7yoEeijsKTnZLTuKlo5yjF67kCsiC9Z55SSMqLiVfMHouU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLVT2Ah1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLVT2Ah1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B1CC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782837513;
	bh=SfbqDBzTiMPDva1ZNMd/6G5W69yatMCqsj0kIspJ0p0=;
	h=To:Subject:From:Date:From;
	b=LLVT2Ah1OUY/kCBxCkyhIYoawT/nY7XHY+hfcusg+e0KacJiDJt5GS3/rrbQOn1Kq
	 rAIzVyS6Bw7ZnYUff/bjjexA2JRqWVcGdfQw6b4o2dSuNLR7Es+e22858lOw14BpJF
	 4ACt51OTiQccHFwP4F2bSvpt/+H2WO9ZzU7qHSnFNPbtR3AaR2roLH/SfRV7syOTa6
	 LdgbPZaddnC3v649ku+gPGBAgTNzOyYAY+LSy6J0g7OeJpcotiSYc+7wUPZK0BAg1D
	 06DswlF9tdyvysbt9UgZB3eewTnfkZvvhxIaHR8fQ2k3n9YqI+XovkYiYi7TO9qbKl
	 6UodHOTNsnznA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8992C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178283751368.27349.6756299961337060412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 279388deea3b797a6727d2a1151c3e08102558fd906d26b3115a23ada0db9753
Date: Tue, 30 Jun 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782837513
